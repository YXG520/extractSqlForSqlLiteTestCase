
 CREATE VIRTUAL TABLE t1 USING fts4 

INSERT INTO t1 VALUES('a b c d e f g h i j k l');

INSERT INTO t1 VALUES('a b c d e f g h i j k l');

    INSERT INTO t1(t1) VALUES('merge=8,50');
    COMMIT
  
