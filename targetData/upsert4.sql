1 { CREATE TABLE t1(a INTEGER PRIMARY KEY, b, c UNIQUE) 
INSERT INTO t1 VALUES(1, NULL, 'one');
    INSERT INTO t1 VALUES(2, NULL, 'two');
    INSERT INTO t1 VALUES(3, NULL, 'three');
  
INSERT INTO t1 VALUES(1, NULL, 'xyz') ON CONFLICT DO NOTHING;
    SELECT * FROM t1;
  
INSERT INTO t1 VALUES(4, NULL, 'two') ON CONFLICT DO NOTHING;
    SELECT * FROM t1;
  
INSERT INTO t1 VALUES(4, NULL, 'two') ON CONFLICT (c) DO UPDATE SET b = 1;
    SELECT * FROM t1;
  
INSERT INTO t1 VALUES(2, NULL, 'zero') ON CONFLICT (a) DO UPDATE SET b=2;
    SELECT * FROM t1;
  
INSERT INTO t1 VALUES(2, NULL, 'zero') ON CONFLICT (a) 
      DO UPDATE SET c = 'one';
  
SELECT * FROM t1;
  
INSERT INTO t1 VALUES(2, NULL, 'zero') ON CONFLICT (a) 
      DO UPDATE SET (b, c) = (SELECT 'x', 'y');
    SELECT * FROM t1;
  
INSERT INTO t1 VALUES(1, NULL, NULL) ON CONFLICT (a) 
      DO UPDATE SET (c, a) = ('four', 4);
    SELECT * FROM t1 ORDER BY 1;
  
1 { 
      CREATE TABLE xyz(a INTEGER PRIMARY KEY, b, c, d);
      CREATE UNIQUE INDEX xyz1 ON xyz(d, c, b COLLATE nocase);
  
INSERT INTO xyz VALUES(10, 1, 1, 'one');
  
SELECT * FROM xyz;
  
1 {
    CREATE TABLE abc(a INTEGER PRIMARY KEY, x, y);
    CREATE UNIQUE INDEX abc1 ON abc(('x' || x) COLLATE nocase);
  
INSERT INTO abc VALUES(1, 'one', 'two');
  
SELECT * FROM abc
  
1 {
    CREATE TABLE abc(a INTEGER PRIMARY KEY, x, y);
    CREATE UNIQUE INDEX abc1 ON abc(x) WHERE y>0;
    CREATE UNIQUE INDEX abc2 ON abc(y) WHERE x='xyz' COLLATE nocase;
  
INSERT INTO abc VALUES(1, 'one', 1);
    INSERT INTO abc VALUES(2, 'two', 2);
    INSERT INTO abc VALUES(3, 'xyz', 3);
    INSERT INTO abc VALUES(4, 'XYZ', 4);
  
SELECT * FROM abc
  
CREATE TABLE w1(a INT PRIMARY KEY, x, y);
  CREATE UNIQUE INDEX w1expr ON w1(('x' || x));
  INSERT INTO w1 VALUES(2, 'one', NULL)
    ON CONFLICT (('x' || x) COLLATE nocase) DO NOTHING;

1 {
    CREATE TABLE t1(a INTEGER PRIMARY KEY, b UNIQUE, c);
  
INSERT INTO t1 VALUES(1, 1, 'one');
    INSERT INTO t1 VALUES(2, 2, 'two');
    INSERT OR REPLACE INTO t1 VALUES(1, 2, 'two') ON CONFLICT(b) DO NOTHING;
    PRAGMA integrity_check;
  
1 {
    CREATE TABLE t1(a INTEGER PRIMARY KEY, b UNIQUE, c UNIQUE);
  
INSERT INTO t1 VALUES(1, 1, 1);
    INSERT INTO t1 VALUES(2, 2, 2);
  
INSERT OR REPLACE INTO t1 VALUES(3, 1, 1) ON CONFLICT(b) DO NOTHING;
    SELECT * FROM t1;
    PRAGMA integrity_check;
  
INSERT OR REPLACE INTO t1 VALUES(3, 2, 2) ON CONFLICT(c) DO NOTHING;
    SELECT * FROM t1;
    PRAGMA integrity_check;
  
INSERT OR REPLACE INTO t1 VALUES(3, 1, 1) ON CONFLICT(b) 
      DO UPDATE SET b=b||'x';
    SELECT * FROM t1;
    PRAGMA integrity_check;
  
INSERT OR REPLACE INTO t1 VALUES(3, 2, 2) ON CONFLICT(c) 
      DO UPDATE SET c=c||'x';
    SELECT * FROM t1;
    PRAGMA integrity_check;
  
1 {
    CREATE TABLE t1(w, x, y, z, PRIMARY KEY(x, y));
    CREATE UNIQUE INDEX zz ON t1(z);
  
INSERT INTO t1 VALUES('a', 1, 1, 1);
    INSERT INTO t1 VALUES('b', 2, 2, 2);
  
INSERT INTO t1 VALUES('c', 3, 3, 1) ON CONFLICT(z) 
      DO UPDATE SET w = excluded.w;
    SELECT * FROM t1;
  
INSERT INTO t1 VALUES('c', 2, 2, 3) ON CONFLICT(y, x) 
      DO UPDATE SET w = w||w;
    SELECT * FROM t1;
  
INSERT INTO t1 VALUES('c', 2, 2, 3) ON CONFLICT(y, x) 
      DO UPDATE SET w = w||t1.w;
    SELECT * FROM t1;
  
INSERT INTO t1 AS tbl VALUES('c', 2, 2, 3) ON CONFLICT(y, x) 
      DO UPDATE SET w = w||tbl.w;
    SELECT * FROM t1;
  
1 {
    CREATE TABLE excluded(w, x INTEGER, 'a b', z, PRIMARY KEY(x, 'a b'));
    CREATE UNIQUE INDEX zz ON excluded(z);
    CREATE INDEX zz2 ON excluded(z);
  
INSERT INTO excluded VALUES('a', 1, 1, 1);
    INSERT INTO excluded VALUES('b', 2, 2, 2);
  
INSERT INTO excluded VALUES('hello', 1, 1, NULL) ON CONFLICT(x, "a b")
      DO UPDATE SET w=excluded.w;
    SELECT * FROM excluded;
  
INSERT INTO excluded AS x1 VALUES('hello', 1, 1, NULL) ON CONFLICT(x, [a b])
      DO UPDATE SET w=excluded.w;
    SELECT * FROM excluded;
  
INSERT INTO excluded AS x1 VALUES('hello', 1, 1, NULL) ON CONFLICT(x, [a b])
      DO UPDATE SET w=w||w WHERE excluded.w!='hello';
    SELECT * FROM excluded;
  
INSERT INTO excluded AS x1 VALUES('hello', 1, 1, NULL) ON CONFLICT(x, [a b])
      DO UPDATE SET w=w||w WHERE excluded.x=1;
    SELECT * FROM excluded;
  
INSERT INTO excluded AS x1 VALUES('hello', 1, 1, NULL) 
      ON CONFLICT(x, [a b]) WHERE y=1
      DO UPDATE SET w=w||w WHERE excluded.x=1;
  
CREATE TABLE v(x INTEGER);
  CREATE TABLE hist(x INTEGER PRIMARY KEY, cnt INTEGER);
  CREATE TRIGGER vt AFTER INSERT ON v BEGIN
    INSERT INTO hist VALUES(new.x, 1) ON CONFLICT(x) DO
      UPDATE SET cnt=cnt+1;
  END;

INSERT INTO v VALUES(1), (4), (1), (5), (5), (8), (9), (1);
  SELECT * FROM hist;
