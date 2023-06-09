
SELECT name FROM sqlite_master LIMIT 1

    CREATE TABLE test(a integer, primary key(a));
  


    CREATE TABLE test(a integer, primary key(a));
  


    CREATE TABLE test2(a text primary key, b text, primary key(a,b));
  


    INSERT INTO test VALUES(1);
    SELECT rowid, a FROM test;
  


    INSERT INTO test VALUES(5);
    SELECT rowid, a FROM test;
  


    INSERT INTO test VALUES(NULL);
    SELECT rowid, a FROM test;
  
