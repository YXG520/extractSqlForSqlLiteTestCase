

      CREATE TABLE t3928(a INTEGER PRIMARY KEY AUTOINCREMENT, b);
      CREATE TRIGGER t3928r1 BEFORE INSERT ON t3928 BEGIN
        INSERT INTO t3928(b) VALUES('before1');
        INSERT INTO t3928(b) VALUES('before2');
      END;
      CREATE TRIGGER t3928r2 AFTER INSERT ON t3928 BEGIN
        INSERT INTO t3928(b) VALUES('after1');
        INSERT INTO t3928(b) VALUES('after2');
      END;
      INSERT INTO t3928(b) VALUES('test');
      SELECT * FROM t3928 ORDER BY a;
    


      SELECT * FROM sqlite_sequence WHERE name='t3928'
    


      DROP TRIGGER t3928r1;
      DROP TRIGGER t3928r2;
      CREATE TRIGGER t3928r3 BEFORE UPDATE ON t3928 
        WHEN typeof(new.b)=='integer' BEGIN
           INSERT INTO t3928(b) VALUES('before-int-' || new.b);
      END;
      CREATE TRIGGER t3928r4 AFTER UPDATE ON t3928 
        WHEN typeof(new.b)=='integer' BEGIN
           INSERT INTO t3928(b) VALUES('after-int-' || new.b);
      END;
      DELETE FROM t3928 WHERE a!=1;
      UPDATE t3928 SET b=456 WHERE a=1;
      SELECT * FROM t3928 ORDER BY a;
    


      SELECT * FROM sqlite_sequence WHERE name='t3928'
    


      CREATE TABLE t3928b(x);
      INSERT INTO t3928b VALUES(100);
      INSERT INTO t3928b VALUES(200);
      INSERT INTO t3928b VALUES(300);
      DELETE FROM t3928;
      CREATE TABLE t3928c(y INTEGER PRIMARY KEY AUTOINCREMENT, z);
      CREATE TRIGGER t3928br1 BEFORE DELETE ON t3928b BEGIN
        INSERT INTO t3928(b) VALUES('before-del-'||old.x);
        INSERT INTO t3928c(z) VALUES('before-del-'||old.x);
      END;
      CREATE TRIGGER t3928br2 AFTER DELETE ON t3928b BEGIN
        INSERT INTO t3928(b) VALUES('after-del-'||old.x);
        INSERT INTO t3928c(z) VALUES('after-del-'||old.x);
      END;
      DELETE FROM t3928b;
      SELECT * FROM t3928 ORDER BY a;
    


      SELECT * FROM t3928c ORDER BY y;
    


      SELECT * FROM sqlite_sequence WHERE name LIKE 't3928%' ORDER BY name;
    
