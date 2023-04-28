from django.shortcuts import render, redirect 
from . import models  
from django.contrib import messages
from attendance_app.decorator import employeeLogin
import pandas as pd  
import hashlib
from django.core.paginator import Paginator

#---------------- Employee Login--------------------------------#
def loginPage(request):
    if request.session.get('employee_id'):
        return redirect('/dashboard/')

    elif request.method == 'POST': 
        employee_id = request.POST.get('employee_id')
        password = request.POST.get('password')
         
        if employee_id and password: 
            md5_obj   = hashlib.md5(password.encode())
            enc_pass  = md5_obj.hexdigest() 
            chk_employee = models.EmployeeList.objects.filter(employee_id=employee_id, password = enc_pass).first()
            
            if chk_employee :
                
                request.session['emp_id'] = chk_employee.id
                request.session['employee_name'] = chk_employee.first_name 
                request.session['employee_id'] = chk_employee.employee_id
                 
                return redirect('/dashboard/')
            else:
                messages.add_message(request, messages.INFO, 'Wrong Password')
                return redirect('/adminlogin/')


    else:
        return render(request, 'login.html')

#---------------- Employee Logout --------------------------------#
@employeeLogin
def logout(request): 
    request.session['emp_id'] = False
    request.session['employee_name'] = False
    request.session['employee_id'] = False 
    return redirect('/adminlogin/')

#---------------- This is Dashboard Page Function--------------------------------#
@employeeLogin
def dashboardPage(request): 
    employee_list = models.EmployeeList.objects.filter(status=True).order_by('id')
    atten_status = models.EmployeeAttendance.objects.raw("SELECT id, atten_status, count(id) as total_atten FROM `employee_attendance` GROUP BY atten_status")
    monthly_atten = models.EmployeeAttendance.objects.raw("SELECT id, monthname(att_date) as month_name, count(id) as total_atten FROM `employee_attendance` GROUP by month(att_date);")
    
    paginator = Paginator(employee_list, 10)  # Show 10 contacts per page.

    page_number = request.GET.get("page")
    employee_list = paginator.get_page(page_number)

    context = {
        'employee_list': employee_list,
        'atten_status': atten_status,
        'monthly_atten': monthly_atten,
    }
    return render(request, 'index.html', context)

#---------------- Employee List--------------------------------#
@employeeLogin
def employeeList(request): 
    department = models.EmployeeDepartment.objects.filter(status=True) 
    designation = models.EmployeeDesignation.objects.filter(status=True)
    if request.method=="GET":
        employee_list = models.EmployeeList.objects.filter(status=True).order_by('id')
        atten_status = models.EmployeeAttendance.objects.raw("SELECT id, atten_status, count(id) as total_atten FROM `employee_attendance` GROUP BY atten_status")
        monthly_atten = models.EmployeeAttendance.objects.raw("SELECT id, monthname(att_date) as month_name, count(id) as total_atten FROM `employee_attendance` GROUP by month(att_date);")
        
        paginator = Paginator(employee_list, 10)  # Show 10 contacts per page.

        page_number = request.GET.get("page")
        employee_list = paginator.get_page(page_number)

        context = { 
            'employee_list': employee_list,
            'atten_status': atten_status,
            'monthly_atten': monthly_atten,
            'department': department,
            'designation': designation,
        }
        return render(request, 'employee_list.html', context)
    else: 
        department_id  = request.POST.get('department')
        designation_id = request.POST.get('designation')

        my_filter = {}
        my_keyword = "" 
        attendance_list =""
        

        if designation_id:
            my_keyword = 'designation_id' 
            my_filter[my_keyword] = designation_id

        if department_id:
            my_keyword = 'department_id' 
            my_filter[my_keyword] = department_id
 
        employee_list = models.EmployeeList.objects.filter(**my_filter).order_by('id')
 
        atten_status = models.EmployeeAttendance.objects.raw("SELECT id, atten_status, count(id) as total_atten FROM `employee_attendance` GROUP BY atten_status")
        monthly_atten = models.EmployeeAttendance.objects.raw("SELECT id, monthname(att_date) as month_name, count(id) as total_atten FROM `employee_attendance` GROUP by month(att_date);")
        
        paginator = Paginator(employee_list, 10)  # Show 10 contacts per page.

        page_number = request.GET.get("page")
        employee_list = paginator.get_page(page_number)

        context = { 
            'employee_list': employee_list,
            'atten_status': atten_status,
            'monthly_atten': monthly_atten,
            'department': department,
            'designation': designation,
            'department_id': department_id,
            'designation_id': designation_id,
        }
        return render(request, 'employee_list.html', context)



#---------------- Add New Employee --------------------------------#
@employeeLogin
def addNewEmployee(request):
    if request.method == 'GET':
        department = models.EmployeeDepartment.objects.filter(status=True) 
        designation = models.EmployeeDesignation.objects.filter(status=True) 
        branch = models.CompanyBranch.objects.filter(status=True) 

        context = {
            'department':department,
            'designation':designation,
            'branch':branch,
        } 
        return render(request, 'employee_add.html', context)
    else:
        password = request.POST.get('password')
        md5_obj   = hashlib.md5(password.encode())
        enc_pass  = md5_obj.hexdigest() 

        models.EmployeeList.objects.create(
            branch_id = int(request.POST.get('branch_id')),
            employee_id = request.POST.get('employee_id'),
            password = enc_pass,
            first_name = request.POST.get('first_name'),
            last_name = request.POST.get('last_name'),
            father_name = request.POST.get('father_name'),
            mother_name = request.POST.get('mother_name'),
            mobile = request.POST.get('mobile'),
            email = request.POST.get('email'),
            department_id = request.POST.get('department'),
            designation_id = request.POST.get('designation'),
            gender = request.POST.get('gender'),
            date_of_birth = request.POST.get('date_of_birth'),
            joining_date = request.POST.get('joining_date'),
            religion = request.POST.get('religion'),
            nid = request.POST.get('nid'),
            nationality = request.POST.get('nationality'),
            present_address = request.POST.get('present_address'),
            permanent_address = request.POST.get('permanent_address') 
        ) 
        return redirect('/dashboard/employee-list/')

