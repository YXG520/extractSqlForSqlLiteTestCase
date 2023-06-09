
INSERT INTO t2 VALUES('[string repeat {a } 10000]')

INSERT INTO t2 VALUES('b [string repeat {z } 10000]')


  INSERT INTO t2 VALUES('a b c d e f g z');
  INSERT INTO t2 VALUES('a b c d e f g');


  1 {


    SELECT mit(matchinfo(t2, 'pcxnal')) FROM t2 WHERE t2 MATCH 'a b';
  


    SELECT mit(matchinfo(t2, 'x')) FROM t2 WHERE t2 MATCH 'g z';
  


    SELECT mit(matchinfo(t2, 'x')) FROM t2 WHERE t2 MATCH 'g OR (g z)';
  


    SELECT mit(matchinfo(t2, 'x')) FROM t2 WHERE t2 MATCH 'e "g z"';
  


  CREATE VIRTUAL TABLE t3 USING fts4;
  INSERT INTO t3 VALUES('a b c d e f');
  INSERT INTO t3 VALUES('x b c d e f');
  INSERT INTO t3 VALUES('d e f a b c');
  INSERT INTO t3 VALUES('b c d e f');
  INSERT INTO t3 VALUES('');
  INSERT INTO t3 VALUES('');
  INSERT INTO t3 VALUES('');
  INSERT INTO t3 VALUES('');
  INSERT INTO t3 VALUES('');
  INSERT INTO t3 VALUES('');




  INSERT INTO t3(t3) VALUES('rebuild');



  SELECT rowid, length(offsets(t3)) FROM t3 WHERE t3 MATCH '(a NEAR a)';



  SELECT rowid, length(offsets(t3)) FROM t3 WHERE t3 MATCH '(a NEAR b NEAR a)';



  SELECT rowid, length(offsets(t3)) FROM t3 WHERE t3 MATCH '(a NEAR b)';



  SELECT rowid, length(matchinfo(t3)) FROM t3 WHERE t3 MATCH '(a NEAR a)';



  SELECT rowid, length(matchinfo(t3)) FROM t3 WHERE t3 MATCH '(a NEAR b NEAR a)'



  SELECT rowid, length(matchinfo(t3)) FROM t3 WHERE t3 MATCH '(a NEAR b)';



  SELECT rowid, length(matchinfo(t3)) FROM t3 
  WHERE t3 MATCH '(a NEAR b NEAR a NEAR b NEAR a)'

