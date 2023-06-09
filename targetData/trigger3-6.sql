

        INSERT INTO tbl2 VALUES (1, 2, 3);
        SELECT * FROM tbl2;
        SELECT * FROM tbl;
    
CREATE VIEW tbl_view AS SELECT * FROM tbl

    CREATE TRIGGER tbl_view_insert INSTEAD OF INSERT ON tbl_view BEGIN
        SELECT CASE WHEN (new.a = 1) THEN RAISE(ROLLBACK, 'View rollback')
                    WHEN (new.a = 2) THEN RAISE(IGNORE) 
                    WHEN (new.a = 3) THEN RAISE(ABORT, 'View abort') END;
    END;