#---------------- Employee Update --------------------------------#
@employeeLogin
def updateEmployee(request, id):
    if request.method == 'GET':
        get_employee    = models.EmployeeList.objects.get(id=id)
        department      = models.EmployeeDepartment.objects.filter(status=True) 
        designation     = models.EmployeeDesignation.objects.filter(status=True) 
        branch          = models.CompanyBranch.objects.filter(status=True)  
        context = {
            'department':department,
            'designation':designation,
            'branch':branch,
            'get_employee':get_employee,
        } 
        return render(request, 'employee_edit.html', context)
    else: 
        models.EmployeeList.objects.filter(id=id).update(
            branch_id = int(request.POST.get('branch_id')), 
            first_name = request.POST.get('first_name'),
            last_name = request.POST.get('last_name'),
            father_name = request.POST.get('father_name'),
            mother_name = request.POST.get('mother_name'),
            mobile = request.POST.get('mobile'),
            email = request.POST.get('email'),
            department_id = request.POST.get('department'),
            designation_id = request.POST.get('designation'),
            gender = request.POST.get('gender'),
            date_of_birth = request.POST.get('date_of_birth'),
            joining_date = request.POST.get('joining_date'),
            religion = request.POST.get('religion'),
            nid = request.POST.get('nid'),
            nationality = request.POST.get('nationality'),
            present_address = request.POST.get('present_address'),
            permanent_address = request.POST.get('permanent_address') 
        ) 
        return redirect('/dashboard/employee-list/')

@employeeLogin
def deleteEmployee(request, id):
    get_employee = models.EmployeeList.objects.filter(id=id)
    if get_employee:
        get_employee.delete()
        messages.success(request,'Employee successfully deleted')
        return redirect('/dashboard/employee-list/')
    else:
        messages.warning(request, "Employee not deleted")
        return redirect('/dashboard/employee-list/')
 
 
@employeeLogin
def dailyAttendance(request):
    if request.method == 'GET':
        employee_list = models.EmployeeList.objects.filter(status=True).order_by('id')
        shift_list = models.ShiftMaster.objects.filter(status=True)
        context = {
            'employee_list': employee_list,
            'shift_list': shift_list,
        }
        return render(request, 'daily_attendance.html', context)
    else:
        employee_id = request.POST.getlist('employee_id') 
        attendance_date = request.POST.getlist('attendance_date') 
        shift_id = request.POST.getlist('shift_id') 
        in_time = request.POST.getlist('in_time')  
        attendance_status = request.POST.getlist('attendance_status') 
   
        for emp_id, att_date, shift, intime, status in zip(employee_id,attendance_date,shift_id,in_time,attendance_status):
            models.EmployeeAttendance.objects.create(
                employee_id = int(emp_id),shift_id = int(shift),
                atten_status = str(status), att_date = att_date,
                in_time = intime if intime else None 
            )
  
        return redirect('/dashboard/AttendanceReport/')

         

@employeeLogin
def AttendanceReport(request): 
    department = models.EmployeeDepartment.objects.filter(status=True) 
    if request.method=="GET": 
        context = {
            'department':department,
        }
        return render(request, 'daily_attendance_report.html', context)
    else:
        attendance_date = request.POST.get('attendance_date')
        department_id = request.POST.get('department')
        attendance_status = request.POST.get('attendance_status')
 
        my_filter = {}
        my_keyword = "" 
        attendance_list =""
        

        if attendance_date:
            my_keyword = 'att_date' 
            my_filter[my_keyword] = attendance_date

        if department_id:
            my_keyword = 'employee__department_id' 
            my_filter[my_keyword] = department_id

        if attendance_status:
            my_keyword = 'atten_status' 
            my_filter[my_keyword] = attendance_status
  
        attendance_list = models.EmployeeAttendance.objects.filter(**my_filter)
  
        context = {
            'attendance_list': attendance_list,
            'department': department,
        }
        return render(request, 'daily_attendance_report.html', context)


         

@employeeLogin
def impoerEmployeeFromExcel(request):
    xl = pd.read_excel("attendance_app/employee_list.xlsx", "Sheet1")
    for i in range(0,len(xl)):  
        models.EmployeeList.objects.create(
            branch_id = 1, employee_id = xl["Employee Id"][i],department_id = xl["Department"][i],
            designation_id = xl["Designation"][i], first_name = xl["First Name"][i], 
            last_name = xl["Last Name"][i], father_name = xl["Father Name"][i], mother_name = xl["Mother Name"][i],
            mobile = xl["Mobile"][i], email = xl["Email"][i], gender = xl["Gender"][i], religion = xl["Religion"][i],
            date_of_birth = xl["Date of Birth"][i], nationality = xl["Nationality"][i]
        ) 
    return redirect('/dashboard/')