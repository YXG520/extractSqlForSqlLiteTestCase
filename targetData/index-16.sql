

    CREATE TABLE t7(c UNIQUE PRIMARY KEY);
    SELECT count(*) FROM sqlite_master WHERE tbl_name = 't7' AND type = 'index';
  


    DROP TABLE t7;
    CREATE TABLE t7(c UNIQUE PRIMARY KEY);
    SELECT count(*) FROM sqlite_master WHERE tbl_name = 't7' AND type = 'index';
  


    DROP TABLE t7;
    CREATE TABLE t7(c PRIMARY KEY, UNIQUE(c) );
    SELECT count(*) FROM sqlite_master WHERE tbl_name = 't7' AND type = 'index';
  


    DROP TABLE t7;
    CREATE TABLE t7(c, d , UNIQUE(c, d), PRIMARY KEY(c, d) );
    SELECT count(*) FROM sqlite_master WHERE tbl_name = 't7' AND type = 'index';
  


    DROP TABLE t7;
    CREATE TABLE t7(c, d , UNIQUE(c), PRIMARY KEY(c, d) );
    SELECT count(*) FROM sqlite_master WHERE tbl_name = 't7' AND type = 'index';
  
