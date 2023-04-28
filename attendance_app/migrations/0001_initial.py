# Generated by Django 3.2.18 on 2023-04-28 18:56

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='CompanyBranch',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('branch_name', models.CharField(max_length=150)),
                ('address', models.TextField(blank=True, null=True)),
                ('branch_author', models.CharField(blank=True, max_length=150, null=True)),
                ('phone', models.CharField(blank=True, max_length=15, null=True)),
                ('mobile', models.CharField(blank=True, max_length=15, null=True)),
                ('email', models.EmailField(blank=True, max_length=150, null=True)),
                ('status', models.BooleanField(default=True)),
                ('created', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'branch_list',
            },
        ),
        migrations.CreateModel(
            name='CompanyInformation',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('company_name', models.CharField(max_length=150)),
                ('logo', models.ImageField(blank=True, null=True, upload_to='company/')),
                ('address_line', models.TextField(blank=True, null=True)),
                ('address_line_2', models.TextField(blank=True, null=True)),
                ('phone', models.CharField(blank=True, max_length=15, null=True)),
                ('mobile', models.CharField(blank=True, max_length=15, null=True)),
                ('email', models.EmailField(blank=True, max_length=150, null=True)),
                ('status', models.BooleanField(default=True)),
                ('created', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'company_setup',
            },
        ),
        migrations.CreateModel(
            name='EmployeeDepartment',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('department', models.CharField(max_length=150)),
                ('short_code', models.CharField(blank=True, max_length=50, null=True)),
                ('status', models.BooleanField(default=True)),
                ('created', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'emp_department',
            },
        ),
        migrations.CreateModel(
            name='EmployeeDesignation',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('designation', models.CharField(max_length=150)),
                ('status', models.BooleanField(default=True)),
                ('created', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'emp_designation',
            },
        ),
        migrations.CreateModel(
            name='ShiftMaster',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('shift_name', models.CharField(max_length=100)),
                ('details', models.CharField(blank=True, max_length=255, null=True)),
                ('in_time', models.TimeField(blank=True, null=True)),
                ('out_time', models.TimeField(blank=True, null=True)),
                ('is_day_shift', models.BooleanField(default=True)),
                ('status', models.BooleanField(default=True)),
                ('created', models.DateTimeField(auto_now_add=True, null=True)),
            ],
            options={
                'db_table': 'shift_master',
            },
        ),
        migrations.CreateModel(
            name='EmployeeList',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('first_name', models.CharField(max_length=255)),
                ('last_name', models.CharField(blank=True, max_length=255, null=True)),
                ('employee_id', models.CharField(blank=True, max_length=45, null=True)),
                ('father_name', models.CharField(blank=True, max_length=255, null=True)),
                ('mother_name', models.CharField(blank=True, max_length=255, null=True)),
                ('mobile', models.CharField(blank=True, max_length=255, null=True)),
                ('email', models.CharField(blank=True, max_length=255, null=True)),
                ('gender', models.CharField(blank=True, max_length=255, null=True)),
                ('date_of_birth', models.DateField(blank=True, max_length=255, null=True)),
                ('religion', models.CharField(blank=True, max_length=255, null=True)),
                ('nationality', models.CharField(blank=True, max_length=255, null=True)),
                ('nid', models.CharField(blank=True, max_length=255, null=True)),
                ('photo', models.ImageField(blank=True, null=True, upload_to='employee_photo/')),
                ('joining_date', models.DateField(blank=True, null=True)),
                ('present_address', models.TextField(blank=True, null=True)),
                ('permanent_address', models.TextField(blank=True, null=True)),
                ('password', models.CharField(blank=True, max_length=45, null=True)),
                ('status', models.BooleanField(default=True)),
                ('created', models.DateTimeField(auto_now_add=True, null=True)),
                ('branch', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='attendance_app.companybranch')),
                ('department', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='attendance_app.employeedepartment')),
                ('designation', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='attendance_app.employeedesignation')),
            ],
            options={
                'db_table': 'employee_list',
            },
        ),
        migrations.CreateModel(
            name='EmployeeAttendance',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('in_time', models.TimeField(blank=True, null=True)),
                ('out_time', models.TimeField(blank=True, null=True)),
                ('att_date', models.DateField(blank=True, null=True)),
                ('shift_in_time', models.TimeField(blank=True, null=True)),
                ('shift_out_time', models.TimeField(blank=True, null=True)),
                ('atten_status', models.CharField(choices=[('present', 'Present'), ('absent', 'Absent'), ('late present', 'Late Present'), ('leave', 'Leave')], max_length=20)),
                ('is_manual', models.BooleanField(default=False)),
                ('created_by', models.IntegerField(default=0)),
                ('modified_by', models.IntegerField(blank=True, null=True)),
                ('created', models.DateTimeField(auto_now_add=True, null=True)),
                ('modified', models.DateTimeField(auto_now=True, null=True)),
                ('status', models.BooleanField(default=True)),
                ('employee', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='attendance_app.employeelist')),
                ('shift', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='attendance_app.shiftmaster')),
            ],
            options={
                'db_table': 'employee_attendance',
            },
        ),
    ]
