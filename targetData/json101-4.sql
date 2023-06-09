

  CREATE TABLE j1(x);
  INSERT INTO j1(x)
   VALUES('true'),('false'),('null'),('123'),('-234'),('34.5e+6'),
         ('""'),('"\""'),('"\\"'),('"abcdefghijlmnopqrstuvwxyz"'),
         ('[]'),('{


  SELECT * FROM j1 WHERE NOT json_valid(char(0x20,0x09,0x0a,0x0d)||x);



  SELECT * FROM j1 WHERE NOT json_valid(x||char(0x20,0x09,0x0a,0x0d));



  SELECT json_valid(''), json_valid(char(0x20,0x09,0x0a,0x0d));



  SELECT x FROM j1 WHERE json_remove(x)<>x;



  SELECT x FROM j1 WHERE json_replace(x)<>x;



  SELECT x FROM j1 WHERE json_set(x)<>x;



  SELECT x FROM j1 WHERE json_insert(x)<>x;



  SELECT count(*) FROM j1 WHERE json_type(x) IN ('object','array');
  SELECT x FROM j1
   WHERE json_extract(x,'$')<>x
     AND json_type(x) IN ('object','array');

