set has_codec 1

CREATE TABLE abc(a, b, c);
    SELECT sql FROM sqlite_master;
  
ALTER TABLE abc ADD d INTEGER;
SELECT sql FROM sqlite_master;
  
ALTER TABLE abc ADD e
SELECT sql FROM sqlite_master;
  
CREATE TABLE main.t1(a, b);
    ALTER TABLE t1 ADD c;
    SELECT sql FROM sqlite_master WHERE tbl_name = 't1';
  
ALTER TABLE t1 ADD d CHECK (a>d);
    SELECT sql FROM sqlite_master WHERE tbl_name = 't1';
  
CREATE TABLE t2(a, b, UNIQUE(a, b));
      ALTER TABLE t2 ADD c REFERENCES t1(c)  ;
      SELECT sql FROM sqlite_master WHERE tbl_name = 't2' AND type = 'table';
    
CREATE TABLE t3(a, b, UNIQUE(a, b));
    ALTER TABLE t3 ADD COLUMN c VARCHAR(10, 20);
    SELECT sql FROM sqlite_master WHERE tbl_name = 't3' AND type = 'table';
  
# May not exist if foriegn-keys are omitted at compile time.
    DROP TABLE t2; 
  
DROP TABLE abc; 
    DROP TABLE t1; 
    DROP TABLE t3; 
  
CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(1,2);
  
ALTER TABLE t1 ADD c PRIMARY KEY;
  
ALTER TABLE t1 ADD c UNIQUE
  
ALTER TABLE t1 ADD b VARCHAR(10)
  
ALTER TABLE t1 ADD c NOT NULL;
  
ALTER TABLE t1 ADD c NOT NULL DEFAULT 10;
  
CREATE VIEW v1 AS SELECT * FROM t1;
    
alter table v1 add column d;
    
alter table t1 add column d DEFAULT CURRENT_TIME;
  
DROP TABLE t1;
  
CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(1, 100);
    INSERT INTO t1 VALUES(2, 300);
    SELECT * FROM t1;
  
PRAGMA schema_version = 10;
  
ALTER TABLE t1 ADD c;
    SELECT * FROM t1;
  
PRAGMA schema_version;
    
CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(1, 100);
    INSERT INTO t1 VALUES(2, 300);
    SELECT * FROM t1;
  
PRAGMA schema_version = 20;
  
ALTER TABLE t1 ADD c DEFAULT 'hello world';
    SELECT * FROM t1;
  
PRAGMA schema_version;
    
DROP TABLE t1;
  
CREATE TABLE t1(a, b);
      INSERT INTO t1 VALUES(1, 'one');
      INSERT INTO t1 VALUES(2, 'two');
      ATTACH 'test2.db' AS aux;
      CREATE TABLE aux.t1 AS SELECT * FROM t1;
      PRAGMA aux.schema_version = 30;
      SELECT sql FROM aux.sqlite_master;
    
ALTER TABLE aux.t1 ADD COLUMN c VARCHAR(128);
      SELECT sql FROM aux.sqlite_master;
    
SELECT * FROM aux.t1;
    
PRAGMA aux.schema_version;
      
ALTER TABLE aux.t1 ADD COLUMN d DEFAULT 1000;
      SELECT sql FROM aux.sqlite_master;
    
SELECT * FROM aux.t1;
    
PRAGMA aux.schema_version;
      
SELECT * FROM t1;
    
DROP TABLE aux.t1;
      DROP TABLE t1;
    
CREATE TABLE t1(a, b);
      CREATE TABLE log(trig, a, b);

      CREATE TRIGGER t1_a AFTER INSERT ON t1 BEGIN
        INSERT INTO log VALUES('a', new.a, new.b);
      END;
      CREATE TEMP TRIGGER t1_b AFTER INSERT ON t1 BEGIN
        INSERT INTO log VALUES('b', new.a, new.b);
      END;
  
      INSERT INTO t1 VALUES(1, 2);
      SELECT * FROM log;
    
ALTER TABLE t1 ADD COLUMN c DEFAULT 'c';
      INSERT INTO t1(a, b) VALUES(3, 4);
      SELECT * FROM log;
    
VACUUM;
      
CREATE TABLE abc(a, b, c);
        ALTER TABLE abc ADD d DEFAULT NULL;
      
ALTER TABLE abc ADD e DEFAULT 10;
      
ALTER TABLE abc ADD f DEFAULT NULL;
      
VACUUM;
      
CREATE TABLE t4(c1);
  
, 
SELECT sql FROM sqlite_master WHERE name = 't4';
  
CREATE TABLE t1(a,b);
  INSERT INTO t1 VALUES(1, 2), ('null!',NULL), (3,4);

ALTER TABLE t1 ADD COLUMN c CHECK(a!=1);

ALTER TABLE t1 ADD COLUMN c CHECK(a!=3);

ALTER TABLE t1 ADD COLUMN c CHECK(a!=2);

ALTER TABLE t1 ADD COLUMN d AS (b+1) NOT NULL;

ALTER TABLE t1 ADD COLUMN d AS (b+1) NOT NULL CHECK(a!=1);

ALTER TABLE t1 ADD COLUMN d AS (b+1) NOT NULL CHECK(a!=3);

CREATE TEMP TABLE t0(m,n);
  INSERT INTO t0 VALUES(1, 2), ('null!',NULL), (3,4);
  ATTACH ':memory:' AS aux1;
  CREATE TABLE aux1.t2(x,y);
  INSERT INTO t2 VALUES(1, 2), ('null!',NULL), (3,4);

ALTER TABLE t0 ADD COLUMN xtra1 AS (n+1) NOT NULL CHECK(m!=1);

ALTER TABLE t0 ADD COLUMN xtra1 AS (n+1) NOT NULL CHECK(m!=3);

ALTER TABLE t2 ADD COLUMN xtra1 AS (y+1) NOT NULL CHECK(x!=1);

ALTER TABLE t2 ADD COLUMN xtra1 AS (y+1) NOT NULL CHECK(x!=3);

