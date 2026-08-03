USE MYDB;

create table Students(
	StudentID int primary key,
    StudentName varchar(100)
);

insert into Students (StudentID,StudentName)
values
(1001,'Sakib Khan'),
(1002,'Tahsan Khan'),
(1003,'Tasnia Farin'),
(1004,'Khairul Bashar'),
(1005,'Joya Ahasan'),
(1006,'Tawsif Mahbub'),
(1007,'Siam Ahmed');

create table Courses(
	CourseID int primary key,
    CourseName varchar(100)
);

insert into Courses (CourseID,CourseName)
values
(101,'AI Content Creation'),
(102,'Machine Learning'),
(103,'Data Analysis'),
(104,'Python Programming');

create table Enrollments(
	EnrollmentID int primary key,
    StudentID int,
    CourseID int,
    foreign key(StudentID) references Students(StudentID),
    foreign key(CourseID) references Courses(CourseID)
);

insert into Enrollments (EnrollmentID,StudentID,CourseID)
values
(1,1001,104),
(2,1002,102),
(4,1004,104),
(6,1006,102),
(7,1007,101);

select Students.StudentName, Courses.CourseName
from Students inner join Enrollments
on Students.StudentID=Enrollments.StudentID
inner join Courses
on Enrollments.CourseID=Courses.CourseID;


select Students.StudentName, Courses.CourseName
from Students left join Enrollments
on Students.StudentID=Enrollments.StudentID
left join Courses
on Enrollments.CourseID=Courses.CourseID;


select Students.StudentName, Courses.CourseName
from Students right join Enrollments
on Students.StudentID=Enrollments.StudentID
right join Courses
on Enrollments.CourseID=Courses.CourseID;
