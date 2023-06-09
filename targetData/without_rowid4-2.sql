
$statement $query
DROP TRIGGER the_trigger;
DELETE FROM tbl; DELETE FROM log;
$prep $statement $tr_program_cooked $query
DELETE FROM tbl; DELETE FROM log; $prep
CREATE TRIGGER the_trigger AFTER [string range $statement 0 6]\
             ON tbl BEGIN $tr_program_fixed END;

$statement $query
DROP TRIGGER the_trigger;

  DROP TABLE tbl;
  DROP TABLE log;


  CREATE TABLE tbl (a, b, c, d, PRIMARY KEY(a,b,c,d)) WITHOUT rowid;
  CREATE TABLE log (a);
  INSERT INTO log VALUES (0);
  INSERT INTO tbl VALUES (0, 0, 0, 0);
  INSERT INTO tbl VALUES (1, 0, 0, 0);
  CREATE TRIGGER tbl_after_update_cd BEFORE UPDATE OF c, d ON tbl
    BEGIN
      UPDATE log SET a = a + 1;
    END;

