CREATE TABLE blob(x INTEGER PRIMARY KEY, v BLOB);
  INSERT INTO blob VALUES(1, 'hello world');
  INSERT INTO blob VALUES(2, 'world hello');
  INSERT INTO blob SELECT NULL, v FROM blob;
  INSERT INTO blob SELECT NULL, v FROM blob;
  INSERT INTO blob SELECT NULL, v FROM blob;
  INSERT INTO blob SELECT NULL, v FROM blob;
  INSERT INTO blob SELECT NULL, v FROM blob;
  INSERT INTO blob SELECT NULL, v FROM blob;
  INSERT INTO blob SELECT NULL, v FROM blob;
  INSERT INTO blob SELECT NULL, v FROM blob;
  INSERT INTO blob SELECT NULL, v FROM blob;
  INSERT INTO blob SELECT NULL, v FROM blob;

error [sqlite3_errmsg db]
  
error [sqlite3_errmsg db]
  
