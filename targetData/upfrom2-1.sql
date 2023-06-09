

    CREATE TABLE log(t TEXT);
    CREATE TABLE t1(x PRIMARY KEY, y, z UNIQUE) %WO%;
    CREATE INDEX t1y ON t1(y);

    INSERT INTO t1 VALUES(1, 'i',   'one');
    INSERT INTO t1 VALUES(2, 'ii',  'two');
    INSERT INTO t1 VALUES(3, 'iii', 'three');
    INSERT INTO t1 VALUES(4, 'iv',  'four');

    CREATE TRIGGER tr1 BEFORE UPDATE ON t1 BEGIN
      INSERT INTO log VALUES(old.z || '->' || new.z);
    END;
    CREATE TRIGGER tr2 AFTER UPDATE ON t1 BEGIN
      INSERT INTO log VALUES(old.y || '->' || new.y);
    END;
  


    WITH data(k, v) AS (
      VALUES(3, 'thirty'), (1, 'ten')
    )
    UPDATE t1 SET z=v FROM data WHERE x=k;

    SELECT * FROM t1;
    SELECT * FROM log;
  


    CREATE TABLE t2(a, b);
    CREATE TABLE t3(k, v);
  
    INSERT INTO t3 VALUES(5,   'v');
    INSERT INTO t3 VALUES(12, 'xii');
  
    INSERT INTO t2 VALUES(2, 12);
    INSERT INTO t2 VALUES(3, 5);
  
    DELETE FROM log;
    UPDATE t1 SET y=v FROM t2, t3 WHERE t1.x=t2.a AND t3.k=t2.b;
  
    SELECT * FROM t1;
    SELECT * FROM log;
  


    DELETE FROM log;
    WITH data(k, v) AS (
      VALUES(1, 'seven'), (1, 'eight'), (2, 'eleven'), (2, 'twelve')
    )
    UPDATE t1 SET z=v FROM data WHERE x=k;
  
    SELECT * FROM t1;
    SELECT * FROM log;
  


 
    CREATE VIEW v1 AS SELECT * FROM t1;
    CREATE TRIGGER v1tr INSTEAD OF UPDATE ON v1 BEGIN
      UPDATE t1 SET y=new.y, z=new.z WHERE x=new.x;
    END;

    DELETE FROM log;
    WITH data(k, v) AS (
      VALUES(3, 'thirteen'), (3, 'fourteen'), (4, 'fifteen'), (4, 'sixteen')
    )
    UPDATE v1 SET z=v FROM data WHERE x=k;
  


    SELECT * FROM v1;
    SELECT * FROM log;
  


    CREATE TABLE o1(w, x, y, z UNIQUE, PRIMARY KEY(w, x)) %WO%;
    CREATE INDEX o1y ON t1(y);

    INSERT INTO o1 VALUES(0, 0, 'i', 'one');
    INSERT INTO o1 VALUES(0, 1, 'ii', 'two');
    INSERT INTO o1 VALUES(1, 0, 'iii', 'three');
    INSERT INTO o1 VALUES(1, 1, 'iv', 'four');

    CREATE TRIGGER tro1 BEFORE UPDATE ON o1 BEGIN
      INSERT INTO log VALUES(old.z || '->' || new.z);
    END;
    CREATE TRIGGER tro2 AFTER UPDATE ON o1 BEGIN
      INSERT INTO log VALUES(old.y || '->' || new.y);
    END;
  


    DELETE FROM log;
    WITH data(k, v) AS (
      VALUES(3, 'thirty'), (1, 'ten')
    )
    UPDATE o1 SET z=v FROM data WHERE (1+x+w*2)=k;

    SELECT * FROM o1;
    SELECT * FROM log;
  


    DELETE FROM log;
    UPDATE o1 SET y=v FROM t2, t3 WHERE (1+o1.w*2+o1.x)=t2.a AND t3.k=t2.b;
  
    SELECT * FROM o1;
    SELECT * FROM log;
  


    DELETE FROM log;
    WITH data(k, v) AS (
      VALUES(1, 'seven'), (1, 'eight'), (2, 'eleven'), (2, 'twelve')
    )
    UPDATE o1 SET z=v FROM data WHERE (1+w*2+x)=k;
  
    SELECT * FROM o1;
    SELECT * FROM log;
  


 
    CREATE VIEW w1 AS SELECT * FROM o1;
    CREATE TRIGGER w1tr INSTEAD OF UPDATE ON w1 BEGIN
      UPDATE o1 SET y=new.y, z=new.z WHERE w=new.w AND x=new.x;
    END;

    DELETE FROM log;
    WITH data(k, v) AS (
      VALUES(3, 'thirteen'), (3, 'fourteen'), (4, 'fifteen'), (4, 'sixteen')
    )
    UPDATE w1 SET z=v FROM data WHERE (1+w*2+x)=k;
  


    SELECT * FROM w1;
    SELECT * FROM log;
  
