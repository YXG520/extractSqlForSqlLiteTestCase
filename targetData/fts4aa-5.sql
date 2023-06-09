


  SELECT quote(matchinfo(t1, 'l')) FROM t1 WHERE t1 MATCH 'X Y';



  DROP TABLE t1;
  CREATE VIRTUAL TABLE t1 USING fts4(a,b,c,d);
  INSERT INTO t1 VALUES('one two','three four','five six','seven eight');



  UPDATE t1_stat SET value=x'01010101' WHERE id=0;
  SELECT quote(matchinfo(t1,'a')) FROM t1 WHERE t1 MATCH 'one two';



  UPDATE t1_stat SET value=x'010101' WHERE id=0;
  SELECT quote(matchinfo(t1,'a')) FROM t1 WHERE t1 MATCH 'one two';



  UPDATE t1_stat SET value=x'01' WHERE id=0;
  SELECT quote(matchinfo(t1,'a')) FROM t1 WHERE t1 MATCH 'one two';



  UPDATE t1_stat SET value=x'' WHERE id=0;
  SELECT quote(matchinfo(t1,'a')) FROM t1 WHERE t1 MATCH 'one two';

