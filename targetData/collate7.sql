CREATE TABLE abc(a COLLATE CASELESS, b, c);
  
incr ::caseless_del
incr ::caseless_del
PRAGMA encoding='utf-16';
    CREATE TABLE abc16(a COLLATE CASELESS, b, c);
  
SELECT * FROM abc16 WHERE a < 'abc';
  
SELECT * FROM abc16 WHERE a < 'abc';
  
