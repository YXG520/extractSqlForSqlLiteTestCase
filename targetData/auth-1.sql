

      return SQLITE_DENY
    
CREATE TABLE t1(a,b,c)




    SELECT x;
  

SELECT name FROM sqlite_master

CREATE TABLE t1(a,b,c)



SELECT name FROM sqlite_master


        return SQLITE_DENY
      
CREATE TEMP TABLE t1(a,b,c)

SELECT name FROM temp.sqlite_master

CREATE TEMP TABLE t1(a,b,c)


SELECT name FROM sqlite_temp_master


      return SQLITE_IGNORE
    
CREATE TABLE t1(a,b,c)

SELECT name FROM sqlite_master

CREATE TABLE t1(a,b,c)

SELECT name FROM sqlite_master


        return SQLITE_IGNORE
      
CREATE TEMP TABLE t1(a,b,c)

SELECT name FROM temp.sqlite_master

CREATE TEMP TABLE t1(a,b,c)

SELECT name FROM sqlite_temp_master

CREATE TEMP TABLE t1(a,b,c)

SELECT name FROM sqlite_temp_master

CREATE TABLE t2(a,b,c)


SELECT name FROM sqlite_master

DROP TABLE t2


SELECT name FROM sqlite_master

DROP TABLE t2


SELECT name FROM sqlite_master

DROP TABLE t1

SELECT name FROM sqlite_temp_master

DROP TABLE t1

SELECT name FROM sqlite_temp_master

INSERT INTO t2 VALUES(1,2,3)

SELECT * FROM t2

INSERT INTO t2 VALUES(1,2,3)

SELECT * FROM t2

INSERT INTO t2 VALUES(1,2,3)

SELECT * FROM t2

SELECT * FROM t2

ATTACH DATABASE 'test.db' AS two
SELECT * FROM two.t2
DETACH DATABASE two

SELECT * FROM t2

SELECT * FROM t2 WHERE b=2

SELECT * FROM t2 WHERE b=2

SELECT * FROM t2 WHERE b IS NULL

SELECT a,c FROM t2 WHERE b IS NULL

UPDATE t2 SET a=11

SELECT * FROM t2

UPDATE t2 SET b=22, c=33

SELECT * FROM t2

UPDATE t2 SET b=22, c=33

SELECT * FROM t2

DELETE FROM t2 WHERE a=11

SELECT * FROM t2

DELETE FROM t2 WHERE a=11

SELECT * FROM t2

INSERT INTO t2 VALUES(11, 2, 33)

SELECT * FROM t2

SELECT * FROM t2

SELECT * FROM t2

INSERT INTO t2 VALUES(7, 8, 9);

SELECT * FROM t2


       return SQLITE_DENY
    
DROP TABLE t2

SELECT name FROM sqlite_master

DROP TABLE t2

SELECT name FROM sqlite_master


         return SQLITE_DENY
      
DROP TABLE t1

SELECT name FROM sqlite_temp_master

DROP TABLE t1

SELECT name FROM sqlite_temp_master


       return SQLITE_IGNORE
    
DROP TABLE t2

SELECT name FROM sqlite_master

DROP TABLE t2

SELECT name FROM sqlite_master


         return SQLITE_IGNORE
      
DROP TABLE t1

SELECT name FROM sqlite_temp_master

DROP TABLE t1

SELECT name FROM temp.sqlite_master

CREATE VIEW v1 AS SELECT a+1,b+1 FROM t2


SELECT name FROM sqlite_master

CREATE VIEW v1 AS SELECT a+1,b+1 FROM t2


SELECT name FROM sqlite_master

CREATE TEMPORARY VIEW v1 AS SELECT a+1,b+1 FROM t2


SELECT name FROM sqlite_temp_master

CREATE TEMPORARY VIEW v1 AS SELECT a+1,b+1 FROM t2


SELECT name FROM temp.sqlite_master


      return SQLITE_DENY
    
CREATE VIEW v1 AS SELECT a+1,b+1 FROM t2

SELECT name FROM sqlite_master


      return SQLITE_IGNORE
    
CREATE VIEW v1 AS SELECT a+1,b+1 FROM t2

