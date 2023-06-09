

  CREATE VIRTUAL TABLE t1 USING fts4(a, b, languageid=lang_id);



  SELECT sql FROM sqlite_master WHERE name = 't1_content';


SELECT docid FROM t1


SELECT lang_id FROM t1


INSERT INTO t1(a, b) VALUES('aaa', 'bbb')

SELECT lang_id FROM t1 
0

INSERT INTO t1(a, b, lang_id) VALUES('aaa', 'bbb', 4)

SELECT lang_id FROM t1 
0 4

INSERT INTO t1(a, b, lang_id) VALUES('aaa', 'bbb', 'xyz')

SELECT lang_id FROM t1
0 4 0


  CREATE VIRTUAL TABLE t2 USING fts4;
  INSERT INTO t2 VALUES('abc');


 SELECT rowid FROM t2 WHERE content MATCH 'abc' 


  DROP TABLE t1;
  CREATE VIRTUAL TABLE t1 USING fts4(languageid=lang_id);
  INSERT INTO t1(content)          VALUES('a b c');
  INSERT INTO t1(content, lang_id) VALUES('a b c', 1);



  SELECT rowid FROM t1 WHERE t1 MATCH 'b';



  SELECT rowid FROM t1 WHERE t1 MATCH 'b' AND lang_id = 0;



  SELECT rowid FROM t1 WHERE t1 MATCH 'b' AND lang_id = 1;



  INSERT INTO t1(content, lang_id) VALUES('123', -1);



  DROP TABLE t1;
  CREATE VIRTUAL TABLE t1 USING fts4(languageid=lang_id);
  INSERT INTO t1(content, lang_id) VALUES('A', 13);
  INSERT INTO t1(content, lang_id) VALUES('B', 13);
  INSERT INTO t1(content, lang_id) VALUES('C', 13);
  INSERT INTO t1(content, lang_id) VALUES('D', 13);
  INSERT INTO t1(content, lang_id) VALUES('E', 13);
  INSERT INTO t1(content, lang_id) VALUES('F', 13);
  INSERT INTO t1(content, lang_id) VALUES('G', 13);
  INSERT INTO t1(content, lang_id) VALUES('H', 13);
  INSERT INTO t1(content, lang_id) VALUES('I', 13);
  INSERT INTO t1(content, lang_id) VALUES('J', 13);
  INSERT INTO t1(content, lang_id) VALUES('K', 13);
  INSERT INTO t1(content, lang_id) VALUES('L', 13);
  INSERT INTO t1(content, lang_id) VALUES('M', 13);
  INSERT INTO t1(content, lang_id) VALUES('N', 13);
  INSERT INTO t1(content, lang_id) VALUES('O', 13);
  INSERT INTO t1(content, lang_id) VALUES('P', 13);
  INSERT INTO t1(content, lang_id) VALUES('Q', 13);
  INSERT INTO t1(content, lang_id) VALUES('R', 13);
  INSERT INTO t1(content, lang_id) VALUES('S', 13);
  SELECT rowid FROM t1 WHERE t1 MATCH 'A';

 CREATE VIRTUAL TABLE t2 USING fts4(x, y, languageid=l) 
 INSERT INTO t2(docid, x, y, l) VALUES($i, $x, $y, $iLangid) 
