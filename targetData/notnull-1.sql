

    CREATE TABLE t1 (
      a NOT NULL,
      b NOT NULL DEFAULT 5,
      c NOT NULL ON CONFLICT REPLACE DEFAULT 6,
      d NOT NULL ON CONFLICT IGNORE DEFAULT 7,
      e NOT NULL ON CONFLICT ABORT DEFAULT 8
    );
    SELECT * FROM t1;
  


    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    SELECT * FROM t1 order by a;
  


    DELETE FROM t1;
    INSERT INTO t1(b,c,d,e) VALUES(2,3,4,5);
    SELECT * FROM t1 order by a;
  


    DELETE FROM t1;
    INSERT OR IGNORE INTO t1(b,c,d,e) VALUES(2,3,4,5);
    SELECT * FROM t1 order by a;
  


    DELETE FROM t1;
    INSERT OR REPLACE INTO t1(b,c,d,e) VALUES(2,3,4,5);
    SELECT * FROM t1 order by a;
  


    DELETE FROM t1;
    INSERT OR ABORT INTO t1(b,c,d,e) VALUES(2,3,4,5);
    SELECT * FROM t1 order by a;
  


    DELETE FROM t1;
    INSERT INTO t1(a,c,d,e) VALUES(1,3,4,5);
    SELECT * FROM t1 order by a;
  


    DELETE FROM t1;
    INSERT OR IGNORE INTO t1(a,c,d,e) VALUES(1,3,4,5);
    SELECT * FROM t1 order by a;
  


    DELETE FROM t1;
    INSERT OR REPLACE INTO t1(a,c,d,e) VALUES(1,3,4,5);
    SELECT * FROM t1 order by a;
  


    DELETE FROM t1;
    INSERT OR ABORT INTO t1(a,c,d,e) VALUES(1,3,4,5);
    SELECT * FROM t1 order by a;
  


    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,null,3,4,5);
    SELECT * FROM t1 order by a;
  


    DELETE FROM t1;
    INSERT OR IGNORE INTO t1(a,b,c,d,e) VALUES(1,null,3,4,5);
    SELECT * FROM t1 order by a;
  


    DELETE FROM t1;
    INSERT OR REPLACE INTO t1(a,b,c,d,e) VALUES(1,null,3,4,5);
    SELECT * FROM t1 order by a;
  


    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,null,4,5);
    SELECT * FROM t1 order by a;
  


    DELETE FROM t1;
    INSERT OR IGNORE INTO t1(a,b,c,d,e) VALUES(1,2,null,4,5);
    SELECT * FROM t1 order by a;
  


    DELETE FROM t1;
    INSERT OR REPLACE INTO t1(a,b,c,d,e) VALUES(1,2,null,4,5);
    SELECT * FROM t1 order by a;
  


    DELETE FROM t1;
    INSERT OR ABORT INTO t1(a,b,c,d,e) VALUES(1,2,null,4,5);
    SELECT * FROM t1 order by a;
  


    DELETE FROM t1;
    INSERT OR ABORT INTO t1(a,b,c,d,e) VALUES(1,2,3,null,5);
    SELECT * FROM t1 order by a;
  


    DELETE FROM t1;
    INSERT OR ABORT INTO t1(a,b,c,e) VALUES(1,2,3,5);
    SELECT * FROM t1 order by a;
  


    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d) VALUES(1,2,3,4);
    SELECT * FROM t1 order by a;
  


    DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,null);
    SELECT * FROM t1 order by a;
  


    DELETE FROM t1;
    INSERT OR REPLACE INTO t1(e,d,c,b,a) VALUES(1,2,3,null,5);
    SELECT * FROM t1 order by a;
  