SELECT name FROM sqlite_master


        return SQLITE_DENY
      
CREATE TEMPORARY VIEW v1 AS SELECT a+1,b+1 FROM t2

SELECT name FROM sqlite_temp_master


        return SQLITE_IGNORE
      
CREATE TEMPORARY VIEW v1 AS SELECT a+1,b+1 FROM t2

SELECT name FROM sqlite_temp_master


      return SQLITE_DENY
    

    CREATE VIEW v2 AS SELECT a+1,b+1 FROM t2;
    DROP VIEW v2
  

SELECT name FROM sqlite_master

DROP VIEW v2


SELECT name FROM sqlite_master


      return SQLITE_IGNORE
    
DROP VIEW v2

SELECT name FROM sqlite_master

DROP VIEW v2


SELECT name FROM sqlite_master

DROP VIEW v2


SELECT name FROM sqlite_master


        return SQLITE_DENY
      

      CREATE TEMP VIEW v1 AS SELECT a+1,b+1 FROM t1;
      DROP VIEW v1
    

SELECT name FROM temp.sqlite_master

DROP VIEW v1


SELECT name FROM sqlite_temp_master


        return SQLITE_IGNORE
      
DROP VIEW v1

SELECT name FROM sqlite_temp_master

DROP VIEW v1


SELECT name FROM temp.sqlite_master

DROP VIEW v1


SELECT name FROM sqlite_temp_master


    CREATE TRIGGER r2 DELETE on t2 BEGIN
        SELECT NULL;
    END;
  


SELECT name FROM sqlite_master


      return SQLITE_DENY
    

    CREATE TRIGGER r2 DELETE on t2 BEGIN
        SELECT NULL;
    END;
  

SELECT name FROM sqlite_master


    CREATE TRIGGER r2 DELETE on t2 BEGIN
        SELECT NULL;
    END;
  


SELECT name FROM sqlite_master


      return SQLITE_IGNORE
    

    CREATE TRIGGER r2 DELETE on t2 BEGIN
        SELECT NULL;
    END;
  

SELECT name FROM sqlite_master


    CREATE TABLE tx(id);
    CREATE TRIGGER r2 AFTER INSERT ON t2 BEGIN
       INSERT INTO tx VALUES(NEW.rowid);
    END;
  



    SELECT name FROM sqlite_master WHERE type='trigger'
  


    INSERT INTO t2 VALUES(1,2,3);
  


    SELECT * FROM tx;
  

SELECT name FROM sqlite_master


    CREATE TRIGGER r1 DELETE on t1 BEGIN
        SELECT NULL;
    END;
  


SELECT name FROM temp.sqlite_master


      return SQLITE_DENY
    

    CREATE TRIGGER r1 DELETE on t1 BEGIN
        SELECT NULL;
    END;
  

SELECT name FROM sqlite_temp_master


    CREATE TRIGGER r1 DELETE on t1 BEGIN
        SELECT NULL;
    END;
  


SELECT name FROM temp.sqlite_master


      return SQLITE_IGNORE
    

    CREATE TRIGGER r1 DELETE on t1 BEGIN
        SELECT NULL;
    END;
  

SELECT name FROM sqlite_temp_master


    CREATE TRIGGER r1 DELETE on t1 BEGIN
        SELECT NULL;
    END;
  


SELECT name FROM temp.sqlite_master


      return SQLITE_DENY
    
DROP TRIGGER r2

SELECT name FROM sqlite_master

DROP TRIGGER r2


SELECT name FROM sqlite_master


      return SQLITE_IGNORE
    
DROP TRIGGER r2

SELECT name FROM sqlite_master

DROP TRIGGER r2


SELECT name FROM sqlite_master

DROP TRIGGER r2



    DROP TABLE tx;
    DELETE FROM t2 WHERE a=1 AND b=2 AND c=3;
    SELECT name FROM sqlite_master;
  


      return SQLITE_DENY
    
DROP TRIGGER r1

SELECT name FROM temp.sqlite_master

DROP TRIGGER r1


SELECT name FROM sqlite_temp_master


      return SQLITE_IGNORE
    
