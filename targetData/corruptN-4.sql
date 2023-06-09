

    CREATE TABLE x1(a INTEGER PRIMARY KEY, b UNIQUE, c UNIQUE);
    INSERT INTO x1 VALUES(1, 1, 2);
    INSERT INTO x1 VALUES(2, 2, 3);
    INSERT INTO x1 VALUES(3, 3, 4);
    INSERT INTO x1 VALUES(4, 5, 6);
    PRAGMA writable_schema = 1;

    UPDATE sqlite_schema SET rootpage = (
      SELECT rootpage FROM sqlite_schema WHERE name = 'sqlite_autoindex_x1_2'
    ) WHERE name = 'sqlite_autoindex_x1_1';
  


    PRAGMA writable_schema = 1;
    REPLACE INTO x1 VALUES(5, 2, 3);
  
