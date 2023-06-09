
CREATE TABLE t${i}(x)
CREATE VIRTUAL TABLE vt$i USING echo(t$i)
SELECT count(*) FROM sqlite_master

SELECT name FROM sqlite_master

CREATE TABLE m(a)
CREATE TRIGGER rins AFTER INSERT ON m BEGIN\n
  INSERT INTO vt$i VALUES(NEW.a+$i);\n
END;
SELECT count(*) FROM sqlite_master


      INSERT INTO m VALUES(1000);
      SELECT * FROM m;
    

SELECT * FROM t$::j

SELECT * FROM vt$::j

CREATE TRIGGER rins2 BEFORE INSERT ON m BEGIN\n
  INSERT INTO vt$i VALUES(NEW.a+$i*100);\n
  INSERT INTO vt$i VALUES(NEW.a+$i*10000);\n
END;
SELECT count(*) FROM sqlite_master


      INSERT INTO m VALUES(9000000);
      SELECT * FROM m;
    

SELECT * FROM t$::j

SELECT * FROM vt$::j
