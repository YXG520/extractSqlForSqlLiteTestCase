

  PRAGMA foreign_keys(1);
  CREATE TABLE Parent(id INTEGER PRIMARY KEY);
  CREATE TABLE Child(id INTEGER PRIMARY KEY, parent_id INTEGER REFERENCES Parent(id));



  INSERT INTO child(parent_id) VALUES(123) RETURNING id;

