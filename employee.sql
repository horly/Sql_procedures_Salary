DROP TABLE if exists employee;

CREATE TABLE 
        employee(
                    id INT PRIMARY KEY, 
                    name VARCHAR(50) NOT NULL, 
                    salary FLOAT, dno INT
        );

INSERT INTO 
        employee 
            VALUES
                    (1, 'Omar', 100000, 1),
                    (2, 'Ali', 50000, 3),
                    (3, 'Lyla', 80000, 3),
                    (4, 'Malika', 50000, 2),
                    (5, 'Farid', NULL, 1); 