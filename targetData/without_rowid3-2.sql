
C

INSERT INTO node SELECT parent, 3 FROM leaf



PRAGMA foreign_keys


    CREATE TABLE t1(a, b REFERENCES nosuchtable);
    DROP TABLE t1;
  


    CREATE TABLE t1(a PRIMARY KEY, b) WITHOUT rowid;
    INSERT INTO t1 VALUES('a', 1);
    CREATE TABLE t2(x REFERENCES t1);
    INSERT INTO t2 VALUES('a');
  

 DROP TABLE t1 


    DELETE FROM t2;
    DROP TABLE t1;
  

 INSERT INTO t2 VALUES('x') 


    CREATE TABLE t1(x PRIMARY KEY) WITHOUT rowid;
    INSERT INTO t1 VALUES('x');
  
 INSERT INTO t2 VALUES('x') 

 DROP TABLE t1 


    DROP TABLE t2;
    DROP TABLE t1;
  


    CREATE TABLE pp(x, y, PRIMARY KEY(x, y)) WITHOUT ROWID;
    CREATE TABLE cc(a, b, FOREIGN KEY(a, b) REFERENCES pp(x, z));
  
 INSERT INTO cc VALUES(1, 2) 

 DROP TABLE cc 


    CREATE TABLE cc(a, b, 
      FOREIGN KEY(a, b) REFERENCES pp DEFERRABLE INITIALLY DEFERRED
    );
  

    INSERT INTO pp VALUES('a', 'b');
    INSERT INTO cc VALUES('a', 'b');
    BEGIN;
      DROP TABLE pp;
      CREATE TABLE pp(a, b, c, PRIMARY KEY(b, c)) WITHOUT rowid;
      INSERT INTO pp VALUES(1, 'a', 'b');
    COMMIT;
  

 
    BEGIN;
      DROP TABLE cc;
      DROP TABLE pp;
    COMMIT;
  


    CREATE TABLE b1(a, b);
    CREATE TABLE b2(a, b REFERENCES b1);
    DROP TABLE b1;
  


    CREATE TABLE b3(a, b REFERENCES b2 DEFERRABLE INITIALLY DEFERRED);
    DROP TABLE b2;
  


    CREATE TABLE t1(x REFERENCES v); 
    CREATE VIEW v AS SELECT * FROM t1;
  


    DROP VIEW v;
  

 CREATE VIRTUAL TABLE v USING echo(t1) 


      DROP TABLE v;
    
zSql

  set ::sqlite_search_count 0
  set ::sqlite_found_count 0
  set res [uplevel [list execsql $zSql]]
  concat [expr $::sqlite_found_count + $::sqlite_search_count] $res

