

    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(1);
    INSERT INTO t1 VALUES(2);
    INSERT INTO t1 VALUES(3);
    SELECT * FROM t1;
  

INSERT INTO t1 VALUES(4);
SELECT * FROM t1 LIMIT 1

        if {[catch {db eval COMMIT

           set ::ecode [sqlite3_extended_errcode db]
           error $errmsg
        



SELECT * FROM t1

BEGIN; CREATE TABLE xyzzy(abc);
INSERT INTO t1 VALUES(5);
SELECT * FROM t1

        if {[catch {db eval ROLLBACK

           set ::ecode [sqlite3_extended_errcode db]
           error $errmsg
        


SELECT * FROM t1
