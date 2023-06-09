

  CREATE TABLE "fuzzer [x] rules table"(a, b, c, d);
  INSERT INTO "fuzzer [x] rules table" VALUES(0, NULL, 'abc', 10);
  CREATE VIRTUAL TABLE x USING fuzzer('fuzzer [x] rules table');
  SELECT word, distance FROM x WHERE word MATCH '123' LIMIT 4;



  DELETE FROM "fuzzer [x] rules table";
  INSERT INTO "fuzzer [x] rules table" VALUES(0, 'x', NULL, 20);
  INSERT INTO "fuzzer [x] rules table" VALUES(0, NULL, NULL, 10);
  INSERT INTO "fuzzer [x] rules table" VALUES(0, 'x', 'x', 10);

  DROP TABLE x;
  CREATE VIRTUAL TABLE x USING fuzzer('fuzzer [x] rules table');

  SELECT word, distance FROM x WHERE word MATCH 'xx';



  DROP TABLE IF EXISTS x;
  INSERT INTO "fuzzer [x] rules table" VALUES(0, 'c', 'd', 1001);



  CREATE VIRTUAL TABLE x USING fuzzer('fuzzer [x] rules table');



  DROP TABLE IF EXISTS x;
  DELETE FROM "fuzzer [x] rules table";
  INSERT INTO "fuzzer [x] rules table" VALUES(0, 'd', 'c', 0);



  CREATE VIRTUAL TABLE x USING fuzzer('fuzzer [x] rules table');



  DROP TABLE IF EXISTS x;
  DELETE FROM "fuzzer [x] rules table";
  INSERT INTO "fuzzer [x] rules table" VALUES(0, 'd', 'c', -20);



  CREATE VIRTUAL TABLE x USING fuzzer('fuzzer [x] rules table');



  DROP TABLE IF EXISTS x;
  DELETE FROM "fuzzer [x] rules table";
  INSERT INTO "fuzzer [x] rules table" VALUES(
    0, 'x', '12345678901234567890123456789012345678901234567890', 2
  );
  CREATE VIRTUAL TABLE x USING fuzzer('fuzzer [x] rules table');
  SELECT word FROM x WHERE word MATCH 'x';



  DROP TABLE IF EXISTS x;
  DELETE FROM "fuzzer [x] rules table";
  INSERT INTO "fuzzer [x] rules table" VALUES(
    0, 'x', '123456789012345678901234567890123456789012345678901', 2
  );



  CREATE VIRTUAL TABLE x USING fuzzer('fuzzer [x] rules table');



  DROP TABLE IF EXISTS x;
  DELETE FROM "fuzzer [x] rules table";
  INSERT INTO "fuzzer [x] rules table" VALUES(
    0, '123456789012345678901234567890123456789012345678901', 'x', 2
  );



  CREATE VIRTUAL TABLE x USING fuzzer('fuzzer [x] rules table');



  DROP TABLE IF EXISTS x;
  DELETE FROM "fuzzer [x] rules table";
  INSERT INTO "fuzzer [x] rules table" VALUES(-1, 'x', 'y', 2);



  CREATE VIRTUAL TABLE x USING fuzzer('fuzzer [x] rules table');



  DROP TABLE IF EXISTS x;
  DELETE FROM "fuzzer [x] rules table";
  INSERT INTO "fuzzer [x] rules table" VALUES((1<<32)+100, 'x', 'y', 2);



  CREATE VIRTUAL TABLE x USING fuzzer('fuzzer [x] rules table');

