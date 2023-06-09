

  CREATE TABLE obj(x);
  INSERT INTO obj VALUES('{"a":1,"b":2


  UPDATE obj SET x = json_insert(x, '$.c', 3);
  SELECT * FROM obj;



  SELECT json_extract(x, '$.b') FROM obj;
  SELECT json_extract(x, '$."b"') FROM obj;



  UPDATE obj SET x = json_set(x, '$."b"', 555);
  SELECT json_extract(x, '$.b') FROM obj;
  SELECT json_extract(x, '$."b"') FROM obj;



  UPDATE obj SET x = json_set(x, '$."d"', 4);
  SELECT json_extract(x, '$."d"') FROM obj;

