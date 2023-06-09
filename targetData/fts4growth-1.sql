
 CREATE VIRTUAL TABLE x1 USING fts3; 

 INSERT INTO x1 VALUES($L) 
 SELECT end_block, length(root) FROM x1_segdir 


  INSERT INTO x1(x1) VALUES('optimize');
  SELECT level, end_block, length(root) FROM x1_segdir;


 INSERT INTO x1 VALUES($L) 
 
    INSERT INTO x1(x1) VALUES('merge=4,4');
    SELECT level, end_block, length(root) FROM x1_segdir;
  


  SELECT length(block) FROM x1_segments;




  SELECT sum(length(block)) FROM x1_segments WHERE blockid IN (224,225,226)

