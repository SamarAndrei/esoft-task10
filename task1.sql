CREATE DATABASE "UniversityDB"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LOCALE_PROVIDER = 'libc'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

create table "Students" (
	student_id serial not null primary key,
	first_name varchar(255) not null,
	last_name varchar(255) not null,
	date_of_birth date not null,
	email text unique not null, 
	phone_number text,
	address text,
	enrollment_date date not null,
	gpa int
)

create table "Courses" (
	course_id serial not null primary key,
	course_name varchar(255) not null,
	description varchar(255),
	credits int not null,
	departament text not null
)

create table "Enrollments" (
	enrollment_id serial not null primary key,
	student_id int,
	course_id int,
	enrollment_date date not null,
	grade int,
	foreign key (student_id)
		references "Students" (student_id)
		on update cascade,
	foreign key (course_id)
		references "Courses" (course_id)
		on update cascade
)