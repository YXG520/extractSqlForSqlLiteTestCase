
CREATE TABLE '@abc' ( '#xyz' int, '!pqr' text );

INSERT INTO '@abc' VALUES(5,'hello')

SELECT * FROM '@abc'

SELECT * FROM [@abc]

SELECT * FROM `@abc`


    SELECT '@abc'.'!pqr', '@abc'.'#xyz'+5 FROM '@abc'
  


    SELECT '!pqr', '#xyz'+5 FROM '@abc'
  


    SELECT "!pqr", "#xyz"+5 FROM '@abc'
  


    SELECT [!pqr], `#xyz`+5 FROM '@abc'
  

SELECT '@abc'.'!pqr', '@abc'.'#xyz'+5 FROM '@abc'

UPDATE '@abc' SET '#xyz'=11

SELECT '@abc'.'!pqr', '@abc'.'#xyz'+5 FROM '@abc'

DROP TABLE '@abc'
