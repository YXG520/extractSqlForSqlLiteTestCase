

  SELECT CAST('-' AS NUMERIC);



  SELECT CAST('-0' AS NUMERIC);



  SELECT CAST('+' AS NUMERIC);



  SELECT CAST('/' AS NUMERIC);



  SELECT '' - 2851427734582196970;



  SELECT 0 - 2851427734582196970;



  SELECT '' - 1;



  DROP TABLE IF EXISTS t0;
  CREATE TABLE t0 (c0 TEXT);
  INSERT INTO t0(c0) VALUES ('1.0');
  SELECT CAST(c0 AS NUMERIC) FROM t0;



  SELECT -'.';



  SELECT '.'+0;



  SELECT CAST('.' AS numeric);



  SELECT -CAST('.' AS numeric);



  SELECT CAST('-0.0' AS numeric);



  SELECT CAST('0.0' AS numeric);



  SELECT CAST('+0.0' AS numeric);



  SELECT CAST('-1.0' AS numeric);

 PRAGMA encoding='utf16' 
