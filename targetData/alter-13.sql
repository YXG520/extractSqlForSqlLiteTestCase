

    CREATE TABLE /* hi */ t3102a(x);
    CREATE TABLE t3102b -- comment
    (y);
    CREATE INDEX t3102c ON t3102a(x);
    SELECT name FROM sqlite_master WHERE name GLOB 't3102*' ORDER BY 1;
  


    ALTER TABLE t3102a RENAME TO t3102a_rename;
    SELECT name FROM sqlite_master WHERE name GLOB 't3102*' ORDER BY 1;
  


    ALTER TABLE t3102b RENAME TO t3102b_rename;
    SELECT name FROM sqlite_master WHERE name GLOB 't3102*' ORDER BY 1;
  
