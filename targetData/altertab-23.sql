

  CREATE TABLE gigo(a text);
  CREATE TABLE idx(x text COLLATE compare64);
  CREATE VIEW v1 AS SELECT * FROM idx WHERE x='abc';



  alter table gigo rename to ggiiggoo;
  alter table idx rename to idx2;



  SELECT sql FROM sqlite_master;



  ALTER TABLE idx2 RENAME x TO y;
  SELECT sql FROM sqlite_master;

