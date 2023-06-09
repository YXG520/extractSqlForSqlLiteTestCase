

  CREATE TABLE t1(a PRIMARY KEY, v) WITHOUT ROWID;
  ANALYZE sqlite_schema;
  INSERT INTO sqlite_stat1 VALUES('t1','t1','1 1');
  INSERT INTO sqlite_stat4 VALUES('t1','t1','1','0','0',X'021b76657273696f6e');
  INSERT INTO sqlite_stat4 VALUES('T1','T1','1','0','0',X'021b76657273696f6e');
  ANALYZE sqlite_schema;



  CREATE TABLE t1(a INT PRIMARY KEY, b INT) WITHOUT ROWID;
  ANALYZE sqlite_schema;
  INSERT INTO sqlite_stat4 VALUES
     ('t1','t1','1','2','2',X'03000103'),
     ('t1','sqlite_autoindex_t1_1','1','2','2',X'03000103');
  ANALYZE sqlite_schema;
  PRAGMA integrity_check;

