

  CREATE TEMP TABLE t1(a,b);
  CREATE TEMP TABLE t2(c,d);
  CREATE TEMP TABLE t3(e,f);
  CREATE TEMP TABLE log(op,x,y);
  CREATE TEMP TRIGGER t1r1 AFTER INSERT ON t1 BEGIN
     INSERT INTO log(op,x,y) VALUES('I1',new.a,new.b);
  END;
  CREATE TEMP TRIGGER t1r2 BEFORE DELETE ON t1 BEGIN
     INSERT INTO log(op,x,y) VALUES('D1',old.a,old.b);
  END;
  CREATE TEMP TRIGGER t2r3 AFTER UPDATE ON t1 BEGIN
     INSERT INTO log(op,x,y) VALUES('U1',new.a,new.b);
  END;
  CREATE TEMP TRIGGER t2r1 BEFORE INSERT ON t2 BEGIN
     INSERT INTO log(op,x,y) VALUES('I2',new.c,new.d);
  END;
  CREATE TEMP TRIGGER t3r1 AFTER DELETE ON t3 BEGIN
     INSERT INTO log(op,x,y) VALUES('D3',old.e,old.f);
  END;
  CREATE TEMP TRIGGER t3r2 BEFORE UPDATE ON t3 BEGIN
     INSERT INTO log(op,x,y) VALUES('U3',new.e,new.f);
  END;
  INSERT INTO t1(a,b) VALUES(1,2),('happy','glad') RETURNING a, b, '|';



  UPDATE t1 SET b=9 WHERE a=1 RETURNING a, b, 'x';



  DELETE FROM t1 WHERE a<>'xray' RETURNING a, b, '@';



  SELECT * FROM log;
  DELETE FROM log;



  INSERT INTO t2 VALUES('bravo','charlie') RETURNING d, c, 'z';



  SELECT * FROM log;
  DELETE FROM log;



  INSERT INTO t3(e) VALUES(1),(2),(3) RETURNING 'I', e;
  UPDATE t3 SET f=e+100 RETURNING 'U', e, f;
  DELETE FROM t3 WHERE f>100 RETURNING 'D', e, f;



  SELECT * FROM log;
  DELETE FROM log;



  CREATE TEMP TABLE t1(a,b);
  CREATE TRIGGER r1 BEFORE INSERT ON t1 BEGIN SELECT 1; END;
  DELETE FROM t1 RETURNING *;
  DROP TRIGGER r1;
  INSERT INTO t1 VALUES(5,30);



  SELECT * FROM t1;
