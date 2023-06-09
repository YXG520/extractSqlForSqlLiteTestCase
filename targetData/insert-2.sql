

    CREATE TABLE test2(
      f1 int default -111, 
      f2 real default +4.32,
      f3 int default +222,
      f4 int default 7.89
    )
  
SELECT * from test2

INSERT INTO test2(f1,f3) VALUES(+10,-10)
SELECT * FROM test2

INSERT INTO test2(f2,f4) VALUES(1.23,-3.45)
SELECT * FROM test2 WHERE f1==-111

INSERT INTO test2(f1,f2,f4) VALUES(77,+1.23,3.45)
SELECT * FROM test2 WHERE f1==77


    DROP TABLE test2;
    CREATE TABLE test2(
      f1 int default 111, 
      f2 real default -4.32,
      f3 text default hi,
      f4 text default 'abc-123',
      f5 varchar(10)
    )
  
SELECT * from test2

INSERT INTO test2(f2,f4) VALUES(-2.22,'hi!')
SELECT * FROM test2

INSERT INTO test2(f1,f5) VALUES(1,'xyzzy')
SELECT * FROM test2 ORDER BY f1
