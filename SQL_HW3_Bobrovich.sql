--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
 select employee_name, monthly_salary
 from employees e 
 join employee_salary on employee_id = e.id 
 join salary s on salary_id = s.id;
  
--2. ������� ���� ���������� � ������� �� ������ 2000.
select employee_name
from employees e
join employee_salary on employee_id = e.id
join salary s on salary_id = s.id
where monthly_salary < '2000';

--3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select s.id, monthly_salary
from salary s
left outer join employee_salary on employee_id = s.id
where employee_id is null;
 
--4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select s.id, monthly_salary
from salary s
left outer join employee_salary on employee_id = s.id 
where employee_id is null and monthly_salary < '2000';

--5. ����� ���� ���������� ���� �� ��������� ��.
select e.id, employee_name 
from employees e
left outer join employee_salary on employee_id = e.id 
where salary_id is null;
  
--6. ������� ���� ���������� � ���������� �� ���������.
 select employee_name, r.role_name
 from employees e 
 join roles_employee on employee_id = e.id 
 join roles r on role_id  = r.id;
 
--7. ������� ����� � ��������� ������ Java �������������.
 select employee_name, r.role_name 
 from employees e 
 join roles_employee on employee_id = e.id 
 join roles r on role_id  = r.id
 where role_name like '%Java developer%';
 
--8. ������� ����� � ��������� ������ Python �������������.
 select employee_name, r.role_name 
 from employees e 
 join roles_employee on employee_id = e.id 
 join roles r on role_id  = r.id
 where role_name like '%Python%';
 
--9. ������� ����� � ��������� ���� QA ���������.
 select employee_name, r.role_name 
 from employees e 
 join roles_employee on employee_id = e.id 
 join roles r on role_id  = r.id
 where role_name like '%QA%';
  
--10. ������� ����� � ��������� ������ QA ���������.
 select employee_name, r.role_name 
 from employees e 
 join roles_employee on employee_id = e.id 
 join roles r on role_id  = r.id
 where role_name like '%Manual QA%';
  
--11. ������� ����� � ��������� ��������������� QA
 select employee_name, r.role_name 
 from employees e 
 join roles_employee on employee_id = e.id 
 join roles r on role_id  = r.id
 where role_name like '%Automation QA%';
 
--12. ������� ����� � �������� Junior ������������
 select employee_name, monthly_salary
 from employees e 
 join roles_employee re on re.employee_id = e.id 
 join roles r on role_id = r.id 
 join employee_salary es on es.employee_id = e.id
 join salary s on salary_id = s.id
 where role_name like '%Junior%';
 
--13. ������� ����� � �������� Middle ������������
 select employee_name, monthly_salary
 from employees e 
 join roles_employee re on re.employee_id = e.id 
 join roles r on role_id = r.id 
 join employee_salary es on es.employee_id = e.id
 join salary s on salary_id = s.id
 where role_name like '%Middle%';
 
--14. ������� ����� � �������� Senior ������������
 select employee_name, monthly_salary
 from employees e 
 join roles_employee re on re.employee_id = e.id 
 join roles r on role_id = r.id 
 join employee_salary es on es.employee_id = e.id
 join salary s on salary_id = s.id
 where role_name like '%Senior%';
 
--15. ������� �������� Java �������������
 select monthly_salary
 from employees e 
 join roles_employee re on re.employee_id = e.id 
 join roles r on role_id = r.id 
 join employee_salary es on es.employee_id = e.id
 join salary s on salary_id = s.id
 where role_name like '%Java%';
 
--16. ������� �������� Python �������������
 select monthly_salary
 from employees e 
 join roles_employee re on re.employee_id = e.id 
 join roles r on role_id = r.id 
 join employee_salary es on es.employee_id = e.id
 join salary s on salary_id = s.id
 where role_name like '%Python%';
  
--17. ������� ����� � �������� Junior Python �������������
 select employee_name, monthly_salary
 from employees e 
 join roles_employee re on re.employee_id = e.id 
 join roles r on role_id = r.id 
 join employee_salary es on es.employee_id = e.id
 join salary s on salary_id = s.id
 where role_name like '%Junior Python%';
 
 --18. ������� ����� � �������� Middle JS �������������
 select employee_name, monthly_salary
 from employees e 
 join roles_employee re on re.employee_id = e.id 
 join roles r on role_id = r.id 
 join employee_salary es on es.employee_id = e.id
 join salary s on salary_id = s.id
 where role_name like '%Middle JavaScript%';
 
 --19. ������� ����� � �������� Senior Java �������������
 select employee_name, monthly_salary
 from employees e 
 join roles_employee re on re.employee_id = e.id 
 join roles r on role_id = r.id 
 join employee_salary es on es.employee_id = e.id
 join salary s on salary_id = s.id
 where role_name like '%Senior Java%';
 
