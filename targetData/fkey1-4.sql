

  PRAGMA foreign_keys=ON;
  CREATE TABLE "xx1"("xx2" TEXT PRIMARY KEY, "xx3" TEXT);
  INSERT INTO "xx1"("xx2","xx3") VALUES('abc','def');
  CREATE TABLE "xx4"("xx5" TEXT REFERENCES "xx1" ON DELETE CASCADE);
  INSERT INTO "xx4"("xx5") VALUES('abc');
  INSERT INTO "xx1"("xx2","xx3") VALUES('uvw','xyz');
  SELECT 1, "xx5" FROM "xx4";
  DELETE FROM "xx1";
  SELECT 2, "xx5" FROM "xx4";



  PRAGMA foreign_keys=ON;
  CREATE TABLE """1"("""2" TEXT PRIMARY KEY, """3" TEXT);
  INSERT INTO """1"("""2","""3") VALUES('abc','def');
  CREATE TABLE """4"("""5" TEXT REFERENCES """1" ON DELETE CASCADE);
  INSERT INTO """4"("""5") VALUES('abc');
  INSERT INTO """1"("""2","""3") VALUES('uvw','xyz');
  SELECT 1, """5" FROM """4";
  DELETE FROM """1";
  SELECT 2, """5" FROM """4";



  PRAGMA table_info="""1";

