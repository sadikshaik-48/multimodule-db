CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(20),
    marks INT
);
create table details
(
id int,
ph_no int,
foreign key (id)
references students(id)
);