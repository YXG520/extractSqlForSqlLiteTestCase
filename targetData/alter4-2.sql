

    CREATE TABLE temp.t1(a, b);
    INSERT INTO t1 VALUES(1,2);
  

    ALTER TABLE t1 ADD c PRIMARY KEY;
  


    ALTER TABLE t1 ADD c UNIQUE
  


    ALTER TABLE t1 ADD b VARCHAR(10)
  


    ALTER TABLE t1 ADD c NOT NULL;
  


    ALTER TABLE t1 ADD c NOT NULL DEFAULT 10;
  


      CREATE TEMPORARY VIEW v1 AS SELECT * FROM t1;
    

      alter table v1 add column d;
    


    alter table t1 add column d DEFAULT CURRENT_TIME;
  


    alter table t1 add column d default (-5+1);
  


    DROP TABLE t1;
  