DROP TRIGGER r1

SELECT name FROM temp.sqlite_master

DROP TRIGGER r1


SELECT name FROM sqlite_temp_master

DROP TRIGGER r1


SELECT name FROM temp.sqlite_master

CREATE INDEX i2 ON t2(a)


SELECT name FROM sqlite_master


      return SQLITE_DENY
    
CREATE INDEX i2 ON t2(a)

SELECT name FROM sqlite_master

CREATE INDEX i2 ON t2(b)


SELECT name FROM sqlite_master


      return SQLITE_IGNORE
    
CREATE INDEX i2 ON t2(b)

SELECT name FROM sqlite_master

CREATE INDEX i2 ON t2(a)


SELECT name FROM sqlite_master

CREATE INDEX i1 ON t1(a)


SELECT name FROM sqlite_temp_master


        return SQLITE_DENY
      
CREATE INDEX i1 ON t1(b)

SELECT name FROM temp.sqlite_master

CREATE INDEX i1 ON t1(b)


SELECT name FROM sqlite_temp_master


        return SQLITE_IGNORE
      
CREATE INDEX i1 ON t1(c)

SELECT name FROM sqlite_temp_master

CREATE INDEX i1 ON t1(a)


SELECT name FROM temp.sqlite_master


      return SQLITE_DENY
    
DROP INDEX i2

SELECT name FROM sqlite_master

DROP INDEX i2


  ATTACH ':memory:' as di205;
  CREATE TABLE di205.t1(x);
  CREATE INDEX di205.t1x ON t1(x);



  DROP INDEX di205.t1x;


  DETACH di205;



SELECT name FROM sqlite_master


      return SQLITE_IGNORE
    
DROP INDEX i2

SELECT name FROM sqlite_master

DROP INDEX i2


SELECT name FROM sqlite_master

DROP INDEX i2


SELECT name FROM sqlite_master


        return SQLITE_DENY
      
DROP INDEX i1

SELECT name FROM sqlite_temp_master

DROP INDEX i1


SELECT name FROM sqlite_temp_master


        return SQLITE_IGNORE
      
DROP INDEX i1

SELECT name FROM temp.sqlite_master

DROP INDEX i1


SELECT name FROM temp.sqlite_master

DROP INDEX i1


SELECT name FROM temp.sqlite_master

PRAGMA full_column_names=on


SELECT a FROM t2

PRAGMA full_column_names=on


SELECT a FROM t2

PRAGMA full_column_names=on

SELECT a FROM t2

PRAGMA full_column_names=OFF


SELECT a FROM t2

BEGIN


BEGIN; INSERT INTO t2 VALUES(44,55,66); COMMIT


SELECT * FROM t2

ROLLBACK


END TRANSACTION


ROLLBACK

SELECT * FROM t2


      ATTACH DATABASE ':memory:' AS test1
    


DETACH test1
ATTACH $::attachfilename AS test1

DETACH test1
ATTACH ':mem' || 'ory:' AS test1

DETACH DATABASE test1

      ATTACH DATABASE ':memory:' AS test1;
    

PRAGMA database_list

DETACH DATABASE test1

      ATTACH DATABASE ':memory:' AS test1;
    

PRAGMA database_list

ATTACH DATABASE ':memory:' AS test1

      DETACH DATABASE test1;
    

PRAGMA database_list

ATTACH DATABASE ':memory:' AS test1

      DETACH DATABASE test1;
    

PRAGMA database_list


        DETACH DATABASE test1;
      

PRAGMA database_list
DETACH DATABASE test1


          ALTER TABLE t1 RENAME TO t1x
        

SELECT name FROM sqlite_temp_master WHERE type='table'



          ALTER TABLE t1x RENAME TO t1
        

SELECT name FROM temp.sqlite_master WHERE type='table'



          ALTER TABLE t1x RENAME TO t1
        

SELECT name FROM sqlite_temp_master WHERE type='table'


      DETACH DATABASE test1;
    
ALTER TABLE t1x RENAME TO t1


    ALTER TABLE t2 RENAME TO t2x
  

