

  CREATE TABLE c1(x, y);
  CREATE TABLE c2(a, b, c);
  CREATE INDEX c2ab ON c2(a, b);
  CREATE INDEX c2c ON c2(c);

  CREATE TABLE c3(d);



  SELECT * FROM c2 CROSS JOIN c3 WHERE 
    ( (a, b) == (SELECT x, y FROM c1) AND c3.d = c ) OR
    ( c == (SELECT x, y FROM c1) AND c3.d = c )

