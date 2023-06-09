

    DROP TABLE t7;
    CREATE TABLE t7(c, d UNIQUE, UNIQUE(c), PRIMARY KEY(c, d) );
    SELECT name FROM sqlite_master WHERE tbl_name = 't7' AND type = 'index';
  


    DROP INDEX sqlite_autoindex_t7_1;
  


    DROP INDEX IF EXISTS sqlite_autoindex_t7_1;
  


    DROP INDEX IF EXISTS no_such_index;
  
