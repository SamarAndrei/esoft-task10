update "Students"
	set address = 'Irbit',
	phone_number = '+321321321'
	where student_id = 2;

update "Courses"
	set description = 'Computer Science'
	where course_id = 2;

update "Enrollments"
	set grade = 1
	where student_id = 1;