SELECT name FROM sqlite_master WHERE type='table'



    ALTER TABLE t2x RENAME TO t2
  

SELECT name FROM sqlite_master WHERE type='table'



    ALTER TABLE t2x RENAME TO t2
  

SELECT name FROM sqlite_master WHERE type='table'

ALTER TABLE t2x RENAME TO t2


    CREATE TABLE t3(a PRIMARY KEY, b, c);
    CREATE INDEX t3_idx1 ON t3(c COLLATE BINARY);
    CREATE INDEX t3_idx2 ON t3(b COLLATE NOCASE);
  


    REINDEX t3_idx1;
  


    REINDEX BINARY;
  

} main {

}


    REINDEX NOCASE;
  


    REINDEX t3;
  

} main {

}


    DROP TABLE t3;
  


      CREATE TEMP TABLE t3(a PRIMARY KEY, b, c);
      CREATE INDEX t3_idx1 ON t3(c COLLATE BINARY);
      CREATE INDEX t3_idx2 ON t3(b COLLATE NOCASE);
    


      REINDEX temp.t3_idx1;
    


      REINDEX BINARY;
    

} temp {

}


      REINDEX NOCASE;
    


      REINDEX temp.t3;
    

} temp {

}


      REINDEX temp.t3;
    


      DROP TABLE t3;
    


      CREATE TABLE t4(a,b,c);
      CREATE INDEX t4i1 ON t4(a);
      CREATE INDEX t4i2 ON t4(b,a,c);
      INSERT INTO t4 VALUES(1,2,3);
      ANALYZE;
    


      SELECT count(*) FROM sqlite_stat1;
    


      ANALYZE;
    


      SELECT count(*) FROM sqlite_stat1;
    

CREATE TABLE t5(x)

      ALTER TABLE t5 ADD COLUMN new_col_1;
    

SELECT sql FROM sqlite_master WHERE name='t5'



    ALTER TABLE t5 DROP COLUMN new_col_1;
  



      ALTER TABLE t5 ADD COLUMN new_col_2;
    

SELECT sql FROM sqlite_master WHERE name='t5'



     ALTER TABLE t5 DROP COLUMN new_col_1;
     SELECT 1 FROM sqlite_schema WHERE name='t5' AND sql LIKE '%new_col_1%';
  



      ALTER TABLE t5 ADD COLUMN new_col_3
    

SELECT sql FROM temp.sqlite_master WHERE type='t5'



    ALTER TABLE t5 DROP COLUMN new_col_1;
  


    SELECT 1 FROM sqlite_schema WHERE name='t5' AND sql LIKE '%new_col_1%';
  

DROP TABLE t5


       DROP TABLE IF EXISTS t1;
       CREATE TABLE t1(a,b);
       INSERT INTO t1 VALUES(1,2),(3,4),(5,6);
    


    WITH
       auth1311(x,y) AS (SELECT a+b, b-a FROM t1)
    SELECT * FROM auth1311 ORDER BY x;
  


    WITH RECURSIVE
       auth1312(x,y) AS (SELECT a+b, b-a FROM t1)
    SELECT x, y FROM auth1312 ORDER BY x;
  


    WITH RECURSIVE
       auth1313(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM auth1313 WHERE x<5)
    SELECT * FROM t1;
  


    WITH RECURSIVE
       auth1314(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM auth1314 WHERE x<5)
    SELECT * FROM t1 LEFT JOIN auth1314;
  
SELECT sql FROM temp.sqlite_master
puts "TEMP: $sql;"
SELECT sql FROM main.sqlite_master
puts "MAIN: $sql;"


      ALTER TABLE t1 RENAME COLUMN b TO bcdefg;
    


    SELECT name FROM pragma_table_info('t1') ORDER BY cid;
  



      ALTER TABLE t1 RENAME COLUMN bcdefg TO b;
    


    SELECT name FROM pragma_table_info('t1') ORDER BY cid;
  



      ALTER TABLE t1 RENAME COLUMN bcdefg TO b;
    


    SELECT name FROM pragma_table_info('t1') ORDER BY cid;
  


SELECT * FROM pragma_table_list WHERE name='xyzzy';
