

    SELECT test_auxdata('hello world');
  


    CREATE TABLE t4(a, b);
    INSERT INTO t4 VALUES('abc', 'def');
    INSERT INTO t4 VALUES('ghi', 'jkl');
  


    SELECT test_auxdata('hello world') FROM t4;
  


    SELECT test_auxdata('hello world', 123) FROM t4;
  


    SELECT test_auxdata('hello world', a) FROM t4;
  


    SELECT test_auxdata('hello'||'world', a) FROM t4;
  

SELECT test_auxdata( ? , a ) FROM t4;

    lappend res [sqlite3_column_text $STMT 0]
  


  SELECT test_auxdata('constant') FROM t4;



  SELECT test_auxdata('constant') FROM t4;



  SELECT test_auxdata('constant') FROM t4;



  SELECT test_auxdata($V), $V FROM t4;



  SELECT test_auxdata($V), $V FROM t4;



  SELECT test_auxdata($V), $V FROM t4;

