

   CREATE TABLE t5(
      a int UNIQUE,
      b float PRIMARY KEY,
      c varchar(10),
      UNIQUE(a,c)
   );
   INSERT INTO t5 VALUES(1,2,3);
   SELECT * FROM t5;
  


    SELECT name FROM sqlite_master WHERE type='index' AND tbl_name='t5';
  


      DROP INDEX '[lindex $::idxlist $i]';
    


    INSERT INTO t5 VALUES('a','b','c');
    SELECT * FROM t5;
  
