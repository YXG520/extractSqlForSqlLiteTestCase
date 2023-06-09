

    CREATE TABLE t3(a,b,c);
    CREATE TRIGGER t3r1 BEFORE INSERT on t3 WHEN nosuchcol BEGIN
      SELECT 'illegal WHEN clause';
    END;
  


    INSERT INTO t3 VALUES(1,2,3)
  


    CREATE TABLE t4(a,b,c);
    CREATE TRIGGER t4r1 AFTER INSERT on t4 WHEN nosuchcol BEGIN
      SELECT 'illegal WHEN clause';
    END;
  


    INSERT INTO t4 VALUES(1,2,3)
  


    CREATE TABLE t5(
      a INTEGER PRIMARY KEY,
      b DEFAULT 'xyz'
    );
    INSERT INTO t5 DEFAULT VALUES;
    SELECT * FROM t5;
  


    INSERT INTO t5 DEFAULT VALUES;
    SELECT * FROM t5;
  


      CREATE TABLE t6(x,y DEFAULT 4.3, z DEFAULT x'6869');
      INSERT INTO t6 DEFAULT VALUES;
      SELECT * FROM t6;
    
SELECT name FROM sqlite_master WHERE type = 'table'

  db eval "DROP TABLE $tab"

