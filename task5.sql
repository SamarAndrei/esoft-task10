--1
select s.first_name, s.last_name
from "Students" s
	join "Enrollments" e on s.student_id = e.student_id
where e.course_id = 2
order by last_name asc;
--2
select cr.course_name,
	count(distinct student_id) as students
from "Courses" cr
	join "Enrollments" e on cr.course_id = e.course_id
group by cr.course_name;
--3
select s.first_name, s.last_name, s.gpa
from "Students" s
where s.gpa > 3
order by gpa desc;
--4
select cr.*, s.first_name, s.last_name, e.enrollment_date
	from "Courses" cr
	join "Enrollments" e on cr.course_id = e.course_id
	join "Students" s on e.student_id = s.student_id
where e.enrollment_date >= date_trunc('month', current_date) 
	and e.enrollment_date < date_trunc('month', current_date) + interval '1 month';
--5
select *
from "Students"
where phone_number is null
order by enrollment_date asc;
--6
select *
from "Courses"
where departament = 'department1'
order by credits desc;
--7
select students, cr.course_name, e.grade
from "Students" students
	join "Enrollments" e on students.student_id = e.student_id
	join "Courses" cr on e.course_id = cr.course_id;
--8
select s.*, 
	count(distinct e.course_id) as courses
from "Students" s
    join "Enrollments" e on s.student_id = e.student_id
    join "Courses" cr on e.course_id = cr.course_id
group by s.student_id;
--9
select s.* 
from "Students" s
    join "Enrollments" e on s.student_id = e.student_id
    join "Courses" cr on e.course_id = cr.course_id
group by s.student_id
having count(distinct cr.departament) != 1;
--10
select cr.* 
from "Courses" cr
     full join "Enrollments" e on cr.course_id = e.course_id
group by cr.course_id
having count(distinct e.student_id) = 0;
--11
select s.*
from "Students" s
    join "Enrollments" e on s.student_id = e.student_id
    join "Courses" cr on e.course_id = cr.course_id
where cr.departament = 'department2';
--12
select s.*, cr.credits
from "Students" s
    join "Enrollments" e on s.student_id = e.student_id
    join "Courses" cr on e.course_id = cr.course_id
order by cr.credits desc;
--13
select s.*
from "Students" s
    join "Enrollments" e on s.student_id = e.student_id
    join "Courses" cr on e.course_id = cr.course_id
order by s.gpa desc;
--14
select s.*
	from "Enrollments" e
	join "Students" s on e.student_id = s.student_id
where e.enrollment_date >= date_trunc('year', current_date) 
	and e.enrollment_date < date_trunc('year', current_date) + interval '1 year';
--15
select s.*,
	count(distinct cr.course_id) as courses
from "Students" s
	join "Enrollments" e on s.student_id = e.student_id
	join "Courses" cr on e.course_id = cr.course_id
group by s.student_id
order by courses desc;