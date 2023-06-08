CREATE TABLE t1(a PRIMARY KEY, b);
      CREATE INDEX i1 ON t1(b);
      INSERT INTO t1 VALUES(1, 'one'); INSERT INTO t1 VALUES(2, 'two');
    
1 one 2 two
1 one 2 two
BEGIN;
        INSERT INTO t1 VALUES(3, 'three');
    
1 one 2 two
1 one 2 two 3 three
UPDATE t1 SET a = a + 10 
BEGIN;
      UPDATE t1 SET a = a + 10;
    

1 one 2 two 3 three
1 one 2 two 3 three
1 one 2 two 3 three
BEGIN 

BEGIN; SELECT * FROM t1; 
UPDATE t1 SET a = a + 10 
1 one 2 two 3 three
BEGIN;  
      UPDATE t1 SET a = a + 10; 
    
PRAGMA lock_status 
PRAGMA lock_status 
11 one 12 two 13 three
1 one 2 two 3 three
1 one 2 two 3 three
database is locked
PRAGMA lock_status 
11 one 12 two 13 three
1 one 2 two 3 three
database is locked

database is locked
database is locked


21 one 22 two 23 three
21 one 22 two 23 three
21 one 22 two 23 three
BEGIN ; INSERT INTO t1 VALUES('x', 'y') 
BEGIN ; SELECT * FROM t1 

CREATE TABLE t1(a PRIMARY KEY, b);
    CREATE TABLE counter(
      i CHECK (i<5), 
      u CHECK (u<10)
    );
    INSERT INTO counter VALUES(0, 0);
    CREATE TRIGGER tr1 AFTER INSERT ON t1 BEGIN
      UPDATE counter SET i = i+1;
    END;
    CREATE TRIGGER tr2 AFTER UPDATE ON t1 BEGIN
      UPDATE counter SET u = u+1;
    END;
  
SELECT * FROM counter 
PRAGMA cache_size = 10;
  BEGIN;
    INSERT INTO t1 VALUES(1, randomblob(1500));
    INSERT INTO t1 VALUES(2, randomblob(1500));
    INSERT INTO t1 VALUES(3, randomblob(1500));
    SELECT * FROM counter;

INSERT INTO t1 SELECT a+3, randomblob(1500) FROM t1

3 0
1 2 3

