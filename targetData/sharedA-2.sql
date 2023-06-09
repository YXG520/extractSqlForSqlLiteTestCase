
 ATTACH 'test.db2' AS two 

    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(1);
    INSERT INTO t1 VALUES(2);
    INSERT INTO t1 VALUES(3);
    CREATE TABLE two.t2(x);
    INSERT INTO t2 SELECT * FROM t1;
  
 SELECT * FROM t1 

CREATE INDEX i1 ON t1(x)

    BEGIN;
      CREATE INDEX i1 ON t1(x);
      INSERT INTO t2 VALUES('value!');
  


}

# Verify that the db2 statement invoked by the callback detected the
# schema change.
#
if {[info exists ::thread_result]==0

