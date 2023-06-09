

  CREATE TABLE ab(a, b);
  CREATE TABLE cd(c, d);
  INSERT INTO ab VALUES (1, 2);
  INSERT INTO ab VALUES (0, 0);
  INSERT INTO cd VALUES (3, 4);

  CREATE TABLE tlog(ii INTEGER PRIMARY KEY, 
      olda, oldb, oldc, oldd, newa, newb, newc, newd);

  CREATE VIEW abcd AS SELECT a, b, c, d FROM ab, cd;

  CREATE TRIGGER before_update INSTEAD OF UPDATE ON abcd BEGIN
    INSERT INTO tlog VALUES(NULL, 
	old.a, old.b, old.c, old.d, new.a, new.b, new.c, new.d);
  END;
  CREATE TRIGGER after_update INSTEAD OF UPDATE ON abcd BEGIN
    INSERT INTO tlog VALUES(NULL, 
	old.a, old.b, old.c, old.d, new.a, new.b, new.c, new.d);
  END;

  CREATE TRIGGER before_delete INSTEAD OF DELETE ON abcd BEGIN
    INSERT INTO tlog VALUES(NULL, 
	old.a, old.b, old.c, old.d, 0, 0, 0, 0);
  END;
  CREATE TRIGGER after_delete INSTEAD OF DELETE ON abcd BEGIN
    INSERT INTO tlog VALUES(NULL, 
	old.a, old.b, old.c, old.d, 0, 0, 0, 0);
  END;

  CREATE TRIGGER before_insert INSTEAD OF INSERT ON abcd BEGIN
    INSERT INTO tlog VALUES(NULL, 
	0, 0, 0, 0, new.a, new.b, new.c, new.d);
  END;
   CREATE TRIGGER after_insert INSTEAD OF INSERT ON abcd BEGIN
    INSERT INTO tlog VALUES(NULL, 
	0, 0, 0, 0, new.a, new.b, new.c, new.d);
   END;
  


    UPDATE abcd SET a = 100, b = 5*5 WHERE a = 1;
    DELETE FROM abcd WHERE a = 1;
    INSERT INTO abcd VALUES(10, 20, 30, 40);
    SELECT * FROM tlog;
  


    DELETE FROM tlog;
    INSERT INTO abcd VALUES(10, 20, 30, 40);
    UPDATE abcd SET a = 100, b = 5*5 WHERE a = 1;
    DELETE FROM abcd WHERE a = 1;
    SELECT * FROM tlog;
  


    DELETE FROM tlog;
    DELETE FROM abcd WHERE a = 1;
    INSERT INTO abcd VALUES(10, 20, 30, 40);
    UPDATE abcd SET a = 100, b = 5*5 WHERE a = 1;
    SELECT * FROM tlog;
  
