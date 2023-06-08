CREATE VIRTUAL TABLE ft1 USING fts3(a, b)

CREATE VIRTUAL TABLE ft2 USING fts3([a], [b]);

CREATE VIRTUAL TABLE ft3 USING fts3('a', "b");

CREATE VIRTUAL TABLE ft4 USING fts3(`a`, 'fred''s column');

CREATE VIRTUAL TABLE ft6 USING fts3(a, b, tokenize porter)

CREATE VIRTUAL TABLE ft7 USING fts4(a, b, notindexed=b)

#  CREATE VIRTUAL TABLE aux.ft7 USING fts3(a, b, c);
#
#  CREATE VIRTUAL TABLE aux.ft7 USING fts3(a, b, c);
#
DROP TABLE ft1;
    DROP TABLE ft2;
    DROP TABLE ft3;
    DROP TABLE ft4;
    DROP TABLE ft6;
    DROP TABLE ft7;
  
CREATE VIRTUAL TABLE ft USING fts3(a, b) 
INSERT INTO ft VALUES($a, $b) 
1 "SELECT count(*) FROM sqlite_master" {5
INSERT INTO ft VALUES($a, $b) 
1 "SELECT count(*) FROM ft" {1023
DELETE FROM ft WHERE docid>=32 
1 "DELETE FROM ft WHERE ft MATCH 'one'"
  2 "DELETE FROM ft WHERE ft MATCH 'three'"
  3 "DELETE FROM ft WHERE ft MATCH 'five'"

SELECT a FROM ft 
CREATE VIRTUAL TABLE ft8 USING fts3(x, tokenize porter) 
