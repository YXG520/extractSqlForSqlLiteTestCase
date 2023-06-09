

  CREATE TABLE t1(a,b,c);
  CREATE TABLE log(a INTEGER PRIMARY KEY,b,c);
  CREATE TRIGGER tr1 AFTER INSERT ON t1 BEGIN
    INSERT INTO logx(a,b,c) VALUES(new.a,new.b,new.c)
    ON CONFLICT(a) DO UPDATE SET c=excluded.c, b=new.b;
  END;
  ALTER TABLE log RENAME COLUMN a TO x;

