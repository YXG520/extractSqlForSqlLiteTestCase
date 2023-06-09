

      CREATE TEMP TABLE t1(a, b);
      CREATE TEMP TABLE log(trig, a, b);

      CREATE TRIGGER t1_a AFTER INSERT ON t1 BEGIN
        INSERT INTO log VALUES('a', new.a, new.b);
      END;
      CREATE TEMP TRIGGER t1_b AFTER INSERT ON t1 BEGIN
        INSERT INTO log VALUES('b', new.a, new.b);
      END;
  
      INSERT INTO t1 VALUES(1, 2);
      SELECT * FROM log ORDER BY trig, a, b;
    


      ALTER TABLE t1 ADD COLUMN c DEFAULT 'c';
      INSERT INTO t1(a, b) VALUES(3, 4);
      SELECT * FROM log ORDER BY trig, a, b;
    
