-- 1. Tạo CSDL Student_Management
create database student_management;
-- 2. Sử dụng CSDL
use student_management;
-- Xóa
drop database student_management;
-- 4. Tạo bảng lớp sinh viên
create table class(
	class_id int primary key auto_increment,
    class_name varchar(20) not null unique,
    class_status bit default(1)
);
-- 5. Tạo bảng Student
create table student(
	student_id char(5) primary key,
    student_name varchar(50) not null unique,
    age int check(age >=18),
    address text,
    sex bit default(1),
    student_status bit default(1)
);
-- 6. Tạo bảng class_student
create table class_student(
	class_id int,
    student_id char(5),
    -- Ràng buộc khóa ngoại
    foreign key (class_id) references class(class_id),
    foreign key(student_id) references student(student_id),
    -- Khóa chính
    primary key(class_id, student_id)
);
-- 7. Thêm cột vào bảng
alter table student 
	add column email varchar(50);
    
-- 8. Sử kiểu dữ liệu
alter table student
	modify column email text;
    
-- 9. Xóa cột 
alter table student
	drop column email;
    
-- 10. Thêm contraint cho 1 cột:thêm unique cho cột student-name
alter table student
	add constraint unique(student_name);
    
-- 11. Xóa contraint unique cho 1 cột
alter table student
	drop constraint student_name;
    
-- 12. Xóa bảng student