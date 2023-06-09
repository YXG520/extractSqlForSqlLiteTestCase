

#       PRAGMA journal_mode = WAL;
#       ATTACH 'test2.db' AS aux;
#       CREATE TABLE t1(a PRIMARY KEY, b);
#       CREATE TABLE aux.t2(a PRIMARY KEY, b);
#       BEGIN;
#         INSERT INTO t1 VALUES(1, 2);
#         INSERT INTO t2 VALUES(1, 2);
#       COMMIT;
#     

 
#       ATTACH 'test2.db' AS aux;
#       SELECT * FROM t1 EXCEPT SELECT * FROM t2;
#     

 PRAGMA main.integrity_check 
ok

 PRAGMA aux.integrity_check  
ok
