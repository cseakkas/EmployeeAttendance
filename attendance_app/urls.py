from django.urls import path
from . import views
urlpatterns = [ 
    path("dashboard/", views.dashboardPage, name="dashboardPage"),
    path("adminlogin/", views.loginPage, name="loginPage"),
    path("logout/", views.logout, name="logout"),
    path("impoerEmployeeFromExcel/", views.impoerEmployeeFromExcel, name="impoerEmployeeFromExcel"),
    path("dashboard/employee-list/", views.employeeList, name="employeeList"),
    path("dashboard/employee-add/", views.addNewEmployee, name="addNewEmployee"),
    path("dashboard/employee/<int:id>/updateEmployee/", views.updateEmployee, name="updateEmployee"),
    path("dashboard/employee/<int:id>/deleteEmployee/", views.deleteEmployee, name="deleteEmployee"),
    path("dashboard/dailyAttendance/", views.dailyAttendance, name="dailyAttendance"),
    path("dashboard/AttendanceReport/", views.AttendanceReport, name="AttendanceReport"),
]
