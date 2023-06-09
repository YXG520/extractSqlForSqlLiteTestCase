

  CREATE VIRTUAL TABLE t1 USING tcl("vtab_cmd 0");


S

S

S
Q

S
Q


  CREATE TABLE ttt(a, b, c);

  INSERT INTO ttt VALUES(1, 'two',   'three');
  INSERT INTO ttt VALUES(2, 'one',   'two');
  INSERT INTO ttt VALUES(3, 'three', 'one');
  INSERT INTO ttt VALUES(4, 'y',     'one');
  INSERT INTO ttt VALUES(5, 'x',     'two');
  INSERT INTO ttt VALUES(6, 'y',     'three');


 
    SELECT rowid FROM t1 WHERE c LIKE 'o%'
  

 
    SELECT rowid FROM t1 WHERE c LIKE 'o%' OR b='y'
  

 
    SELECT rowid FROM t1 WHERE c = 'three' OR c LIKE 'o%'
  
