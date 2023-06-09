

  ATTACH 'test.db2' AS aux;

  CREATE TABLE main.t1(a INTEGER PRIMARY KEY, b TEXT, c BLOB);
  CREATE TEMP TABLE t1(a INTEGER PRIMARY KEY, b TEXT, c BLOB);
  CREATE TABLE aux.t1(a INTEGER PRIMARY KEY, b TEXT, c BLOB);

  CREATE TABLE main.x1(a INTEGER PRIMARY KEY, b TEXT, c BLOB);
  CREATE TEMP TABLE x2(a INTEGER PRIMARY KEY, b TEXT, c BLOB);
  CREATE TABLE aux.x3(a INTEGER PRIMARY KEY, b TEXT, c BLOB);

  INSERT INTO main.t1 VALUES(1, 'main one', X'0101');
  INSERT INTO main.t1 VALUES(2, 'main two', X'0102');
  INSERT INTO main.t1 VALUES(3, 'main three', X'0103');
  INSERT INTO main.t1 VALUES(4, 'main four', X'0104');
  INSERT INTO main.t1 VALUES(5, 'main five', X'0105');

  INSERT INTO main.x1 VALUES(1, 'x main one', X'000101');
  INSERT INTO main.x1 VALUES(2, 'x main two', X'000102');
  INSERT INTO main.x1 VALUES(3, 'x main three', X'000103');
  INSERT INTO main.x1 VALUES(4, 'x main four', X'000104');
  INSERT INTO main.x1 VALUES(5, 'x main five', X'000105');

  INSERT INTO temp.t1 VALUES(1, 'temp one', X'0201');
  INSERT INTO temp.t1 VALUES(2, 'temp two', X'0202');
  INSERT INTO temp.t1 VALUES(3, 'temp three', X'0203');
  INSERT INTO temp.t1 VALUES(4, 'temp four', X'0204');
  INSERT INTO temp.t1 VALUES(5, 'temp five', X'0205');

  INSERT INTO temp.x2 VALUES(1, 'x temp one', X'000201');
  INSERT INTO temp.x2 VALUES(2, 'x temp two', X'000202');
  INSERT INTO temp.x2 VALUES(3, 'x temp three', X'000203');
  INSERT INTO temp.x2 VALUES(4, 'x temp four', X'000204');
  INSERT INTO temp.x2 VALUES(5, 'x temp five', X'000205');

  INSERT INTO aux.t1 VALUES(1, 'aux one', X'0301');
  INSERT INTO aux.t1 VALUES(2, 'aux two', X'0302');
  INSERT INTO aux.t1 VALUES(3, 'aux three', X'0303');
  INSERT INTO aux.t1 VALUES(4, 'aux four', X'0304');
  INSERT INTO aux.t1 VALUES(5, 'aux five', X'0305');

  INSERT INTO aux.x3 VALUES(1, 'x aux one', X'000301');
  INSERT INTO aux.x3 VALUES(2, 'x aux two', X'000302');
  INSERT INTO aux.x3 VALUES(3, 'x aux three', X'000303');
  INSERT INTO aux.x3 VALUES(4, 'x aux four', X'000304');
  INSERT INTO aux.x3 VALUES(5, 'x aux five', X'000305');



















