

  CREATE TABLE sqlite1234 (id integer);
  ALTER TABLE sqlite1234 RENAME TO User;
  SELECT name, sql FROM sqlite_master WHERE sql IS NOT NULL;

