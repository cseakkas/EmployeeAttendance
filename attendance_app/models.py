from django.db import models
 
# Company Setup
class CompanyInformation(models.Model):
    company_name    = models.CharField(max_length=150)  
    logo            = models.ImageField(upload_to="company/", blank=True, null=True) 
    address_line    = models.TextField(blank=True, null=True)  
    address_line_2  = models.TextField(blank=True, null=True)  
    phone           = models.CharField(max_length=15, blank=True, null=True) 
    mobile          = models.CharField(max_length=15, blank=True, null=True) 
    email           = models.EmailField(max_length=150, blank=True, null=True) 
    status          = models.BooleanField(default=True)
    created         = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.company_name

    class Meta:
        db_table = 'company_setup'

# Company Branch Setup
class CompanyBranch(models.Model):
    branch_name     = models.CharField(max_length=150) 
    address         = models.TextField(blank=True, null=True) 
    branch_author   = models.CharField(max_length=150, blank=True, null=True) 
    phone           = models.CharField(max_length=15, blank=True, null=True) 
    mobile          = models.CharField(max_length=15, blank=True, null=True) 
    email           = models.EmailField(max_length=150, blank=True, null=True) 
    status          = models.BooleanField(default=True)
    created         = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.branch_name

    class Meta:
        db_table = 'branch_list'
 
# Employee Designation 
class EmployeeDesignation(models.Model):
    designation = models.CharField(max_length=150) 
    status      = models.BooleanField(default=True)
    created     = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.designation

    class Meta:
        db_table = 'emp_designation'
    
# Employee Department 
class EmployeeDepartment(models.Model):
    department  = models.CharField(max_length=150) 
    short_code  = models.CharField(max_length=50, blank=True, null=True) 
    status      = models.BooleanField(default=True)
    created     = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.department

    class Meta:
        db_table = 'emp_department' 

#Shift Master
class ShiftMaster(models.Model):
    shift_name          = models.CharField(max_length=100)
    details             = models.CharField(max_length=255, blank=True, null=True)
    in_time             = models.TimeField(blank=True, null=True)
    out_time            = models.TimeField(blank=True, null=True)  
    is_day_shift        = models.BooleanField(default=True) 
    status              = models.BooleanField(default=True) 
    created             = models.DateTimeField(auto_now_add=True, null=True) 

    def __str__(self):
        return self.shift_name

    class Meta: 
        db_table = 'shift_master'

#Employee Information
class EmployeeList(models.Model):
    branch          = models.ForeignKey(CompanyBranch, on_delete=models.DO_NOTHING, blank=True, null=True)
    first_name      = models.CharField(max_length=255) 
    last_name       = models.CharField(max_length=255, blank=True, null=True) 
    employee_id     = models.CharField(max_length=45, blank=True, null=True)
    father_name     = models.CharField(max_length=255, blank=True, null=True)
    mother_name     = models.CharField(max_length=255, blank=True, null=True) 
    mobile          = models.CharField(max_length=255, blank=True, null=True)
    email           = models.CharField(max_length=255, blank=True, null=True)
    gender          = models.CharField(max_length=255, blank=True, null=True) 
    date_of_birth   = models.DateField(max_length=255, blank=True, null=True) 
    religion        = models.CharField(max_length=255, blank=True, null=True)
    nationality     = models.CharField(max_length=255, blank=True, null=True) 
    nid             = models.CharField(max_length=255, blank=True, null=True) 
    photo           = models.ImageField(upload_to="employee_photo/", blank=True, null=True)  
    designation     = models.ForeignKey(EmployeeDesignation, on_delete=models.DO_NOTHING, blank=True, null=True)
    department      = models.ForeignKey(EmployeeDepartment, on_delete=models.DO_NOTHING, blank=True, null=True)
    joining_date    = models.DateField(null=True, blank=True)
    present_address = models.TextField(blank=True, null=True)
    permanent_address = models.TextField(blank=True, null=True)
    password        = models.CharField(max_length=45, blank=True, null=True) 
    status          = models.BooleanField(default=True) 
    created         = models.DateTimeField(auto_now_add=True, null=True) 

    def __str__(self):
        return self.first_name

    class Meta: 
        db_table = 'employee_list'
 
class EmployeeAttendance(models.Model):
    employee        = models.ForeignKey(EmployeeList, on_delete = models.DO_NOTHING)
    in_time         = models.TimeField(blank=True, null=True)
    out_time        = models.TimeField(blank=True, null=True)
    att_date        = models.DateField(auto_now_add = False, blank=True, null=True)
    shift           = models.ForeignKey(ShiftMaster, on_delete = models.DO_NOTHING)
    shift_in_time   = models.TimeField(blank=True, null=True)
    shift_out_time  = models.TimeField(blank=True, null=True)
    status_type = (
        ('present', 'Present'),
        ('absent', 'Absent'), 
        ('late present', 'Late Present'),
        ('leave', 'Leave'),
    )
    atten_status    = models.CharField(max_length=20, choices=status_type)
    is_manual       = models.BooleanField(default=False) # if attendance provide manual from attendance management
    created_by      = models.IntegerField(default=0)
    modified_by     = models.IntegerField(blank=True, null=True)
    created         = models.DateTimeField(auto_now_add=True, null=True)
    modified        = models.DateTimeField(auto_now=True, null=True) 
    status          = models.BooleanField(default=True) 

    def __str__(self):
        return str(self.employee)

    def created_by_name(self):
        if self.created_by:
            emp = EmployeeList.objects.filter(id = self.created_by).first()
            if emp: return emp
        return "N/A"

    def modified_by_name(self):
        if self.modified_by:
            emp = EmployeeList.objects.filter(id = self.modified_by).first()
            if emp: return emp
        return "N/A"

    class Meta: 
        db_table = 'employee_attendance' 


