pragma recursive_triggers = off 
CREATE TABLE tbl(a, b ,c) 
CREATE TRIGGER before_tbl_insert BEFORE INSERT ON tbl BEGIN SELECT CASE 
        WHEN (new.a = 4) THEN RAISE(IGNORE) END;
    END;

    CREATE TRIGGER after_tbl_insert AFTER INSERT ON tbl BEGIN SELECT CASE 
        WHEN (new.a = 1) THEN RAISE(ABORT,    'Trigger abort') 
        WHEN (new.a = 2) THEN RAISE(FAIL,     'Trigger fail') 
        WHEN (new.a = 3) THEN RAISE(ROLLBACK, 'Trigger rollback') END;
    END;

BEGIN;
        INSERT INTO tbl VALUES (5, 5, 6);
        INSERT INTO tbl VALUES (1, 5, 6);
    
SELECT * FROM tbl;
        ROLLBACK;
    
SELECT * FROM tbl
BEGIN;
        INSERT INTO tbl VALUES (5, 5, 6);
        INSERT INTO tbl VALUES (2, 5, 6);
    
SELECT * FROM tbl;
        ROLLBACK;
    
BEGIN;
        INSERT INTO tbl VALUES (5, 5, 6);
        INSERT INTO tbl VALUES (3, 5, 6);
    
SELECT * FROM tbl;
    
COMMIT
INSERT INTO tbl VALUES (3, 9, 10);
    
SELECT * FROM tbl
BEGIN;
        INSERT INTO tbl VALUES (5, 5, 6);
        INSERT INTO tbl VALUES (4, 5, 6);
    
SELECT * FROM tbl;
        ROLLBACK;
    
DROP TABLE tbl;
CREATE TABLE tbl (a, b, c);
INSERT INTO tbl VALUES(1, 2, 3);
INSERT INTO tbl VALUES(4, 5, 6);
CREATE TRIGGER before_tbl_update BEFORE UPDATE ON tbl BEGIN
        SELECT CASE WHEN (old.a = 1) THEN RAISE(IGNORE) END;
    END;

    CREATE TRIGGER before_tbl_delete BEFORE DELETE ON tbl BEGIN
        SELECT CASE WHEN (old.a = 1) THEN RAISE(IGNORE) END;
    END;

UPDATE tbl SET c = 10;
        SELECT * FROM tbl;
    
DELETE FROM tbl;
        SELECT * FROM tbl;
    
CREATE TABLE tbl2(a, b, c)
CREATE TRIGGER after_tbl2_insert AFTER INSERT ON tbl2 BEGIN
        UPDATE tbl SET c = 10;
        INSERT INTO tbl2 VALUES (new.a, new.b, new.c);
    END;

INSERT INTO tbl2 VALUES (1, 2, 3);
        SELECT * FROM tbl2;
        SELECT * FROM tbl;
    
CREATE VIEW tbl_view AS SELECT * FROM tbl
CREATE TRIGGER tbl_view_insert INSTEAD OF INSERT ON tbl_view BEGIN
        SELECT CASE WHEN (new.a = 1) THEN RAISE(ROLLBACK, 'View rollback')
                    WHEN (new.a = 2) THEN RAISE(IGNORE) 
                    WHEN (new.a = 3) THEN RAISE(ABORT, 'View abort') END;
    END;

INSERT INTO tbl_view VALUES(1, 2, 3);
    
INSERT INTO tbl_view VALUES(2, 2, 3);
    
INSERT INTO tbl_view VALUES(3, 2, 3);
    
DROP TABLE tbl; 
DROP TABLE tbl2; 
DROP VIEW tbl_view; 