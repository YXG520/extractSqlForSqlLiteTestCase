

    CREATE TABLE t2(a);
    INSERT INTO t2 VALUES('abc');
    INSERT INTO t2 VALUES('ABC');
    SELECT a AS x FROM t2 WHERE x='abc';
  


    SELECT a AS x FROM t2 WHERE x='abc' COLLATE nocase;
  


    SELECT a AS x FROM t2 WHERE (x COLLATE nocase)='abc';
  


    SELECT a COLLATE nocase AS x FROM t2 WHERE x='abc';
  


    SELECT a COLLATE nocase AS x FROM t2 WHERE (x COLLATE binary)='abc';
  


    SELECT a COLLATE nocase AS x FROM t2 WHERE x='abc' COLLATE binary;
  


    SELECT * FROM t2 WHERE (a COLLATE nocase)='abc' COLLATE binary;
  


    SELECT a COLLATE nocase AS x FROM t2 WHERE 'abc'=x COLLATE binary;
  
