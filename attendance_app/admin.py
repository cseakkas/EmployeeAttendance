from django.contrib import admin
from . import models
# Register your models here.
class CompanyInformationAdmin(admin.ModelAdmin):
    list_display  = ['company_name','mobile', 'phone', 'email', 'address_line', 'status'] 
     
class CompanyBranchAdmin(admin.ModelAdmin):
    list_display  = ['branch_name','branch_author', 'mobile', 'phone', 'email', 'status'] 
     
class EmployeeDesignationAdmin(admin.ModelAdmin):
    list_display  = ['designation', 'status'] 

class EmployeeDepartmentAdmin(admin.ModelAdmin):
    list_display  = ['department', 'short_code', 'status'] 

class ShiftMasterAdmin(admin.ModelAdmin):
    list_display  = ['shift_name', 'in_time', 'out_time', 'is_day_shift', 'status'] 
      
class EmployeeListAdmin(admin.ModelAdmin):
    list_display  = ['first_name', 'employee_id', 'branch', 'mobile', 'email', 'designation', 'department', 'status'] 
      
admin.site.register(models.CompanyInformation, CompanyInformationAdmin)
admin.site.register(models.CompanyBranch, CompanyBranchAdmin)
admin.site.register(models.EmployeeDesignation, EmployeeDesignationAdmin)
admin.site.register(models.EmployeeDepartment, EmployeeDepartmentAdmin)
admin.site.register(models.ShiftMaster, ShiftMasterAdmin)
admin.site.register(models.EmployeeList, EmployeeListAdmin)