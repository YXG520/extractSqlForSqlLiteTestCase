

    CREATE TABLE t3(a,b,c);
    CREATE TRIGGER t3r1 BEFORE UPDATE on t3 WHEN nosuchcol BEGIN
      SELECT 'illegal WHEN clause';
    END;
  


    UPDATE t3 SET a=1;
  


    CREATE TABLE t4(a,b,c);
    CREATE TRIGGER t4r1 AFTER UPDATE on t4 WHEN nosuchcol BEGIN
      SELECT 'illegal WHEN clause';
    END;
  


    UPDATE t4 SET a=1;
  
