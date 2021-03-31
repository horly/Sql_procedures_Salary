DROP TABLE if exists deptSalary;

CREATE TABLE 
        deptSalary 
            AS SELECT dnumber, 0 AS totalSalary
            FROM departement;