--20. ������� �������� Junior QA ���������
 select employee_name, monthly_salary
 from employees e 
 join roles_employee re on re.employee_id = e.id 
 join roles r on role_id = r.id 
 join employee_salary es on es.employee_id = e.id
 join salary s on salary_id = s.id
 where role_name like '%Junior_QA%';

--21. ������� ������� �������� ���� Junior ������������
 select avg (monthly_salary)
 from employees e 
 join roles_employee re on re.employee_id = e.id 
 join roles r on role_id = r.id 
 join employee_salary es on es.employee_id = e.id
 join salary s on salary_id = s.id
 where role_name like '%Junior%';
  
--22. ������� ����� ������� JS �������������
 select sum (monthly_salary)
 from employees e 
 join roles_employee re on re.employee_id = e.id 
 join roles r on role_id = r.id 
 join employee_salary es on es.employee_id = e.id
 join salary s on salary_id = s.id
 where role_name like '%JavaScript%';
  
--23. ������� ����������� �� QA ���������
 select min(monthly_salary)
 from employees e 
 join roles_employee re on re.employee_id = e.id 
 join roles r on role_id = r.id 
 join employee_salary es on es.employee_id = e.id
 join salary s on salary_id = s.id
 where role_name like '%QA%'; 
 
--24. ������� ������������ �� QA ���������
 select max (monthly_salary)
 from employees e 
 join roles_employee re on re.employee_id = e.id 
 join roles r on role_id = r.id 
 join employee_salary es on es.employee_id = e.id 
 join salary s on salary_id = s.id 
 where role_name like '%QA%';
  
--25. ������� ���������� QA ���������
 select count (r.role_name)
 from employees e 
 join roles_employee on employee_id = e.id 
 join roles r on role_id  = r.id
 where role_name like '%QA%';
  
--26. ������� ���������� Middle ������������.
 select count (r.role_name)
 from employees e 
 join roles_employee on employee_id = e.id 
 join roles r on role_id  = r.id
 where role_name like '%Middle%';
 
 --27. ������� ���������� �������������
select count (r.role_name)
from employees e 
join roles_employee on employee_id = e.id 
join roles r on role_id = r.id  
where role_name like '%developer%';
 
--28. ������� ���� (�����) �������� �������������.
 select sum (monthly_salary)
 from employees e 
 join roles_employee re on re.employee_id = e.id 
 join roles r on role_id = r.id 
 join employee_salary es on es.employee_id = e.id
 join salary s on salary_id = s.id
 where role_name like '%developer%';
  
 --29. ������� �����, ��������� � �� ���� ������������ �� �����������
 select employee_name, r.role_name, s.monthly_salary 
 from employees e 
 join roles_employee on employee_id = e.id 
 join roles r on role_id  = r.id
 join employee_salary es on es.employee_id = e.id
 join salary s on salary_id = s.id
 order by s.monthly_salary;
 
 --30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
 select employee_name, r.role_name, s.monthly_salary 
 from employees e 
 join roles_employee on employee_id = e.id 
 join roles r on role_id  = r.id
 join employee_salary es on es.employee_id = e.id
 join salary s on salary_id = s.id
 where s.monthly_salary > 1700 and s.monthly_salary < 2300
 order by s.monthly_salary;
 
 --31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
 select employee_name, r.role_name, s.monthly_salary 
 from employees e 
 join roles_employee on employee_id = e.id 
 join roles r on role_id  = r.id
 join employee_salary es on es.employee_id = e.id
 join salary s on salary_id = s.id
 where s.monthly_salary < 2300
 order by s.monthly_salary;
 
 --32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, r.role_name, s.monthly_salary 
 from employees e 
 join roles_employee on employee_id = e.id 
 join roles r on role_id  = r.id
 join employee_salary es on es.employee_id = e.id
 join salary s on salary_id = s.id
 where s.monthly_salary = 1100 or s.monthly_salary = 1500 or s.monthly_salary = 2000
 order by s.monthly_salary;
 
