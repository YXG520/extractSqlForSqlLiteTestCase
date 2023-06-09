

        BEGIN;
        INSERT INTO tbl VALUES (5, 5, 6);
        INSERT INTO tbl VALUES (1, 5, 6);
    


        SELECT * FROM tbl;
        ROLLBACK;
    

SELECT * FROM tbl
