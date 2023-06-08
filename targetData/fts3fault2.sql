CREATE VIRTUAL TABLE t1 USING fts4(x);
    INSERT INTO t1 VALUES('a b c');
    INSERT INTO t1 VALUES('c d e');
    CREATE VIRTUAL TABLE terms USING fts4aux(t1);
  
CREATE VIRTUAL TABLE tx USING fts4(a, b);
    INSERT INTO tx VALUES('a b c', 'x y z');
    CREATE VIRTUAL TABLE terms2 USING fts4aux(tx);
  
CREATE VIRTUAL TABLE tt USING fts4(content="xx yy");
  
CREATE VIRTUAL TABLE tt USING fts4(compress=zip, uncompress=unzip);
  
CREATE VIRTUAL TABLE ft USING fts4(a, b);
    INSERT INTO ft VALUES('U U T C O', 'F N D E S');
    INSERT INTO ft VALUES('P H X G B', 'I D M R U');
    INSERT INTO ft VALUES('P P X D M', 'Y V N T C');
    INSERT INTO ft VALUES('Z L Q O W', 'D F U N Q');
    INSERT INTO ft VALUES('A J D U P', 'C H M Q E');
    INSERT INTO ft VALUES('P S A O H', 'S Z C W D');
    INSERT INTO ft VALUES('T B N L W', 'C A K T I');
    INSERT INTO ft VALUES('K E Z L O', 'L L Y C E');
    INSERT INTO ft VALUES('C R E S V', 'Q V F W P');
    INSERT INTO ft VALUES('S K H G W', 'R W Q F G');
  
INSERT INTO ft(ft) VALUES('rebuild') 
CREATE VIRTUAL TABLE ft USING fts4(a, tokenize=unicode61);
    
INSERT INTO ft VALUES('the quick brown fox'); 
INSERT INTO ft VALUES(
       'theunusuallylongtokenthatjustdragsonandonandonandthendragsonsomemoreeof'
      );
    
SELECT docid FROM ft WHERE ft MATCH 'th*' 
CREATE VIRTUAL TABLE t6 USING fts4(x,order=DESC);
    INSERT INTO t6(docid, x) VALUES(-1,'a b');
    INSERT INTO t6(docid, x) VALUES(1, 'b');
  
SELECT docid FROM t6 WHERE t6 MATCH '"a* b"' 
CREATE VIRTUAL TABLE t7 USING fts4(x,prefix=2);
  INSERT INTO t7 VALUES('the quick brown fox');
  INSERT INTO t7 VALUES('jumped over the');
  INSERT INTO t7 VALUES('lazy dog');

SELECT docid FROM t7 WHERE t7 MATCH 't*' 
CREATE VIRTUAL TABLE t8 USING fts3;
  INSERT INTO t8 VALUES('the quick brown fox');
  INSERT INTO t8 VALUES('jumped over the');
  INSERT INTO t8 VALUES('lazy dog');
  INSERT INTO t8(t8) VALUES('automerge=8');
  SELECT name FROM sqlite_master WHERE name LIKE 't8%';

INSERT INTO t8 VALUES('one two three') 
ALTER TABLE t8 RENAME TO t8ii 
PRAGMA page_size = 512;
  CREATE VIRTUAL TABLE t9 USING fts3;
  WITH s(i) AS (
    SELECT 1 UNION ALL SELECT i+1 FROM s WHERE i<50
  )
  INSERT INTO t9 SELECT 'one two three' FROM s;

SELECT count(*) FROM t9 WHERE t9 MATCH '"one two three"' 