7  { PRAGMA synchronous = NORMAL ; PRAGMA temp_store = 0 
PRAGMA auto_vacuum = 2;
      PRAGMA cache_size = 10;
      CREATE TABLE z(x INTEGER PRIMARY KEY, y);
      BEGIN;
        INSERT INTO z VALUES(NULL, a_string(800));
        INSERT INTO z SELECT NULL, a_string(800) FROM z;     --   2
        INSERT INTO z SELECT NULL, a_string(800) FROM z;     --   4
        INSERT INTO z SELECT NULL, a_string(800) FROM z;     --   8
        INSERT INTO z SELECT NULL, a_string(800) FROM z;     --  16
        INSERT INTO z SELECT NULL, a_string(800) FROM z;     --  32
        INSERT INTO z SELECT NULL, a_string(800) FROM z;     --  64
        INSERT INTO z SELECT NULL, a_string(800) FROM z;     -- 128
        INSERT INTO z SELECT NULL, a_string(800) FROM z;     -- 256
      COMMIT;
    
PRAGMA auto_vacuum 
BEGIN;
      INSERT INTO z VALUES(NULL, a_string(800));
      INSERT INTO z VALUES(NULL, a_string(800));
      SAVEPOINT one;
        UPDATE z SET y = NULL WHERE x>256;
        PRAGMA incremental_vacuum;
        SELECT count(*) FROM z WHERE x < 100;
      ROLLBACK TO one;
    COMMIT;
  
BEGIN;
      SAVEPOINT one;
        UPDATE z SET y = y||x;
      ROLLBACK TO one;
    COMMIT;
    SELECT count(*) FROM z;
  
SAVEPOINT one;
      UPDATE z SET y = y||x;
    ROLLBACK TO one;
  
SELECT count(*) FROM z;
    RELEASE one;
    PRAGMA integrity_check;
  
SAVEPOINT one;
    RELEASE one;
  
CREATE TABLE x(y, z);
    INSERT INTO x VALUES(1, 2);
  
1 2
ATTACH 'test.db2' AS aux;
    PRAGMA journal_mode = DELETE;
    PRAGMA main.cache_size = 10;
    PRAGMA aux.cache_size = 10;
    CREATE TABLE t1(a UNIQUE, b UNIQUE);
    CREATE TABLE aux.t2(a UNIQUE, b UNIQUE);
    INSERT INTO t1 VALUES(a_string(200), a_string(300));
    INSERT INTO t1 SELECT a_string(200), a_string(300) FROM t1;
    INSERT INTO t1 SELECT a_string(200), a_string(300) FROM t1;
    INSERT INTO t2 SELECT * FROM t1;
    BEGIN;
      INSERT INTO t1 SELECT a_string(201), a_string(301) FROM t1;
      INSERT INTO t1 SELECT a_string(202), a_string(302) FROM t1;
      INSERT INTO t1 SELECT a_string(203), a_string(303) FROM t1;
      INSERT INTO t1 SELECT a_string(204), a_string(304) FROM t1;
      REPLACE INTO t2 SELECT * FROM t1;
    COMMIT;
  
SELECT count(*) FROM t1;
    PRAGMA integrity_check;
  
SELECT count(*) FROM t1;
    PRAGMA integrity_check;
  
SELECT count(*) FROM t1;
    PRAGMA integrity_check;
  
SELECT count(*) FROM t1;
    PRAGMA integrity_check;
  
PRAGMA journal_mode = DELETE;
    CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(1, 2);
    INSERT INTO t1 VALUES(3, 4);
  
SELECT * FROM t1 
o { 
      PRAGMA main.synchronous=OFF;
      PRAGMA aux.synchronous=OFF;
      PRAGMA journal_mode = DELETE;
    
BEGIN;
          INSERT INTO a SELECT * FROM b WHERE rowid<=3;
          INSERT INTO b SELECT * FROM a WHERE rowid<=3;
        COMMIT;
      
SELECT * FROM a
    
SELECT * FROM b
    
prefix
double-you why zed
won too free
prefix
SELECT * FROM a
    
SELECT * FROM b
    
PRAGMA journal_mode = DELETE;
  PRAGMA page_size = 1024;
  CREATE TABLE t1(a, b);
  CREATE TABLE t2(a, b);
  INSERT INTO t1 VALUES('I', 'II');
  INSERT INTO t2 VALUES('III', 'IV');
  BEGIN;
    INSERT INTO t1 VALUES(1, 2);
    INSERT INTO t2 VALUES(3, 4);
  COMMIT;

SELECT * FROM t1;
  SELECT * FROM t2;

SELECT * FROM t1;
  SELECT * FROM t2;

SELECT * FROM t1;
  SELECT * FROM t2;

SELECT * FROM t1;
  SELECT * FROM t2;

SELECT * FROM t1;
  SELECT * FROM t2;

PRAGMA journal_mode = DELETE;
    ATTACH 'test.db2' AS two;
    CREATE TABLE t1(a, b);
    CREATE TABLE two.t2(a, b);
    INSERT INTO t1 VALUES(1, 't1.1');
    INSERT INTO t2 VALUES(1, 't2.1');
    BEGIN;
      UPDATE t1 SET b = 't1.2';
      UPDATE t2 SET b = 't2.2';
    COMMIT;
  
1 t1.1
ATTACH 'test.db2' AS two;
  SELECT * FROM t2;

PRAGMA journal_mode = DELETE;
    ATTACH 'test.db3' AS three;
    CREATE TABLE three.t3(a, b);
    INSERT INTO t3 VALUES(1, 't3.1');
    BEGIN;
      UPDATE t2 SET b = 't2.3';
      UPDATE t3 SET b = 't3.3';
    COMMIT;
  
1 t1.1
ATTACH 'test.db2' AS two;
  SELECT * FROM t2;

ATTACH 'test.db3' AS three;
  SELECT * FROM t3;

PRAGMA journal_mode = DELETE;
  CREATE TABLE t1(x PRIMARY KEY, y);
  CREATE INDEX i1 ON t1(y);
  INSERT INTO t1 VALUES('I',   'one');
  INSERT INTO t1 VALUES('II',  'four');
  INSERT INTO t1 VALUES('III', 'nine');
  BEGIN;
    INSERT INTO t1 VALUES('IV', 'sixteen');
    INSERT INTO t1 VALUES('V' , 'twentyfive');
  COMMIT;

SELECT * FROM t1 
ATTACH 'test.db2' AS aux;
    CREATE TABLE t1(a, b);
    CREATE TABLE aux.t2(a, b);
    INSERT INTO t1 VALUES(17, 'Lenin');
    INSERT INTO t1 VALUES(22, 'Stalin');
    INSERT INTO t1 VALUES(53, 'Khrushchev');
  
BEGIN;
      INSERT INTO t1 VALUES(64, 'Brezhnev');
      INSERT INTO t2 SELECT * FROM t1;
  
BEGIN;
      SELECT * FROM t2;
  
SELECT * FROM t2 
PRAGMA journal_mode = memory;
    BEGIN;
      INSERT INTO t1 VALUES(84, 'Andropov');
      INSERT INTO t2 VALUES(84, 'Andropov');
    COMMIT;
  
PRAGMA journal_mode = off;
    BEGIN;
      INSERT INTO t1 VALUES(85, 'Gorbachev');
      INSERT INTO t2 VALUES(85, 'Gorbachev');
    COMMIT;
  
ATTACH 'test.db2' AS aux 
PRAGMA journal_mode = DELETE;
    PRAGMA synchronous = NORMAL;
    BEGIN;
      INSERT INTO t1 VALUES(85, 'Gorbachev');
      INSERT INTO t2 VALUES(85, 'Gorbachev');
    COMMIT;
  
PRAGMA synchronous = full;
    BEGIN;
      DELETE FROM t1 WHERE b = 'Lenin';
      DELETE FROM t2 WHERE b = 'Lenin';
    COMMIT;
  
ATTACH 'test.db2' AS aux;
    PRAGMA journal_mode = PERSIST;
    CREATE TABLE t3(a, b);
    INSERT INTO t3 SELECT randomblob(1500), randomblob(1500) FROM t1;
    UPDATE t3 SET b = randomblob(1501);
  
PRAGMA synchronous = full;
    BEGIN;
      DELETE FROM t1 WHERE b = 'Stalin';
      DELETE FROM t2 WHERE b = 'Stalin';
    COMMIT;
  
PRAGMA auto_vacuum = none;
    PRAGMA max_page_count = 10;
    CREATE TABLE t2(a, b);
    CREATE TABLE t3(a, b);
    CREATE TABLE t4(a, b);
    CREATE TABLE t5(a, b);
    CREATE TABLE t6(a, b);
    CREATE TABLE t7(a, b);
    CREATE TABLE t8(a, b);
    CREATE TABLE t9(a, b);
    CREATE TABLE t10(a, b);
  
CREATE TABLE t11(a, b)

10
15

BEGIN;
    INSERT INTO t11 VALUES(1, 2);
    PRAGMA max_page_count = 13;

INSERT INTO t11 VALUES(3, 4);
    PRAGMA max_page_count = 10;


11
1 2 3 4
11
1  {
      CREATE TABLE t1(a, b);
      PRAGMA auto_vacuum=OFF;
      PRAGMA synchronous=NORMAL;
      PRAGMA page_size=1024;
      PRAGMA locking_mode=EXCLUSIVE;
      PRAGMA journal_mode=TRUNCATE;
      INSERT INTO t1 VALUES(1, 2);
    
PRAGMA locking_mode = EXCLUSIVE;
    CREATE TABLE t1(a, b);
    BEGIN;
      PRAGMA journal_mode = delete;
      PRAGMA journal_mode = truncate;
  
INSERT INTO t1 VALUES(1, 2) 
PRAGMA journal_mode = persist 
COMMIT 
PRAGMA journal_mode = persist;
    PRAGMA journal_size_limit;
  
PRAGMA auto_vacuum = 1;
      CREATE TABLE x1(x);
      INSERT INTO x1 VALUES('Charles');
      INSERT INTO x1 VALUES('James');
      INSERT INTO x1 VALUES('Mary');
      SELECT * FROM x1;
    
SELECT * FROM x1 
BEGIN;
      INSERT INTO x1 VALUES('William');
      INSERT INTO x1 VALUES('Anne');
    ROLLBACK;
  
PRAGMA cache_size = 10;
    BEGIN;
      CREATE TABLE ab(a, b, UNIQUE(a, b));
      INSERT INTO ab VALUES( a_string(200), a_string(300) );
      INSERT INTO ab SELECT a_string(200), a_string(300) FROM ab;
      INSERT INTO ab SELECT a_string(200), a_string(300) FROM ab;
      INSERT INTO ab SELECT a_string(200), a_string(300) FROM ab;
      INSERT INTO ab SELECT a_string(200), a_string(300) FROM ab;
      INSERT INTO ab SELECT a_string(200), a_string(300) FROM ab;
      INSERT INTO ab SELECT a_string(200), a_string(300) FROM ab;
      INSERT INTO ab SELECT a_string(200), a_string(300) FROM ab;
    COMMIT;
  
UPDATE ab SET a = a_string(201) 
UPDATE ab SET b = a_string(301) 
128
UPDATE ab SET a = a_string(202) 
BEGIN;
      UPDATE ab SET b = a_string(301);
    ROLLBACK;
  
128
PRAGMA page_size = 1024 
ii
PRAGMA page_size = 4096;
      PRAGMA synchronous = OFF;
      CREATE TABLE t1(a, b);
      CREATE TABLE t2(a, b);
    
PRAGMA page_size = 4096;
      PRAGMA synchronous = OFF;
      CREATE TABLE t1(a, b);
      CREATE TABLE t2(a, b);
    
PRAGMA page_size = 4096;
    CREATE TABLE t1(a, b);
    CREATE TABLE t2(a, b);
  
PRAGMA journal_mode = PERSIST;
      PRAGMA page_size = 1024;
      BEGIN;
        CREATE TABLE t1(a, b);
        CREATE TABLE t2(a, b);
        CREATE TABLE t3(a, b);
      COMMIT;
    
INSERT INTO t3 VALUES(a_string(300), a_string(300));
      INSERT INTO t3 SELECT * FROM t3;        /*  2 */
      INSERT INTO t3 SELECT * FROM t3;        /*  4 */
      INSERT INTO t3 SELECT * FROM t3;        /*  8 */
      INSERT INTO t3 SELECT * FROM t3;        /* 16 */
      INSERT INTO t3 SELECT * FROM t3;        /* 32 */
    
PRAGMA cache_size = 10;
      BEGIN;
    
COMMIT;
      SELECT * FROM t2;
    
CREATE TABLE t6(a, b);
      CREATE TABLE t7(a, b);
      CREATE TABLE t5(a, b);
      DROP TABLE t6;
      DROP TABLE t7;
    
BEGIN;
        CREATE TABLE t6(a, b);
    
COMMIT;
      SELECT * FROM t5;
    
PRAGMA auto_vacuum = none;
    PRAGMA page_size = 1024;
    CREATE TABLE t1(x);
  
INSERT INTO t1 VALUES(zeroblob(900)) 
CREATE TABLE t2(x);
    DROP TABLE t2;
  
BEGIN;
    CREATE TABLE t2(x);
  
CREATE TABLE t3(x);
    COMMIT;
  
PRAGMA journal_mode = DELETE;
  PRAGMA cache_size = 10;
  BEGIN;
    CREATE TABLE zz(top PRIMARY KEY);
    INSERT INTO zz VALUES(a_string(222));
    INSERT INTO zz SELECT a_string((SELECT 222+max(rowid) FROM zz)) FROM zz;
    INSERT INTO zz SELECT a_string((SELECT 222+max(rowid) FROM zz)) FROM zz;
    INSERT INTO zz SELECT a_string((SELECT 222+max(rowid) FROM zz)) FROM zz;
    INSERT INTO zz SELECT a_string((SELECT 222+max(rowid) FROM zz)) FROM zz;
    INSERT INTO zz SELECT a_string((SELECT 222+max(rowid) FROM zz)) FROM zz;
  COMMIT;
  BEGIN;
    UPDATE zz SET top = a_string(345);

disk I/O error
PRAGMA journal_mode = TRUNCATE;
    PRAGMA integrity_check;
  
32
set eff 1024 
SELECT count(*) FROM v;
      PRAGMA main.page_size;
    
SELECT count(*) FROM v;
      PRAGMA main.page_size;
    
PRAGMA page_size = 1024;
  PRAGMA journal_mode = PERSIST;
  PRAGMA cache_size = 10;
  BEGIN;
    CREATE TABLE t1(a INTEGER PRIMARY KEY, b BLOB);
    INSERT INTO t1 VALUES(NULL, a_string(400));
    INSERT INTO t1 SELECT NULL, a_string(400) FROM t1;          /*   2 */
    INSERT INTO t1 SELECT NULL, a_string(400) FROM t1;          /*   4 */
    INSERT INTO t1 SELECT NULL, a_string(400) FROM t1;          /*   8 */
    INSERT INTO t1 SELECT NULL, a_string(400) FROM t1;          /*  16 */
    INSERT INTO t1 SELECT NULL, a_string(400) FROM t1;          /*  32 */
    INSERT INTO t1 SELECT NULL, a_string(400) FROM t1;          /*  64 */
    INSERT INTO t1 SELECT NULL, a_string(400) FROM t1;          /* 128 */
  COMMIT;
  UPDATE t1 SET b = a_string(400);

UPDATE t1 SET b = a_string(399) WHERE a <= $nUp
  
ok
SELECT sum(length(b)) FROM t1 
PRAGMA integrity_check 
CREATE INDEX i1 ON t1(b);
  UPDATE t1 SET b = a_string(400);

UPDATE t1 SET b = a_string(399) WHERE a <= $nUp
  
ok
SELECT sum(length(b)) FROM t1 
PRAGMA integrity_check 
PRAGMA journal_mode = OFF;
  CREATE TABLE t1(a, b);
  BEGIN;
    INSERT INTO t1 VALUES(1, 2);
  COMMIT;
  SELECT * FROM t1;

BEGIN;
    INSERT INTO t1 VALUES(3, 4);
  ROLLBACK;

SELECT * FROM t1;

BEGIN;
    INSERT INTO t1(rowid, a, b) SELECT a+3, b, b FROM t1;
    INSERT INTO t1(rowid, a, b) SELECT a+3, b, b FROM t1;

COMMIT;

SELECT * FROM t1;

CREATE TABLE tx(y, z);
  INSERT INTO tx VALUES('Ayutthaya', 'Beijing');
  INSERT INTO tx VALUES('London', 'Tokyo');

SELECT * FROM tx;
  
PRAGMA page_size = 1024;
    CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(a_string(500), a_string(200));
    INSERT INTO t1 SELECT a_string(500), a_string(200) FROM t1;
    INSERT INTO t1 SELECT a_string(500), a_string(200) FROM t1;
    INSERT INTO t1 SELECT a_string(500), a_string(200) FROM t1;
    INSERT INTO t1 SELECT a_string(500), a_string(200) FROM t1;
    INSERT INTO t1 SELECT a_string(500), a_string(200) FROM t1;
    INSERT INTO t1 SELECT a_string(500), a_string(200) FROM t1;
    INSERT INTO t1 SELECT a_string(500), a_string(200) FROM t1;
  
PRAGMA writable_schema = 1;
    UPDATE sqlite_master SET rootpage = $lockingpage;
  
SELECT count(*) FROM t1 
CREATE TABLE t2(x);
    INSERT INTO t2 VALUES(a_string(5000));
  
SELECT typeof(x) FROM t2 
SELECT length(x||'') FROM t2 
DELETE FROM t2;
    INSERT INTO t2 VALUES(randomblob(5000));
  
SELECT length(x), typeof(x) FROM t2 
SELECT length(x||'') FROM t2 
SELECT length(x||'') FROM t2 
CREATE TABLE t1(a, b);
        CREATE TABLE t2(a, b);
        PRAGMA writable_schema = 1;
        UPDATE sqlite_master SET rootpage=5 WHERE tbl_name = 't1';
        PRAGMA writable_schema = 0;
        ALTER TABLE t1 RENAME TO x1;
      
SELECT * FROM x1 
PRAGMA page_size = 1024;
    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(a_string(800));
    INSERT INTO t1 VALUES(a_string(800));
  
SELECT length(x) FROM t1 
PRAGMA page_size = 512;
    PRAGMA auto_vacuum = 1;
    CREATE TABLE t1(aa, ab, ac, ad, ae, af, ag, ah, ai, aj, ak, al, am, an,
                    ba, bb, bc, bd, be, bf, bg, bh, bi, bj, bk, bl, bm, bn,
                    ca, cb, cc, cd, ce, cf, cg, ch, ci, cj, ck, cl, cm, cn,
                    da, db, dc, dd, de, df, dg, dh, di, dj, dk, dl, dm, dn,
                    ea, eb, ec, ed, ee, ef, eg, eh, ei, ej, ek, el, em, en,
                    fa, fb, fc, fd, fe, ff, fg, fh, fi, fj, fk, fl, fm, fn,
                    ga, gb, gc, gd, ge, gf, gg, gh, gi, gj, gk, gl, gm, gn,
                    ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm, hn,
                    ia, ib, ic, id, ie, if, ig, ih, ii, ij, ik, il, im, ix,
                    ja, jb, jc, jd, je, jf, jg, jh, ji, jj, jk, jl, jm, jn,
                    ka, kb, kc, kd, ke, kf, kg, kh, ki, kj, kk, kl, km, kn,
                    la, lb, lc, ld, le, lf, lg, lh, li, lj, lk, ll, lm, ln,
                    ma, mb, mc, md, me, mf, mg, mh, mi, mj, mk, ml, mm, mn
    );
    CREATE TABLE t2(aa, ab, ac, ad, ae, af, ag, ah, ai, aj, ak, al, am, an,
                    ba, bb, bc, bd, be, bf, bg, bh, bi, bj, bk, bl, bm, bn,
                    ca, cb, cc, cd, ce, cf, cg, ch, ci, cj, ck, cl, cm, cn,
                    da, db, dc, dd, de, df, dg, dh, di, dj, dk, dl, dm, dn,
                    ea, eb, ec, ed, ee, ef, eg, eh, ei, ej, ek, el, em, en,
                    fa, fb, fc, fd, fe, ff, fg, fh, fi, fj, fk, fl, fm, fn,
                    ga, gb, gc, gd, ge, gf, gg, gh, gi, gj, gk, gl, gm, gn,
                    ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl, hm, hn,
                    ia, ib, ic, id, ie, if, ig, ih, ii, ij, ik, il, im, ix,
                    ja, jb, jc, jd, je, jf, jg, jh, ji, jj, jk, jl, jm, jn,
                    ka, kb, kc, kd, ke, kf, kg, kh, ki, kj, kk, kl, km, kn,
                    la, lb, lc, ld, le, lf, lg, lh, li, lj, lk, ll, lm, ln,
                    ma, mb, mc, md, me, mf, mg, mh, mi, mj, mk, ml, mm, mn
    );
    INSERT INTO t1(aa) VALUES( a_string(100000) );
    INSERT INTO t2(aa) VALUES( a_string(100000) );
    VACUUM;
  
CREATE TABLE one(two, three);
    INSERT INTO one VALUES('a', 'b');
  
BEGIN EXCLUSIVE;
    COMMIT;
  
PRAGMA locking_mode = exclusive;
    PRAGMA journal_mode = persist;
    CREATE TABLE one(two, three);
    INSERT INTO one VALUES('a', 'b');
  
BEGIN EXCLUSIVE;
    COMMIT;
  
PRAGMA cache_size = 10;
      PRAGMA journal_mode = wal;
      BEGIN;
        CREATE TABLE t1(x);
        CREATE TABLE t2(y);
        INSERT INTO t1 VALUES(a_string(800));
        INSERT INTO t1 SELECT a_string(800) FROM t1;         /*   2 */
        INSERT INTO t1 SELECT a_string(800) FROM t1;         /*   4 */
        INSERT INTO t1 SELECT a_string(800) FROM t1;         /*   8 */
        INSERT INTO t1 SELECT a_string(800) FROM t1;         /*  16 */
        INSERT INTO t1 SELECT a_string(800) FROM t1;         /*  32 */
      COMMIT;
    
BEGIN;
      INSERT INTO t2 VALUES('xxxx');
    
PRAGMA journal_mode = WAL;
      CREATE TABLE ko(c DEFAULT 'abc', b DEFAULT 'def');
      INSERT INTO ko DEFAULT VALUES;
    
SELECT * FROM ko 
SELECT * FROM ko 
CREATE TABLE ko(c DEFAULT 'abc', b DEFAULT 'def');
      INSERT INTO ko DEFAULT VALUES;
    
PRAGMA wal_checkpoint 
PRAGMA synchronous = off;
      PRAGMA journal_mode = WAL;
      INSERT INTO ko DEFAULT VALUES;
    
PRAGMA wal_checkpoint 
PRAGMA journal_mode = PERSIST;
    CREATE TABLE t1(a, b);
  
PRAGMA journal_mode = DELETE 
PRAGMA journal_mode = PERSIST;
    INSERT INTO t1 VALUES('Canberra', 'ACT');
  
PRAGMA journal_mode 
PRAGMA journal_mode = PERSIST;
    INSERT INTO t1 VALUES('Darwin', 'NT');
    BEGIN IMMEDIATE;
  
PRAGMA journal_mode 
PRAGMA journal_mode = PERSIST;
    INSERT INTO t1 VALUES('Adelaide', 'SA');
    BEGIN EXCLUSIVE;
  
PRAGMA journal_mode 
PRAGMA locking_mode = normal
PRAGMA locking_mode = exclusive
PRAGMA locking_mode
PRAGMA main.locking_mode
PRAGMA cache_size = 10;
    PRAGMA auto_vacuum = FULL;
    CREATE TABLE x1(x, y, z, PRIMARY KEY(y, z));
    CREATE TABLE x2(x, y, z, PRIMARY KEY(y, z));
    INSERT INTO x2 VALUES(a_string(400), a_string(500), a_string(600));
    INSERT INTO x2 SELECT a_string(600), a_string(400), a_string(500) FROM x2;
    INSERT INTO x2 SELECT a_string(500), a_string(600), a_string(400) FROM x2;
    INSERT INTO x2 SELECT a_string(400), a_string(500), a_string(600) FROM x2;
    INSERT INTO x2 SELECT a_string(600), a_string(400), a_string(500) FROM x2;
    INSERT INTO x2 SELECT a_string(500), a_string(600), a_string(400) FROM x2;
    INSERT INTO x2 SELECT a_string(400), a_string(500), a_string(600) FROM x2;
    INSERT INTO x1 SELECT * FROM x2;
  
BEGIN;
      DELETE FROM x1 WHERE rowid<32;
  
UPDATE x1 SET z = a_string(300) WHERE rowid>40;
    COMMIT;
    PRAGMA integrity_check;
    SELECT count(*) FROM x1;
  
DELETE FROM x1;
    INSERT INTO x1 SELECT * FROM x2;
    BEGIN;
      DELETE FROM x1 WHERE rowid<32;
      UPDATE x1 SET z = a_string(299) WHERE rowid>40;
  
PRAGMA integrity_check;
    SELECT count(*) FROM x1;
  
DELETE FROM x1;
    INSERT INTO x1 SELECT * FROM x2;
  
SELECT * FROM x3 
BEGIN;
      SAVEPOINT abc;
        CREATE TABLE t1(a, b);
      ROLLBACK TO abc;
    COMMIT;
  
SAVEPOINT abc;
      CREATE TABLE t1(a, b);
    ROLLBACK TO abc;
    COMMIT;
  
PRAGMA page_size = 512;
    CREATE TABLE tbl(a PRIMARY KEY, b UNIQUE);
    BEGIN;
      INSERT INTO tbl VALUES(a_string(25), a_string(600));
      INSERT INTO tbl SELECT a_string(25), a_string(600) FROM tbl;
      INSERT INTO tbl SELECT a_string(25), a_string(600) FROM tbl;
      INSERT INTO tbl SELECT a_string(25), a_string(600) FROM tbl;
      INSERT INTO tbl SELECT a_string(25), a_string(600) FROM tbl;
      INSERT INTO tbl SELECT a_string(25), a_string(600) FROM tbl;
      INSERT INTO tbl SELECT a_string(25), a_string(600) FROM tbl;
      INSERT INTO tbl SELECT a_string(25), a_string(600) FROM tbl;
    COMMIT;
  
UPDATE tbl SET b = a_string(550);

BEGIN;
      CREATE TABLE t1(a, b);
  
PRAGMA journal_mode = WAL;
        CREATE TABLE t1(a, b);
        INSERT INTO t1 VALUES('a', 'b');
      
a b
exclusive
BEGIN; INSERT INTO t1 VALUES('c', 'd'); 
INSERT INTO t1 VALUES('c', 'd'); COMMIT 
PRAGMA journal_mode = PERSIST;
      CREATE TABLE t1(a, b);
      INSERT INTO t1 VALUES('a', 'b');
    
PRAGMA journal_mode = DELETE 
PRAGMA journal_mode = PERSIST;
      INSERT INTO t1 VALUES('c', 'd');
    
BEGIN; INSERT INTO t1 VALUES('e', 'f'); 
PRAGMA journal_mode = DELETE 

PRAGMA journal_mode = PERSIST;
      INSERT INTO t1 VALUES('g', 'h');
    
BEGIN; INSERT INTO t1 VALUES('e', 'f'); 
PRAGMA journal_mode = DELETE 
database is locked

PRAGMA page_size = 1024;
    PRAGMA auto_vacuum = full;
    PRAGMA locking_mode=exclusive;
    CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(1, 2);
  
PRAGMA page_size = 4096;
      VACUUM;
    
PRAGMA page_size = 4096;
      VACUUM;
    
PRAGMA locking_mode=EXCLUSIVE;
    SELECT count(*) FROM sqlite_master;
    PRAGMA lock_status;
  
PRAGMA cache_size = 10;
    PRAGMA page_size = 1024;
    CREATE TABLE t1(x, y, UNIQUE(x, y));
    INSERT INTO t1 VALUES(randomblob(1500), randomblob(1500));
    INSERT INTO t1 SELECT randomblob(1500), randomblob(1500) FROM t1;
    INSERT INTO t1 SELECT randomblob(1500), randomblob(1500) FROM t1;
    INSERT INTO t1 SELECT randomblob(1500), randomblob(1500) FROM t1;
    INSERT INTO t1 SELECT randomblob(1500), randomblob(1500) FROM t1;
    INSERT INTO t1 SELECT randomblob(1500), randomblob(1500) FROM t1;
    INSERT INTO t1 SELECT randomblob(1500), randomblob(1500) FROM t1;
    INSERT INTO t1 SELECT randomblob(1500), randomblob(1500) FROM t1;
    INSERT INTO t1 SELECT randomblob(1500), randomblob(1500) FROM t1;
    INSERT INTO t1 SELECT randomblob(1500), randomblob(1500) FROM t1;
    INSERT INTO t1 SELECT randomblob(1500), randomblob(1500) FROM t1;
    BEGIN;
      UPDATE t1 SET y = randomblob(1499);
  
PRAGMA integrity_check 
CREATE TABLE t1(x, y);
  
BEGIN;
    INSERT INTO t1 VALUES(1, randomblob(10000));
  
PRAGMA cache_size = 10;
    INSERT INTO t1 VALUES(1, randomblob(10000));
    INSERT INTO t1 VALUES(2, randomblob(10000));
    INSERT INTO t1 SELECT x+2, randomblob(10000) from t1;
    INSERT INTO t1 SELECT x+4, randomblob(10000) from t1;
    INSERT INTO t1 SELECT x+8, randomblob(10000) from t1;
    INSERT INTO t1 SELECT x+16, randomblob(10000) from t1;
    SELECT count(*) FROM t1;
    COMMIT;
  
CREATE TABLE t1(x);
      INSERT INTO t1 VALUES('one');
      INSERT INTO t1 VALUES('two');
      BEGIN;
        INSERT INTO t1 VALUES('three');
        INSERT INTO t1 VALUES('four');
    
SELECT * FROM t1 
CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(1, 2);
  
BEGIN;
    INSERT INTO t1 VALUES(2, a_string($strsize));
    DELETE FROM t1 WHERE oid=2;
    COMMIT;
    PRAGMA integrity_check;
  
CREATE TABLE t1(x, y);
    PRAGMA journal_mode = WAL;
    INSERT INTO t1 VALUES(1, 2);
  
BEGIN;
      CREATE TABLE t2(a, b);
  
PRAGMA auto_vacuum = 0;
    CREATE TABLE t1(x, y);
    INSERT INTO t1 VALUES(1, 2);
  
PRAGMA max_page_count = 2 
CREATE TABLE t2(x) 
PRAGMA checkpoint_fullfsync = 1 
CREATE TABLE t2(x) 
INSERT INTO t2 VALUES('xyz') 
CREATE TABLE t3(x) 
VACUUM;
    SELECT * FROM t1;
  
CREATE TABLE t1(x) 
PRAGMA auto_vacuum = 1;
    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES('xxx');
    INSERT INTO t1 VALUES('two');
    INSERT INTO t1 VALUES(randomblob(400));
    INSERT INTO t1 VALUES(randomblob(400));
    INSERT INTO t1 VALUES(randomblob(400));
    INSERT INTO t1 VALUES(randomblob(400));
    BEGIN;
    UPDATE t1 SET x = 'one' WHERE rowid=1;
  
CREATE TABLE t2(x) 
PRAGMA auto_vacuum = 2;
  CREATE TABLE t3(x);
  CREATE TABLE t4(x);

  DROP TABLE t2;
  DROP TABLE t3;
  DROP TABLE t4;

PRAGMA cache_size = 1;
    PRAGMA incremental_vacuum;
    PRAGMA integrity_check;
  
PRAGMA auto_vacuum = 1;
    CREATE TABLE t1(x PRIMARY KEY);
    INSERT INTO t1 VALUES(randomblob(1200));
    PRAGMA page_count;
  
INSERT INTO t1 VALUES(randomblob(1200));
    INSERT INTO t1 VALUES(randomblob(1200));
    INSERT INTO t1 VALUES(randomblob(1200));
  
PRAGMA cache_size = 1;
    CREATE TABLE t2(x);
    PRAGMA integrity_check;
  
CREATE TABLE t1(x PRIMARY KEY);
    INSERT INTO t1 VALUES(randomblob(200));
    INSERT INTO t1 SELECT randomblob(200) FROM t1;
    INSERT INTO t1 SELECT randomblob(200) FROM t1;
    INSERT INTO t1 SELECT randomblob(200) FROM t1;
    INSERT INTO t1 SELECT randomblob(200) FROM t1;
    INSERT INTO t1 SELECT randomblob(200) FROM t1;
    INSERT INTO t1 SELECT randomblob(200) FROM t1;
  
PRAGMA cache_size = 1;
    DELETE FROM t1 WHERE rowid%4;
    PRAGMA integrity_check;
  
CREATE TABLE t1(x, y);
    INSERT INTO t1 VALUES(randomblob(200), randomblob(200));
    INSERT INTO t1 SELECT randomblob(200), randomblob(200) FROM t1;
    INSERT INTO t1 SELECT randomblob(200), randomblob(200) FROM t1;
    INSERT INTO t1 SELECT randomblob(200), randomblob(200) FROM t1;
    INSERT INTO t1 SELECT randomblob(200), randomblob(200) FROM t1;
    INSERT INTO t1 SELECT randomblob(200), randomblob(200) FROM t1;
    INSERT INTO t1 SELECT randomblob(200), randomblob(200) FROM t1;
    INSERT INTO t1 SELECT randomblob(200), randomblob(200) FROM t1;
    INSERT INTO t1 SELECT randomblob(200), randomblob(200) FROM t1;
    INSERT INTO t1 SELECT randomblob(200), randomblob(200) FROM t1;
  
SELECT sum(length(y)) FROM t1 
CREATE TABLE t1(x, y);
    INSERT INTO t1 VALUES(randomblob(200), randomblob(200));
    INSERT INTO t1 SELECT randomblob(200), randomblob(200) FROM t1;
    INSERT INTO t1 SELECT randomblob(200), randomblob(200) FROM t1;
    INSERT INTO t1 SELECT randomblob(200), randomblob(200) FROM t1;
    INSERT INTO t1 SELECT randomblob(200), randomblob(200) FROM t1;
    INSERT INTO t1 SELECT randomblob(200), randomblob(200) FROM t1;
    INSERT INTO t1 SELECT randomblob(200), randomblob(200) FROM t1;
    INSERT INTO t1 SELECT randomblob(200), randomblob(200) FROM t1;
    INSERT INTO t1 SELECT randomblob(200), randomblob(200) FROM t1;
  
UPDATE t1 SET x = randomblob(200) 
CREATE TABLE t1(x, y);
    INSERT INTO t1 VALUES(1, 2);
    CREATE TABLE t2(x, y);
    INSERT INTO t2 VALUES(1, 2);
    CREATE TABLE t3(x, y);
    INSERT INTO t3 VALUES(1, 2);
  
PRAGMA page_size=4096;
  PRAGMA auto_vacuum=FULL;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b ANY);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<50)
  INSERT INTO t1(a,b) SELECT x, zeroblob(1000) FROM c;
  CREATE TABLE t2 AS SELECT * FROM t1;
  PRAGMA page_count;

BEGIN;
  DROP TABLE t2;
  PRAGMA incremental_vacuum=50;
  PRAGMA page_count;
  PRAGMA max_page_count=2;

ROLLBACK;
  PRAGMA page_count;
  PRAGMA max_page_count;

