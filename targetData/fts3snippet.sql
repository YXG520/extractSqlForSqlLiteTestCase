CREATE VIRTUAL TABLE ft USING fts3;
      INSERT INTO ft VALUES('xxx xxx xxx xxx');
    
DROP TABLE IF EXISTS ft;
      CREATE VIRTUAL TABLE ft USING fts3(a, b);
      INSERT INTO ft VALUES($v1, $numbers);
      INSERT INTO ft VALUES($v1, NULL);
    
UPDATE ft_content SET c1b = 'hello world' WHERE c1b = $numbers 
DROP TABLE IF EXISTS ft;
      CREATE VIRTUAL TABLE ft USING fts3;
      INSERT INTO ft VALUES('one two three four five six seven eight nine ten');
    
INSERT INTO ft VALUES(
           'one two three four five '
        || 'six seven eight nine ten '
        || 'eleven twelve thirteen fourteen fifteen '
        || 'sixteen seventeen eighteen nineteen twenty '
        || 'one two three four five '
        || 'six seven eight nine ten '
        || 'eleven twelve thirteen fourteen fifteen '
        || 'sixteen seventeen eighteen nineteen twenty'
      );
    
DROP TABLE IF EXISTS ft;
      CREATE VIRTUAL TABLE ft USING fts3(a, b, c);
      INSERT INTO ft VALUES(
        'one two three four five', 
        'four five six seven eight', 
        'seven eight nine ten eleven'
      );
    
UPDATE ft SET b = NULL 
DROP TABLE IF EXISTS ft;
      CREATE VIRTUAL TABLE ft USING fts3(x);
      INSERT INTO ft VALUES($numbers);
    
BEGIN;
        DROP TABLE IF EXISTS ft;
        CREATE VIRTUAL TABLE ft USING fts3(x);
    
INSERT INTO ft VALUES('one' || $commas || 'two')
DROP TABLE IF EXISTS ft;
      CREATE VIRTUAL TABLE ft USING fts3;
      INSERT INTO ft VALUES($ten);
      INSERT INTO ft VALUES($ten || ' ' || $ten);
    
DROP TABLE IF EXISTS ft;
      CREATE VIRTUAL TABLE ft USING fts3(x, y);
    
INSERT INTO ft(docid, x, y) VALUES($docid, $v1, $v2) 
CREATE VIRTUAL TABLE t2 USING fts4;
  INSERT INTO t2 VALUES('one two three four five');
  INSERT INTO t2 VALUES('two three four five one');
  INSERT INTO t2 VALUES('three four five one two');
  INSERT INTO t2 VALUES('four five one two three');
  INSERT INTO t2 VALUES('five one two three four');

SELECT snippet(t2, '[', ']') FROM t2 WHERE t2 MATCH 'one OR (four AND six)'

SELECT snippet(t2, '[', ']') FROM t2 
  WHERE t2 MATCH 'one OR (four AND six)' 
  ORDER BY docid DESC

INSERT INTO t2 VALUES('six');

SELECT snippet(t2, '[', ']') FROM t2 WHERE t2 MATCH 'one OR (four AND six)'

SELECT snippet(t2, '[', ']') FROM t2 
  WHERE t2 MATCH 'one OR (four AND six)' 
  ORDER BY docid DESC

CREATE VIRTUAL TABLE t3 USING fts4;
  INSERT INTO t3 VALUES('[one two three]');

SELECT snippet(t3) FROM t3 WHERE t3 MATCH 'one';

SELECT snippet(t3) FROM t3 WHERE t3 MATCH 'two';

SELECT snippet(t3) FROM t3 WHERE t3 MATCH 'three';

SELECT snippet(t3) FROM t3 WHERE t3 MATCH 'one OR two OR three';

CREATE VIRTUAL TABLE t4 USING fts4;
  INSERT INTO t4 VALUES('a b c d');
  SELECT snippet(t4, '[', ']', '...', 0, 0) FROM t4 WHERE t4 MATCH 'b';

CREATE VIRTUAL TABLE t5 USING fts3(x);
  INSERT INTO t5 VALUES('a1 a2 a3');
  INSERT INTO t5 VALUES('a4 a5 a6');
  INSERT INTO t5 VALUES('a70 a71 a72');

SELECT snippet(t5, '[', ']') FROM t5 WHERE t5 MATCH 
  'a1 OR a2 OR a3 OR a4 OR a5 OR a6 OR a7 OR a8 OR a9 OR a10 OR ' ||
  'a11 OR a12 OR a13 OR a14 OR a15 OR a16 OR a17 OR a18 OR a19 OR a10 OR ' ||
  'a21 OR a22 OR a23 OR a24 OR a25 OR a26 OR a27 OR a28 OR a29 OR a20 OR ' ||
  'a31 OR a32 OR a33 OR a34 OR a35 OR a36 OR a37 OR a38 OR a39 OR a30 OR ' ||
  'a41 OR a42 OR a43 OR a44 OR a45 OR a46 OR a47 OR a48 OR a49 OR a40 OR ' ||
  'a51 OR a52 OR a53 OR a54 OR a55 OR a56 OR a57 OR a58 OR a59 OR a50 OR ' ||
  'a61 OR a62 OR a63 OR a64 OR a65 OR a66 OR a67 OR a68 OR a69 OR a60 OR ' ||
  'a71 OR a72 OR a73 OR a74 OR a75 OR a76 OR a77 OR a78 OR a79 OR a70'

