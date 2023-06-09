

  CREATE TABLE some_table ( 
    id INTEGER NOT NULL, value VARCHAR(40) NOT NULL, PRIMARY KEY (id)
  );
  INSERT INTO some_table (id, value) VALUES (1, 'v1');


  UPDATE some_table SET value='v2' WHERE id=1 RETURNING id





  DROP TABLE some_table;
  CREATE TABLE some_table ( 
    id INTEGER NOT NULL, value VARCHAR(40) NOT NULL, PRIMARY KEY (id)
  );
  INSERT INTO some_table (id, value) VALUES (1, 'v1');



