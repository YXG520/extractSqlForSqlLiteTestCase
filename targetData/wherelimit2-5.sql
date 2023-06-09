

  CREATE TABLE "x y"("a b" PRIMARY KEY, "c d") WITHOUT ROWID;
  CREATE INDEX xycd ON "x y"("c d");

  INSERT INTO "x y" VALUES('a', 'a');
  INSERT INTO "x y" VALUES('b', 'b');
  INSERT INTO "x y" VALUES('c', 'c');
  INSERT INTO "x y" VALUES('d', 'd');
  INSERT INTO "x y" VALUES('e', 'a');
  INSERT INTO "x y" VALUES('f', 'b');
  INSERT INTO "x y" VALUES('g', 'c');
  INSERT INTO "x y" VALUES('h', 'd');



  BEGIN;
    DELETE FROM "x y" WHERE "c d"!='e' ORDER BY "c d" LIMIT 2 OFFSET 2;
    SELECT * FROM "x y" ORDER BY 1;
  ROLLBACK;



  BEGIN;
    UPDATE "x y" SET "c d"='e' WHERE "c d"!='e' ORDER BY "c d" LIMIT 2 OFFSET 2;
    SELECT * FROM "x y" ORDER BY 1;
  ROLLBACK;



  CREATE VIEW "v w" AS SELECT * FROM "x y";
  CREATE TRIGGER tr1 INSTEAD OF DELETE ON "v w" BEGIN
    SELECT log(old."a b", old."c d");
  END;
  CREATE TRIGGER tr2 INSTEAD OF UPDATE ON "v w" BEGIN
    SELECT log(new."a b", new."c d");
  END;


a b

a b
