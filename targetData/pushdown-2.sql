

  CREATE TABLE u1(a, b, c);
  CREATE TABLE u2(x, y, z);

  INSERT INTO u1 VALUES('a1', 'b1', 'c1');
  INSERT INTO u2 VALUES('a1', 'b1', 'c1');



    SELECT * FROM u1 WHERE f('one')=123 AND 123=(
      SELECT x FROM u2 WHERE x=a AND f('two')
    )
  


    SELECT * FROM u1 WHERE 123=(
      SELECT x FROM u2 WHERE x=a AND f('two')
    ) AND f('three')=123
  
