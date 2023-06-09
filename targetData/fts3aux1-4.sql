

  CREATE VIRTUAL TABLE x1 USING fts4(x);
  CREATE VIRTUAL TABLE terms USING fts4aux(x1);
  CREATE TABLE x2(y);
  CREATE TABLE x3(y);
  CREATE INDEX i1 ON x3(y);

  INSERT INTO x1 VALUES('a b c d e');
  INSERT INTO x1 VALUES('f g h i j');
  INSERT INTO x1 VALUES('k k l l a');

  INSERT INTO x2 SELECT term FROM terms WHERE col = '*';
  INSERT INTO x3 SELECT term FROM terms WHERE col = '*';

