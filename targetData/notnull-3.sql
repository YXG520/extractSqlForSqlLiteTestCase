

    CREATE INDEX t1a ON t1(a);
    CREATE INDEX t1b ON t1(b);
    CREATE INDEX t1c ON t1(c);
    CREATE INDEX t1d ON t1(d);
    CREATE INDEX t1e ON t1(e);
    CREATE INDEX t1abc ON t1(a,b,c);
  


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
  
