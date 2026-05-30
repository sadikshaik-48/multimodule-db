CREATE TABLE lucifer.workers
(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(20),
    manager_id INT
);

INSERT INTO lucifer.workers
VALUES
(1, 'Rahul', NULL),
(2, 'Aman', 1),
(3, 'Priya', 1),
(4, 'Karan', 2),
(5, 'Sneha', 2),
(6, 'Rohit', 3),
(7, 'Vikram', 3);
select * from lucifer.workers;

select
n.emp_name as emp_id,
m.emp_name as manager_id
from lucifer.workers n inner join lucifer.workers m on  m.emp_id = n.manager_id;
 