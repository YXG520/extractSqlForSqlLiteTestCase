

      CREATE TABLE t8 AS SELECT b, h, a as i, (SELECT f FROM t7) as j FROM t7;
    

      CREATE TABLE t8 AS SELECT b, h, a as i, f as j FROM t7;
    


    SELECT sql FROM sqlite_master WHERE tbl_name = 't8'
  
