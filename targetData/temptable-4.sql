

    CREATE TEMP TABLE t2(x,y);
    INSERT INTO t2 VALUES(10,20);
    SELECT * FROM t2;
  


    CREATE TABLE t2(x,y,z);
    INSERT INTO t2 VALUES(9,8,7);
    SELECT * FROM t2;
  


    SELECT * FROM t2;
  


    SELECT * FROM temp.t2;
  


    SELECT * FROM main.t2;
  

#    SELECT name FROM main.sqlite_master WHERE type='table';
#  


    SELECT name FROM main.sqlite_master WHERE type='table';
  


    SELECT * FROM main.t2;
  


    SELECT * FROM t2;
  


    DROP TABLE t2;     -- should drop TEMP
    SELECT * FROM t2;  -- data should be from MAIN
  


    SELECT * FROM t2;
  


    DROP TABLE t2;
    SELECT * FROM t2;
  


    CREATE TEMP TABLE t2(x unique,y);
    INSERT INTO t2 VALUES(1,2);
    SELECT * FROM t2;
  


    CREATE TABLE t2(x unique, y);
    INSERT INTO t2 VALUES(3,4);
    SELECT * FROM t2;
  


    SELECT * FROM t2;
  


#     SELECT name FROM sqlite_master WHERE type='table'
#   


    SELECT name FROM sqlite_master WHERE type='table'
  


    SELECT * FROM t2;
  


    SELECT * FROM t2;
  


    DROP TABLE t2;     -- drops TEMP.T2
    SELECT * FROM t2;  -- uses MAIN.T2
  


    SELECT * FROM t2;
  


    SELECT * FROM t2;
  
