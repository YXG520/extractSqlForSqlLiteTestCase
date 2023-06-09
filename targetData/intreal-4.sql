

  CREATE TABLE t1(a REAL, b AS ('expr') ); 



  INSERT INTO t1 VALUES( REPLACE(0, '', 'expr') );



  INSERT INTO t1 SELECT REPLACE(4, '', 'expr');



  SELECT typeof(a), a FROM t1;

