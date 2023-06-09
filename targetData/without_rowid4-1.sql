
 
        UPDATE tbl SET a = a * 10, b = b * 10;
        SELECT * FROM rlog ORDER BY idx;
        SELECT * FROM clog ORDER BY idx;
      

      DELETE FROM rlog;
      DELETE FROM tbl;
      INSERT INTO tbl VALUES (100, 100);
      INSERT INTO tbl VALUES (300, 200);
      CREATE TRIGGER delete_before_row BEFORE DELETE ON tbl FOR EACH ROW
        BEGIN
        INSERT INTO rlog VALUES ( (SELECT coalesce(max(idx),0) + 1 FROM rlog), 
  	  old.a, old.b, 
  	  (SELECT coalesce(sum(a),0) FROM tbl),
          (SELECT coalesce(sum(b),0) FROM tbl), 
  	  0, 0);
      END;
  
      CREATE TRIGGER delete_after_row AFTER DELETE ON tbl FOR EACH ROW
        BEGIN
        INSERT INTO rlog VALUES ( (SELECT coalesce(max(idx),0) + 1 FROM rlog), 
  	  old.a, old.b, 
  	  (SELECT coalesce(sum(a),0) FROM tbl),
          (SELECT coalesce(sum(b),0) FROM tbl), 
  	  0, 0);
      END;
    


        DELETE FROM tbl;
        SELECT * FROM rlog;
      

      DELETE FROM rlog;
      CREATE TRIGGER insert_before_row BEFORE INSERT ON tbl FOR EACH ROW
        BEGIN
        INSERT INTO rlog VALUES ( (SELECT coalesce(max(idx),0) + 1 FROM rlog), 
  	  0, 0,
  	  (SELECT coalesce(sum(a),0) FROM tbl),
          (SELECT coalesce(sum(b),0) FROM tbl), 
  	  new.a, new.b);
      END;
  
      CREATE TRIGGER insert_after_row AFTER INSERT ON tbl FOR EACH ROW
        BEGIN
        INSERT INTO rlog VALUES ( (SELECT coalesce(max(idx),0) + 1 FROM rlog), 
  	  0, 0,
  	  (SELECT coalesce(sum(a),0) FROM tbl),
          (SELECT coalesce(sum(b),0) FROM tbl), 
  	  new.a, new.b);
      END;
    


  
        CREATE TABLE other_tbl(a, b);
        INSERT INTO other_tbl VALUES(1, 2);
        INSERT INTO other_tbl VALUES(3, 4);
        -- INSERT INTO tbl SELECT * FROM other_tbl;
        INSERT INTO tbl VALUES(5, 6);
        DROP TABLE other_tbl;
  
        SELECT * FROM rlog;
      

    DROP TABLE rlog;
    DROP TABLE clog;
    DROP TABLE tbl;
    DROP TABLE other_tbl;
  

      DROP TABLE tbl;
      DROP TABLE log;
    

      CREATE TABLE tbl(a PRIMARY KEY, b, c) WITHOUT rowid;
      CREATE TABLE log(a, b, c);
    
$prep $tr_program_cooked $statement $query
DELETE FROM tbl; DELETE FROM log; $prep
CREATE TRIGGER the_trigger BEFORE [string range $statement 0 6]\
             ON tbl BEGIN $tr_program_fixed END;
