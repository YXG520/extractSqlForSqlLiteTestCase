

    INSERT INTO t1 VALUES(1, 2, 3);
  


    ALTER TABLE t1 RENAME COLUMN b TO d;
  


    SELECT * FROM t1;
  


    SELECT sql FROM sqlite_master WHERE tbl_name='t1' AND sql!=''
  
