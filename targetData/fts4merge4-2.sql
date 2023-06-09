
 CREATE VIRTUAL TABLE t1 USING fts4 

INSERT INTO t1 VALUES('a b c d e f g h i j k l');

 SELECT count(*) FROM t1_segdir; 

 INSERT INTO t1(t1) VALUES('optimize') 


 SELECT count(*) FROM t1_segdir; 

 CREATE VIRTUAL TABLE t2 USING fts4; 

 DELETE FROM t2 
 INSERT INTO t2(t2) VALUES($am) 
 
          BEGIN;
            INSERT INTO t2 VALUES($doc);
            INSERT INTO t2 VALUES($doc);
            INSERT INTO t2 VALUES($doc);
            INSERT INTO t2 VALUES($doc);
            INSERT INTO t2 VALUES($doc);
          COMMIT;
        
 SELECT level, count(*) FROM t2_segdir GROUP BY level 
