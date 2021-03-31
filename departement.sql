DROP TABLE if exists departement;

CREATE TABLE 
        departement(
                    dnumber INT PRIMARY KEY, 
                    dname VARCHAR(25) NOT NULL
        );

INSERT INTO 
        departement 
            VALUES
                    (1, 'Ressources'),
                    (2, 'Maintenance'),
                    (3, 'Informatique');