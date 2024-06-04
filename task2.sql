insert into "Students" (first_name, last_name, date_of_birth, email, phone_number, address, enrollment_date, gpa) values 
	('Vasya', 'Sidorov', '2004-03-22', 'vasya@mail.ru', '+123123123', null, '2022-03-22', 2),
	('Petya', 'Sidorov', '2004-03-22', 'petya@mail.ru', '+123123123', 'Tyumen', '2004-03-22', 3),
	('Misha', 'Sidorov', '2004-03-22', 'misha@mail.ru', null, 'Tyumen', '2022-03-22', 5),
	('Andrei', 'Sidorov', '2004-03-22', 'andrei@mail.ru', '+123123123', 'Tyumen', '2022-03-22', 4),
	('Anton', 'Sidorov', '2004-03-22', 'anton@mail.ru', null, 'Tyumen', '2022-03-22', null),
	
insert into "Courses" (course_name, description, credits, departament) values 
	('AI', 'programming with gpt', 1, 'department1'),
	('CS', null, 2, 'department2'),
	('WD', 'learning js', 3, 'department3'),
    ('GD', 'Game dev', 1, 'department4'),


insert into "Enrollments" (student_id, course_id, enrollment_date, grade) values 
	(1, 1, '2022-03-22', 3),
	(2, 2, '2022-03-22', 4),
	(4, 3, '2022-03-22', null)