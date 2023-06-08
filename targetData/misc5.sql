DROP TABLE t1
CREATE TABLE t1
INSERT INTO t1 VALUES
sep
sep
);
);
create table t2(x unique);
      insert into t2 values(1);
      insert or ignore into t2 select x*2 from t2;
      insert or ignore into t2 select x*4 from t2;
      insert or ignore into t2 select x*16 from t2;
      insert or ignore into t2 select x*256 from t2;
      insert or ignore into t2 select x*65536 from t2;
      insert or ignore into t2 select x*2147483648 from t2;
      insert or ignore into t2 select x-1 from t2;
      insert or ignore into t2 select x+1 from t2;
      insert or ignore into t2 select -x from t2;
      select count(*) from t2;
    
BEGIN;
      create table t2(x unique);
      create table t2_temp(x);
      insert into t2_temp values(1);
      insert into t2_temp select x*2 from t2_temp;
      insert into t2_temp select x*4 from t2_temp;
      insert into t2_temp select x*16 from t2_temp;
      insert into t2_temp select x*256 from t2_temp;
      insert into t2_temp select x*65536 from t2_temp;
      insert into t2_temp select x*2147483648 from t2_temp;
      insert into t2_temp select x-1 from t2_temp;
      insert into t2_temp select x+1 from t2_temp;
      insert into t2_temp select -x from t2_temp;
      INSERT INTO t2 SELECT DISTINCT(x) FROM t2_temp;
      DROP TABLE t2_temp;
      COMMIT;
      select count(*) from t2;
    
select x from t2 order by x;
  
CREATE TABLE songs(songid, artist, timesplayed);
      INSERT INTO songs VALUES(1,'one',1);
      INSERT INTO songs VALUES(2,'one',2);
      INSERT INTO songs VALUES(3,'two',3);
      INSERT INTO songs VALUES(4,'three',5);
      INSERT INTO songs VALUES(5,'one',7);
      INSERT INTO songs VALUES(6,'two',11);
      SELECT DISTINCT artist 
      FROM (    
       SELECT DISTINCT artist    
       FROM songs      
       WHERE songid IN (    
        SELECT songid    
        FROM songs    
        WHERE LOWER(artist) = (    
          -- This sub-query is indeterminate. Because there is no ORDER BY,
          -- it may return 'one', 'two' or 'three'. Because of this, the
	  -- outermost parent query may correctly return any of 'one', 'two' 
          -- or 'three' as well.
          SELECT DISTINCT LOWER(artist)    
          FROM (      
            -- This sub-query returns the table:
            --
            --     two      14
            --     one      10
            --     three    5
            --
            SELECT DISTINCT artist,sum(timesplayed) AS total      
            FROM songs      
            GROUP BY LOWER(artist)      
            ORDER BY total DESC      
            LIMIT 10    
          )    
          WHERE artist <> '' 
        )  
       )       
      )  
      ORDER BY LOWER(artist) ASC;
    
CREATE TABLE t1(a,b,c);
    
SELECT .1 
SELECT 2. 
SELECT 3.e0 
SELECT .4e+1
SELECT * FROM sqlite_master 
      UNION ALL 
      SELECT * FROM sqlite_master
      LIMIT (SELECT count(*) FROM blah);
    
CREATE TABLE logs(msg TEXT, timestamp INTEGER, dbtime TEXT);
    
SELECT * FROM logs WHERE logs.oid >= (SELECT head FROM logs_base) 
      UNION ALL 
      SELECT * FROM logs 
      LIMIT (SELECT lmt FROM logs_base) ;
    
CREATE TABLE t1(x)
CREATE TABLE t1(x UNIQUE);
    PRAGMA writable_schema=ON;
    UPDATE sqlite_master SET sql='CREATE table t(o CHECK(((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((;VALUES(o)';
    BEGIN;
    CREATE TABLE t2(y);
    ROLLBACK;
    DROP TABLE IF EXISTS D;
  
SELECT name, type FROM sqlite_master WHERE name IS NULL
      UNION
      SELECT type, name FROM sqlite_master WHERE type IS NULL
      ORDER BY 1, 2, 1, 2, 1, 2
    
SELECT name, type FROM sqlite_master WHERE name IS NULL
      UNION
      SELECT type, name FROM sqlite_master WHERE type IS NULL
      ORDER BY 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2
    
SELECT 123abc
  
SELECT 1*123.4e5ghi;
  
