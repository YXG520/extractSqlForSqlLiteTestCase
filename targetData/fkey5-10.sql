

  CREATE TABLE p30 (id INTEGER PRIMARY KEY);
  CREATE TABLE IF NOT EXISTS c30 (
      line INTEGER, 
      master REFERENCES p30(id), 
      PRIMARY KEY(master)
  ) WITHOUT ROWID;

  INSERT INTO p30 (id) VALUES (1);
  INSERT INTO c30 (master, line)  VALUES (1, 999);



  PRAGMA foreign_key_check;



  INSERT INTO c30 VALUES(45, 45);
  PRAGMA foreign_key_check;

