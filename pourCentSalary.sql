DROP PROCEDURE if exists pourCentSalary;

DELIMITER //

CREATE PROCEDURE pourCentSalary(in pourcent FLOAT)
BEGIN
    DECLARE fini INT DEFAULT 0;
    DECLARE idemp INT; 
    DECLARE salemp FLOAT;
    DECLARE cur_empl CURSOR FOR SELECT id, salary FROM employee;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET fini = 1;

    OPEN cur_empl;

    setPour:LOOP

        FETCH cur_empl INTO idemp, salemp;

        IF fini = 1 THEN
            LEAVE setPour;
        END IF;

        UPDATE employee 
        SET salary = salemp + (salemp * pourcent)
        WHERE id = idemp;

    END LOOP setPour;

    CLOSE cur_empl;

END //

DELIMITER ;

call pourCentSalary(0.02);

SELECT * FROM employee;