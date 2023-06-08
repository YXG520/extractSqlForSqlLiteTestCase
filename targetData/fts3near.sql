SELECT docid FROM t1 WHERE content MATCH 'one NEAR/0 three'
SELECT docid FROM t1 WHERE content MATCH 'one NEAR/1 two'
SELECT docid FROM t1 WHERE content MATCH 'one NEAR/1 three'
SELECT docid FROM t1 WHERE content MATCH 'three NEAR/1 one'
SELECT docid FROM t1 WHERE content MATCH '"one two" NEAR/1 five'
SELECT docid FROM t1 WHERE content MATCH '"one two" NEAR/2 five'
SELECT docid FROM t1 WHERE content MATCH 'one NEAR four'
SELECT docid FROM t1 WHERE content MATCH 'four NEAR three'
SELECT docid FROM t1 WHERE content MATCH '"four five" NEAR/0 three'
SELECT docid FROM t1 WHERE content MATCH '"four five" NEAR/2 one'
SELECT docid FROM t1 WHERE content MATCH '"four five" NEAR/1 one'
SELECT docid FROM t1 WHERE content MATCH 'five NEAR/1 "two three"'
SELECT docid FROM t1 WHERE content MATCH 'one NEAR five'
SELECT docid FROM t1 WHERE content MATCH 'four NEAR four'
SELECT docid FROM t1 WHERE content MATCH 'one NEAR two NEAR one'
SELECT docid FROM t1 WHERE content MATCH '"one three" NEAR/0 "four five"'
  
SELECT docid FROM t1 WHERE content MATCH '"four five" NEAR/0 "one three"'
  
SELECT offsets(t1) FROM t1 WHERE content MATCH 'A NEAR/0 B'
  
SELECT offsets(t1) FROM t1 WHERE content MATCH 'B NEAR/0 A'
  
SELECT offsets(t1) FROM t1 WHERE content MATCH '"C D" NEAR/0 A'
  
SELECT offsets(t1) FROM t1 WHERE content MATCH 'A NEAR/0 "C D"'
  
SELECT offsets(t1) FROM t1 WHERE content MATCH 'A NEAR A'
  
INSERT INTO t1 VALUES('A A A');
    SELECT offsets(t1) FROM t1 WHERE content MATCH 'A NEAR/2 A';
  
DELETE FROM t1;
    INSERT INTO t1 VALUES('A A A A');
    SELECT offsets(t1) FROM t1 WHERE content MATCH 'A NEAR A NEAR A';
  
SELECT offsets(t1) FROM t1 WHERE content MATCH 'three NEAR/1 one'
SELECT offsets(t1) FROM t1 WHERE content MATCH 'one NEAR/1 three'
SELECT offsets(t1) FROM t1 WHERE content MATCH 'three NEAR/1 two'
SELECT offsets(t1) FROM t1 WHERE content MATCH 'three NEAR/2 two'
SELECT offsets(t1) FROM t1 WHERE content MATCH 'two NEAR/2 three'
SELECT offsets(t1) FROM t1 WHERE content MATCH 'three NEAR/0 "two four"'
  
SELECT offsets(t1) FROM t1 WHERE content MATCH '"two four" NEAR/0 three'
SELECT snippet(t1) FROM t1 WHERE content MATCH 'specification NEAR supports'
  
SELECT docid FROM t1 WHERE content MATCH 'specification attach'
  
SELECT docid FROM t1 WHERE content MATCH 'specification NEAR attach'
  
SELECT docid FROM t1 WHERE content MATCH 'specification NEAR/18 attach'
  
SELECT docid FROM t1 WHERE content MATCH 'specification NEAR/19 attach'
  
SELECT docid FROM t1 WHERE content MATCH 'specification NEAR/000018 attach'
  
SELECT docid FROM t1 WHERE content MATCH 'specification NEAR/000019 attach'
  
SELECT docid FROM t1 WHERE content MATCH 'abbrev zygosis'
  
SELECT docid FROM t1 WHERE content MATCH 'abbrev NEAR zygosis'
  
SELECT docid FROM t1 WHERE content MATCH 'abbrev NEAR/100 zygosis'
  
SELECT docid FROM t1 WHERE content MATCH 'abbrev NEAR/1000 zygosis'
  
SELECT docid FROM t1 WHERE content MATCH 'abbrev NEAR/10000 zygosis'
  
CREATE VIRTUAL TABLE x USING fts4(y,z);
  INSERT INTO x VALUES('aaa bbb ccc ddd', 'bbb ddd aaa ccc');
  SELECT * FROM x where y MATCH 'bbb NEAR/6 aaa';

CREATE VIRTUAL TABLE t2 USING fts4(a, b);
  INSERT INTO t2 VALUES('A B C', 'A D E');
  SELECT * FROM t2 where t2 MATCH 'a:A NEAR E'

