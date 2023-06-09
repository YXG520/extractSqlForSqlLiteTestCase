

    CREATE TABLE t1(a integer);
    INSERT INTO t1 VALUES(0);
    INSERT INTO t1 VALUES(120);
    INSERT INTO t1 VALUES(-120);
  


    SELECT a FROM t1;
  


    INSERT INTO t1 VALUES(30000);
    INSERT INTO t1 VALUES(-30000);
  


    SELECT a FROM t1;
  


    INSERT INTO t1 VALUES(2100000000);
    INSERT INTO t1 VALUES(-2100000000);
  


    SELECT a FROM t1;
  


    INSERT INTO t1 VALUES(9000000*1000000*1000000);
    INSERT INTO t1 VALUES(-9000000*1000000*1000000);
  


    SELECT a FROM t1;
  

select rootpage from sqlite_master where name = 't1'

select rootpage from sqlite_master where name = 't1'


    CREATE TABLE t2(a float);
    INSERT INTO t2 VALUES(0.0);
    INSERT INTO t2 VALUES(12345.678);
    INSERT INTO t2 VALUES(-12345.678);
  


    SELECT a FROM t2;
  

select rootpage from sqlite_master where name = 't2'

select rootpage from sqlite_master where name = 't2'


    CREATE TABLE t3(a nullvalue);
    INSERT INTO t3 VALUES(NULL);
  


    SELECT a ISNULL FROM t3;
  

select rootpage from sqlite_master where name = 't3'


    CREATE TABLE t4(a string);
    INSERT INTO t4 VALUES('$string10');
    INSERT INTO t4 VALUES('$string500');
    INSERT INTO t4 VALUES('$string500000');
  


    SELECT a FROM t4;
  
UTF-8

select rootpage from sqlite_master where name = 't4'

select rootpage from sqlite_master where name = 't4'


    DROP TABLE t1;
    DROP TABLE t2;
    DROP TABLE t3;
    DROP TABLE t4;
    CREATE TABLE t1(a, b, c);
  

INSERT INTO t1 VALUES(NULL, '$string10', 4000);
INSERT INTO t1 VALUES('$string500', 4000, NULL);
INSERT INTO t1 VALUES(4000, NULL, '$string500000');


    SELECT * FROM t1;
  
