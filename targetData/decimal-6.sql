

  CREATE TABLE pow2(x INTEGER PRIMARY KEY, v TEXT);
  WITH RECURSIVE c(x,v) AS (
    VALUES(0,'1')
    UNION ALL
    SELECT x+1, decimal_mul(v,'2') FROM c WHERE x+1<=971
  ) INSERT INTO pow2(x,v) SELECT x, v FROM c;
  WITH RECURSIVE c(x,v) AS (
    VALUES(-1,'0.5')
    UNION ALL
    SELECT x-1, decimal_mul(v,'0.5') FROM c WHERE x-1>=-1075
  ) INSERT INTO pow2(x,v) SELECT x, v FROM c;



  WITH c(n) AS (SELECT ieee754_from_blob(x'0000000000000001'))
SELECT decimal_mul(ieee754_mantissa(c.n),pow2.v)
  FROM pow2, c WHERE pow2.x=ieee754_exponent(c.n);



  WITH c(n) AS (SELECT ieee754_from_blob(x'7fefffffffffffff'))
SELECT decimal_mul(ieee754_mantissa(c.n),pow2.v)
  FROM pow2, c WHERE pow2.x=ieee754_exponent(c.n);



  SELECT ieee754(ieee754_from_blob(x'0000000000000001'));



  SELECT ieee754(ieee754_from_blob(x'7fefffffffffffff'));



  SELECT printf('%.8e',ieee754_from_blob(x'0000000000000001'));



  SELECT printf('%.8e',ieee754_from_blob(x'ffefffffffffffff'));

