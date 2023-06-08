CREATE TABLE blobs(k, v BLOB);
    INSERT INTO blobs VALUES(1, zeroblob($::bytes));
  
CREATE TABLE blobs(k, v BLOB);
    INSERT INTO blobs VALUES(1, $::data);
  
CREATE TABLE blobs(k, v BLOB);
    INSERT INTO blobs VALUES(1, $::data);
  
CREATE TABLE blobs(k, v BLOB);
  INSERT INTO blobs VALUES(1, $::data);

CREATE TABLE blobs(k, v BLOB);
  INSERT INTO blobs VALUES(1, zeroblob(length(CAST($::data AS BLOB))));

CREATE TABLE blobs(k, v BLOB);
  INSERT INTO blobs VALUES(1, $::data || $::data || $::data);

PRAGMA auto_vacuum = 1;
  CREATE TABLE blobs(k INTEGER PRIMARY KEY, v BLOB);
  INSERT INTO blobs VALUES(1, zeroblob(500 * 1020));

PRAGMA auto_vacuum = 1;
  CREATE TABLE blobs(k INTEGER PRIMARY KEY, v BLOB);
  INSERT INTO blobs VALUES(1, zeroblob(500 * 1020));

