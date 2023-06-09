

    CREATE TABLE t1(a, b TEXT, c);
    CREATE INDEX i1 ON t1(a);
    CREATE INDEX i2 ON t1(b);

    INSERT INTO t1 VALUES(1,  'one',   'I');
    INSERT INTO t1 VALUES(2,  'two',   'II');
    INSERT INTO t1 VALUES(3,  'three', 'III');
    INSERT INTO t1 VALUES(4,  'four',  'IV');
    INSERT INTO t1 VALUES(5,  'five',  'V');
    INSERT INTO t1 VALUES(6,  'six',   'VI');
    INSERT INTO t1 VALUES(7,  'seven', 'VII');
    INSERT INTO t1 VALUES(8,  'eight', 'VIII');
    INSERT INTO t1 VALUES(9,  'nine',  'IX');
    INSERT INTO t1 VALUES(10, 'ten',   'X');
  

 SELECT c FROM t1 WHERE a = 1 OR b = 'nine' 

 SELECT c FROM t1 WHERE a > 8 OR b = 'two' 

 SELECT c FROM t1 WHERE a > 8 OR b GLOB 't*' 

 SELECT c FROM t1 WHERE a > 8 OR b GLOB 'f*' 

 SELECT c FROM t1 WHERE a > 8 OR b GLOB 't*' 

 SELECT c FROM t1 WHERE a > 8 OR b GLOB 'f*' 

 SELECT c FROM t1 WHERE a = 1 OR b = 'three' ORDER BY rowid 

 SELECT c FROM t1 WHERE a = 1 OR b = 'three' ORDER BY a 

 SELECT c FROM t1 WHERE a > 1 AND c LIKE 'I%' 

 SELECT c FROM t1 WHERE a >= 9 OR b <= 'eight' 

 
    SELECT c FROM t1 WHERE (a >= 9 AND c != 'X') OR b <= 'eight' 
  

 
    SELECT c FROM t1 WHERE (a >= 4 AND a <= 6) OR b = 'nine' 
  

 
    SELECT c FROM t1 WHERE a IN(1, 2, 3) OR a = 5
  

 
    SELECT c FROM t1 WHERE +a IN(1, 2, 3) OR +a = 5
  


    SELECT c FROM t1
    WHERE a = 2 OR b = 'three' OR a = 4 OR b = 'five' OR a = 6
    ORDER BY rowid
  


    SELECT c FROM t1
    WHERE 
      a = 2 OR b = 'three' OR a = 4 OR b = 'five' OR a = 6 OR
      b = 'seven' OR a = 8 OR b = 'nine' OR a = 10
    ORDER BY rowid
  


    SELECT c FROM t1 WHERE 
      a BETWEEN 2 AND 4 OR b = 'nine'
    ORDER BY rowid
  
