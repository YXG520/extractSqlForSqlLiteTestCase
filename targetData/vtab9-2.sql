

#     CREATE TABLE t4(a);
#     CREATE VIRTUAL TABLE t5 USING echo(t4);
#     INSERT INTO t4 VALUES('hello');
#     SELECT rowid, a FROM t5;
#   


#     INSERT INTO t5(rowid, a) VALUES(1, 'goodbye');
#   


#     REPLACE INTO t5(rowid, a) VALUES(1, 'goodbye');
#     SELECT * FROM t5;
#   
