CREATE TABLE t0(a);
    CREATE VIRTUAL TABLE t1 USING echo(t0);
    INSERT INTO t1 SELECT 'hello';
    SELECT rowid, * FROM t1;
  
CREATE TABLE t2(a,b,c);
    CREATE VIRTUAL TABLE t3 USING echo(t2);
    CREATE TABLE d1(a,b,c);
    INSERT INTO d1 VALUES(1,2,3);
    INSERT INTO d1 VALUES('a','b','c');
    INSERT INTO d1 VALUES(NULL,'x',123.456);
    INSERT INTO d1 VALUES(x'6869',123456789,-12345);
    INSERT INTO t3(a,b,c) SELECT * FROM d1;
    SELECT rowid, * FROM t3;
  
#     CREATE TABLE t4(a);
#     CREATE VIRTUAL TABLE t5 USING echo(t4);
#     INSERT INTO t4 VALUES('hello');
#     SELECT rowid, a FROM t5;
#   
#     INSERT INTO t5(rowid, a) VALUES(1, 'goodbye');
#   
#     REPLACE INTO t5(rowid, a) VALUES(1, 'goodbye');
#     SELECT * FROM t5;
#   
