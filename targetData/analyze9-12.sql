


 INSERT INTO t4 VALUES(X'abcdef', $a, $b) 

SELECT * FROM t4 WHERE x=X'abcdef' AND a = 'abc' AND b = 3;

/t4 USING INDEX t4a/

      SELECT * FROM t4 WHERE x=X'abcdef' AND a = 'abc' COLLATE nocase AND b = 3
    

/t4 USING INDEX t4a/

      SELECT * FROM t4 WHERE x=X'abcdef' AND a COLLATE nocase = 'abc' AND b = 3
    

/t4 USING INDEX t4a/
