

    CREATE TABLE c5(
      id INTEGER PRIMARY KEY,
      a TEXT COLLATE binary COLLATE nocase COLLATE rtrim,
      b TEXT COLLATE nocase COLLATE binary,
      c TEXT COLLATE rtrim COLLATE binary COLLATE rtrim COLLATE nocase
    );
    INSERT INTO c5 VALUES(1, 'abc','abc','abc');
    INSERT INTO c5 VALUES(2, 'abc   ','ABC','ABC');
    SELECT id FROM c5 WHERE a='abc' ORDER BY id;
  


    SELECT id FROM c5 WHERE b='abc' ORDER BY id;
  


    SELECT id FROM c5 WHERE c='abc' ORDER BY id;
  
