DROP PROCEDURE if exists updateSalaryProc;

DELIMITER //

CREATE PROCEDURE updateSalaryProc()
BEGIN
    DECLARE fini INT DEFAULT 0;
    DECLARE numDept INT;
    DECLARE cur_numDept CURSOR FOR SELECT dnumber FROM deptSalary;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET fini = 1;

    OPEN cur_numDept;

    REPEAT
        FETCH cur_numDept INTO numDept;
        UPDATE deptSalary 
        SET totalSalary = (SELECT SUM(salary) FROM employee WHERE dno = numDept)
        WHERE dnumber = numDept;
    UNTIL fini = 1
    END REPEAT;

    CLOSE cur_numDept;

END //

DELIMITER ;

call updateSalaryProc();

SELECT * FROM deptSalary;