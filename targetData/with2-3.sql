

  WITH i(x, y) AS ( VALUES(1, (SELECT x FROM i)) )
  SELECT * FROM i;



  WITH 
  i(x) AS ( SELECT * FROM j ),
  j(x) AS ( SELECT * FROM k ),
  k(x) AS ( SELECT * FROM i )
  SELECT * FROM i;



  WITH 
  i(x) AS ( SELECT * FROM (SELECT * FROM j) ),
  j(x) AS ( SELECT * FROM (SELECT * FROM i) )
  SELECT * FROM i;



  WITH 
  i(x) AS ( SELECT * FROM (SELECT * FROM j) ),
  j(x) AS ( SELECT * FROM (SELECT * FROM i) )
  SELECT * FROM j;



  WITH 
  i(x) AS ( 
    WITH j(x) AS ( SELECT * FROM i )
    SELECT * FROM j
  )
  SELECT * FROM i;

