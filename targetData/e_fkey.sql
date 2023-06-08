uplevel [subst -nocommands {
    set eqpres [list]
    $db eval "$sql" {
      lappend eqpres [set detail]
    
set normalres [list {*
PRAGMA foreign_keys = ON;
      CREATE TABLE p(i PRIMARY KEY);
      CREATE TABLE c(j REFERENCES p ON UPDATE CASCADE);
      INSERT INTO p VALUES('hello');
      INSERT INTO c VALUES('hello');
      UPDATE p SET i = 'world';
      SELECT * FROM c;
    
PRAGMA foreign_keys = ON;
      CREATE TABLE p(i PRIMARY KEY);
      CREATE TABLE c(j REFERENCES p ON UPDATE CASCADE);
      INSERT INTO p VALUES('hello');
      INSERT INTO c VALUES('hello');
      UPDATE p SET i = 'world';
      SELECT * FROM c;
    
PRAGMA foreign_key_list(c) 
PRAGMA foreign_keys 
CREATE TABLE p(i PRIMARY KEY) 
CREATE TABLE c(j REFERENCES p ON UPDATE CASCADE) 
CREATE TABLE c(j REFERENCES p) 
PRAGMA table_info(c) 
PRAGMA foreign_key_list(c) 
PRAGMA foreign_keys 
CREATE TABLE p(i PRIMARY KEY);
    CREATE TABLE c(j REFERENCES p ON UPDATE CASCADE);
    INSERT INTO p VALUES('hello');
    INSERT INTO c VALUES('hello');
    UPDATE p SET i = 'world';
    SELECT * FROM c;
  
DELETE FROM c;
    DELETE FROM p;
    PRAGMA foreign_keys = ON;
    INSERT INTO p VALUES('hello');
    INSERT INTO c VALUES('hello');
    UPDATE p SET i = 'world';
    SELECT * FROM c;
  
PRAGMA foreign_keys 
PRAGMA foreign_keys = ON;
    PRAGMA foreign_keys;
  
PRAGMA foreign_keys = OFF;
    PRAGMA foreign_keys;
  
PRAGMA foreign_keys = ON;
    CREATE TABLE t1(a UNIQUE, b);
    CREATE TABLE t2(c, d REFERENCES t1(a));
    INSERT INTO t1 VALUES(1, 2);
    INSERT INTO t2 VALUES(2, 1);
    BEGIN;
      PRAGMA foreign_keys = OFF;
  
DELETE FROM t1
  
PRAGMA foreign_keys 
COMMIT;
    PRAGMA foreign_keys = OFF;
    BEGIN;
      PRAGMA foreign_keys = ON;
      DELETE FROM t1;
      PRAGMA foreign_keys;
  
CREATE TABLE artist(
      artistid    INTEGER PRIMARY KEY, 
      artistname  TEXT
    );
    CREATE TABLE track(
      trackid     INTEGER, 
      trackname   TEXT, 
      trackartist INTEGER,
      FOREIGN KEY(trackartist) REFERENCES artist(artistid)
    );
  
INSERT INTO track VALUES(1, 'track 1', 1) 
INSERT INTO artist VALUES(2, 'artist 1') 
INSERT INTO track VALUES(1, 'track 1', 1) 
INSERT INTO track VALUES(1, 'track 1', 2) 
DELETE FROM artist WHERE artistid = 2 
DELETE FROM track WHERE trackartist = 2;
    DELETE FROM artist WHERE artistid = 2;
  
INSERT INTO track VALUES(1, 'track 1', NULL);
    INSERT INTO track VALUES(2, 'track 2', NULL);
  
SELECT * FROM artist 
UPDATE track SET trackartist = 5 WHERE trackid = 1 
INSERT INTO artist VALUES(5, 'artist 5');
    UPDATE track SET trackartist = 5 WHERE trackid = 1;
  
DELETE FROM artist WHERE artistid = 5
UPDATE track SET trackartist = NULL WHERE trackid = 1;
    DELETE FROM artist WHERE artistid = 5;
  
set res [catchsql $sql]
  set results {
    {0 {
SELECT count(*) FROM track WHERE NOT (
        trackartist IS NULL OR 
        EXISTS(SELECT 1 FROM artist WHERE artistid=trackartist)
      )
    
CREATE TABLE artist(
      artistid    INTEGER PRIMARY KEY, 
      artistname  TEXT
    );
    CREATE TABLE track(
      trackid     INTEGER, 
      trackname   TEXT, 
      trackartist INTEGER NOT NULL,
      FOREIGN KEY(trackartist) REFERENCES artist(artistid)
    );
  
INSERT INTO track VALUES(14, 'Mr. Bojangles', NULL) 
CREATE TABLE artist(
      artistid    INTEGER PRIMARY KEY, 
      artistname  TEXT
    );
    CREATE TABLE track(
      trackid     INTEGER, 
      trackname   TEXT, 
      trackartist INTEGER,
      FOREIGN KEY(trackartist) REFERENCES artist(artistid)
    );
    INSERT INTO artist VALUES(1, 'Dean Martin');
    INSERT INTO artist VALUES(2, 'Frank Sinatra');
    INSERT INTO track VALUES(11, 'That''s Amore', 1);
    INSERT INTO track VALUES(12, 'Christmas Blues', 1);
    INSERT INTO track VALUES(13, 'My Way', 2);
  
INSERT INTO track VALUES(14, 'Mr. Bojangles', 3) 
INSERT INTO track VALUES(14, 'Mr. Bojangles', NULL) 
UPDATE track SET trackartist = 3 WHERE trackname = 'Mr. Bojangles';
  
INSERT INTO artist VALUES(3, 'Sammy Davis Jr.');
    UPDATE track SET trackartist = 3 WHERE trackname = 'Mr. Bojangles';
    INSERT INTO track VALUES(15, 'Boogie Woogie', 3);
  
DELETE FROM artist WHERE artistname = 'Frank Sinatra';
  
DELETE FROM track WHERE trackname = 'My Way';
    DELETE FROM artist WHERE artistname = 'Frank Sinatra';
  
UPDATE artist SET artistid=4 WHERE artistname = 'Dean Martin';
  
DELETE FROM track WHERE trackname IN('That''s Amore', 'Christmas Blues');
    UPDATE artist SET artistid=4 WHERE artistname = 'Dean Martin';
  
CREATE TABLE par(p PRIMARY KEY);
    CREATE TABLE chi(c REFERENCES par);

    INSERT INTO par VALUES(1);
    INSERT INTO par VALUES('1');
    INSERT INTO par VALUES(X'31');
    SELECT typeof(p) FROM par;
  
do_test e_fkey-15.$tn.1 "
    catchsql {$sql
SELECT * FROM chi WHERE c IS NOT NULL AND c NOT IN (SELECT p FROM par)
    
CREATE TABLE t1(a COLLATE nocase PRIMARY KEY);
    CREATE TABLE t2(b REFERENCES t1);
  
INSERT INTO t1 VALUES('oNe');
    INSERT INTO t2 VALUES('one');
    INSERT INTO t2 VALUES('ONE');
    UPDATE t2 SET b = 'OnE';
    UPDATE t1 SET a = 'ONE';
  
UPDATE t2 SET b = 'two' WHERE rowid = 1 
DELETE FROM t1 WHERE rowid = 1 
CREATE TABLE t1(a NUMERIC PRIMARY KEY);
    CREATE TABLE t2(b TEXT REFERENCES t1);
  
INSERT INTO t1 VALUES(1);
    INSERT INTO t1 VALUES(2);
    INSERT INTO t1 VALUES('three');
    INSERT INTO t2 VALUES('2.0');
    SELECT b, typeof(b) FROM t2;
  
SELECT typeof(a) FROM t1 
DELETE FROM t1 WHERE rowid = 2 
CREATE TABLE t2(a REFERENCES t1(x));
  
catchsql { DROP TABLE t1 
INSERT INTO t2 VALUES(NULL) 
CREATE TABLE parent(a PRIMARY KEY, b UNIQUE, c, d, e, f);
    CREATE UNIQUE INDEX i1 ON parent(c, d);
    CREATE INDEX i2 ON parent(e);
    CREATE UNIQUE INDEX i3 ON parent(f COLLATE nocase);

    CREATE TABLE child1(f, g REFERENCES parent(a));                       -- Ok
    CREATE TABLE child2(h, i REFERENCES parent(b));                       -- Ok
    CREATE TABLE child3(j, k, FOREIGN KEY(j, k) REFERENCES parent(c, d)); -- Ok
    CREATE TABLE child4(l, m REFERENCES parent(e));                       -- Err
    CREATE TABLE child5(n, o REFERENCES parent(f));                       -- Err
    CREATE TABLE child6(p, q, FOREIGN KEY(p,q) REFERENCES parent(b, c));  -- Err
    CREATE TABLE child7(r REFERENCES parent(c));                          -- Err
  
INSERT INTO parent VALUES(1, 2, 3, 4, 5, 6);
    INSERT INTO child1 VALUES('xxx', 1);
    INSERT INTO child2 VALUES('xxx', 2);
    INSERT INTO child3 VALUES(3, 4);
  
INSERT INTO child4 VALUES('xxx', 5) 
INSERT INTO child5 VALUES('xxx', 6) 
INSERT INTO child6 VALUES(2, 3) 
INSERT INTO child7 VALUES(3) 
CREATE TABLE c1(c REFERENCES nosuchtable, d);

    CREATE TABLE p2(a, b, UNIQUE(a, b));
    CREATE TABLE c2(c, d, FOREIGN KEY(c, d) REFERENCES p2(a, x));

    CREATE TABLE p3(a PRIMARY KEY, b);
    CREATE TABLE c3(c REFERENCES p3(b), d);

    CREATE TABLE p4(a PRIMARY KEY, b);
    CREATE UNIQUE INDEX p4i ON p4(b COLLATE nocase);
    CREATE TABLE c4(c REFERENCES p4(b), d);

    CREATE TABLE p5(a PRIMARY KEY, b COLLATE nocase);
    CREATE UNIQUE INDEX p5i ON p5(b COLLATE binary);
    CREATE TABLE c5(c REFERENCES p5(b), d);

    CREATE TABLE p6(a PRIMARY KEY, b);
    CREATE TABLE c6(c, d, FOREIGN KEY(c, d) REFERENCES p6);

    CREATE TABLE p7(a, b, PRIMARY KEY(a, b));
    CREATE TABLE c7(c, d REFERENCES p7);
  
CREATE TABLE parent2(a, b, PRIMARY KEY(a,b));

    CREATE TABLE child8(x, y, FOREIGN KEY(x,y) REFERENCES parent2);     -- Ok
    CREATE TABLE child9(x REFERENCES parent2);                          -- Err
    CREATE TABLE child10(x,y,z, FOREIGN KEY(x,y,z) REFERENCES parent2); -- Err
  
INSERT INTO parent2 VALUES('I', 'II');
    INSERT INTO child8 VALUES('I', 'II');
  
INSERT INTO child9 VALUES('I') 
INSERT INTO child9 VALUES('II') 
INSERT INTO child9 VALUES(NULL) 
INSERT INTO child10 VALUES('I', 'II', 'III') 
INSERT INTO child10 VALUES(1, 2, 3) 
INSERT INTO child10 VALUES(NULL, NULL, NULL) 
"CREATE TABLE child1(a, b, FOREIGN KEY(a, b) REFERENCES p(c))"
      {number of columns in foreign key does not match the number of columns in the referenced table
CREATE TABLE p1(a, b, PRIMARY KEY(a, b));
    CREATE TABLE p2(a, b PRIMARY KEY);
    CREATE TABLE c1(c, d, FOREIGN KEY(c, d) REFERENCES p1);
    CREATE TABLE c2(a, b REFERENCES p2);
  
do_test e_fkey-23.$tn "
    catchsql {$sql
CREATE TABLE parent(x, y, UNIQUE(y, x));
    CREATE TABLE c1(a, b, FOREIGN KEY(a, b) REFERENCES parent(x, y));
    CREATE TABLE c2(a, b, FOREIGN KEY(a, b) REFERENCES parent(x, y));
    CREATE TABLE c3(a, b, FOREIGN KEY(a, b) REFERENCES parent(x, y));
    CREATE INDEX c2i ON c2(a, b);
    CREATE UNIQUE INDEX c3i ON c2(b, a);
  
do_test e_fkey-24.$tn "
    catchsql {$sql
CREATE TABLE artist(
      artistid    INTEGER PRIMARY KEY, 
      artistname  TEXT
    );
    CREATE TABLE track(
      trackid     INTEGER, 
      trackname   TEXT, 
      trackartist INTEGER,
      FOREIGN KEY(trackartist) REFERENCES artist(artistid)
    );
  
INSERT INTO artist VALUES(5, 'artist 5');
    INSERT INTO artist VALUES(6, 'artist 6');
    INSERT INTO artist VALUES(7, 'artist 7');
    INSERT INTO track VALUES(1, 'track 1', 5);
    INSERT INTO track VALUES(2, 'track 2', 6);
  
SELECT rowid FROM track WHERE trackartist = 5 
DELETE FROM artist WHERE artistid = 5 
SELECT rowid FROM track WHERE trackartist = 7 
DELETE FROM artist WHERE artistid = 7 
SELECT rowid FROM track WHERE trackartist = 6 
DELETE FROM artist WHERE artistid = 6 
CREATE TABLE parent(x, y, UNIQUE(y, x)) 
2 { 
    CREATE TABLE child(a, b, FOREIGN KEY(a, b) REFERENCES parent(x, y))
  
PRAGMA foreign_keys = OFF
PRAGMA foreign_keys = ON
DROP TABLE child
CREATE TABLE artist(
      artistid    INTEGER PRIMARY KEY, 
      artistname  TEXT
    );
    CREATE TABLE track(
      trackid     INTEGER,
      trackname   TEXT, 
      trackartist INTEGER REFERENCES artist
    );
    CREATE INDEX trackindex ON track(trackartist);
  
1 "CREATE TABLE c(jj REFERENCES p(x, y))" 
    {foreign key on jj should reference only one column of table p
CREATE TABLE p(x PRIMARY KEY);
    CREATE TABLE c(a, b, FOREIGN KEY(a,b) REFERENCES p);
  
DELETE FROM p
CREATE TABLE p(x, y, PRIMARY KEY(x,y));
    CREATE TABLE c(a REFERENCES p);
  
DELETE FROM p
CREATE TABLE album(
      albumartist TEXT,
      albumname TEXT,
      albumcover BINARY,
      PRIMARY KEY(albumartist, albumname)
    );
    CREATE TABLE song(
      songid INTEGER,
      songartist TEXT,
      songalbum TEXT,
      songname TEXT,
      FOREIGN KEY(songartist, songalbum) REFERENCES album(albumartist,albumname)
    );
  
INSERT INTO album VALUES('Elvis Presley', 'Elvis'' Christmas Album', NULL);
    INSERT INTO song VALUES(
      1, 'Elvis Presley', 'Elvis'' Christmas Album', 'Here Comes Santa Clause'
    );
  
INSERT INTO song VALUES(2, 'Elvis Presley', 'Elvis Is Back!', 'Fever');
  
INSERT INTO song VALUES(2, 'Elvis Presley', NULL, 'Fever');
    INSERT INTO song VALUES(3, NULL, 'Elvis Is Back', 'Soldier Boy');
  
CREATE TABLE king(a, b, PRIMARY KEY(a));
    CREATE TABLE prince(c REFERENCES king, d);
  
INSERT INTO prince VALUES(1, 2) 
CREATE TRIGGER kt AFTER INSERT ON prince WHEN
      NOT EXISTS (SELECT a FROM king WHERE a = new.c)
    BEGIN
      INSERT INTO king VALUES(new.c, NULL);
    END
  
INSERT INTO prince VALUES(1, 2) 
BEGIN;
    INSERT INTO prince VALUES(2, 3);
    DROP TRIGGER kt;
  
INSERT INTO prince VALUES(3, 4) 
COMMIT;
    SELECT * FROM king;
  
do_test e_fkey-32.$tn "
    catchsql {$sql
do_test e_fkey-33.$tn "
    catchsql {$sql
CREATE TABLE parent(x, y);
    CREATE UNIQUE INDEX pi ON parent(x, y);
    CREATE TABLE child(a, b,
      FOREIGN KEY(a, b) REFERENCES parent(x, y) DEFERRABLE INITIALLY DEFERRED
    );
  
CREATE TABLE parent(x, y, z, PRIMARY KEY(x,y,z));
    CREATE TABLE c1(a, b, c,
      FOREIGN KEY(a, b, c) REFERENCES parent NOT DEFERRABLE INITIALLY DEFERRED
    );
    CREATE TABLE c2(a, b, c,
      FOREIGN KEY(a, b, c) REFERENCES parent NOT DEFERRABLE INITIALLY IMMEDIATE
    );
    CREATE TABLE c3(a, b, c,
      FOREIGN KEY(a, b, c) REFERENCES parent NOT DEFERRABLE
    );
    CREATE TABLE c4(a, b, c,
      FOREIGN KEY(a, b, c) REFERENCES parent DEFERRABLE INITIALLY IMMEDIATE
    );
    CREATE TABLE c5(a, b, c,
      FOREIGN KEY(a, b, c) REFERENCES parent DEFERRABLE
    );
    CREATE TABLE c6(a, b, c, FOREIGN KEY(a, b, c) REFERENCES parent);

    -- This FK constraint is the only deferrable one.
    CREATE TABLE c7(a, b, c,
      FOREIGN KEY(a, b, c) REFERENCES parent DEFERRABLE INITIALLY DEFERRED
    );

    INSERT INTO parent VALUES('a', 'b', 'c');
    INSERT INTO parent VALUES('d', 'e', 'f');
    INSERT INTO parent VALUES('g', 'h', 'i');
    INSERT INTO parent VALUES('j', 'k', 'l');
    INSERT INTO parent VALUES('m', 'n', 'o');
    INSERT INTO parent VALUES('p', 'q', 'r');
    INSERT INTO parent VALUES('s', 't', 'u');

    INSERT INTO c1 VALUES('a', 'b', 'c');
    INSERT INTO c2 VALUES('d', 'e', 'f');
    INSERT INTO c3 VALUES('g', 'h', 'i');
    INSERT INTO c4 VALUES('j', 'k', 'l');
    INSERT INTO c5 VALUES('m', 'n', 'o');
    INSERT INTO c6 VALUES('p', 'q', 'r');
    INSERT INTO c7 VALUES('s', 't', 'u');
  
do_test e_fkey-34.$tn "catchsql {$sql
CREATE TABLE artist(
      artistid    INTEGER PRIMARY KEY, 
      artistname  TEXT
    );
    CREATE TABLE track(
      trackid     INTEGER,
      trackname   TEXT, 
      trackartist INTEGER REFERENCES artist(artistid) DEFERRABLE INITIALLY DEFERRED
    );
  
BEGIN;
      INSERT INTO track VALUES(1, 'White Christmas', 5);
  
INSERT INTO artist VALUES(5, 'Bing Crosby');
    COMMIT;
  
CREATE TABLE t1(a PRIMARY KEY,
      b REFERENCES t1 DEFERRABLE INITIALLY DEFERRED
    );
    INSERT INTO t1 VALUES(1, 1);
    INSERT INTO t1 VALUES(2, 2);
    INSERT INTO t1 VALUES(3, 3);
  
BEGIN;
      SAVEPOINT one;
        INSERT INTO t1 VALUES(4, 5);
      RELEASE one;
  
UPDATE t1 SET a = 5 WHERE a = 4;
    COMMIT;
  
SAVEPOINT one;
      SAVEPOINT two;
        INSERT INTO t1 VALUES(6, 7);
      RELEASE two;
  
RELEASE one
UPDATE t1 SET a = 7 WHERE a = 6;
    RELEASE one;
  
SAVEPOINT one;
      SAVEPOINT two;
        INSERT INTO t1 VALUES(9, 10);
      RELEASE two;
  
RELEASE one
ROLLBACK TO one ; RELEASE one
DELETE FROM t1 WHERE a>3;
    SELECT * FROM t1;
  
BEGIN;
      INSERT INTO t1 VALUES(4, 4);
      SAVEPOINT one;
        INSERT INTO t1 VALUES(5, 6);
        SELECT * FROM t1;
  
ROLLBACK TO one;
    COMMIT;
    SELECT * FROM t1;
  
SAVEPOINT a;
      INSERT INTO t1 VALUES(5, 5);
      SAVEPOINT b;
        INSERT INTO t1 VALUES(6, 7);
        SAVEPOINT c;
          INSERT INTO t1 VALUES(7, 8);
  
RELEASE a
ROLLBACK TO c
RELEASE a
ROLLBACK TO b;
    RELEASE a;
    SELECT * FROM t1;
  
CREATE TABLE p(a, b PRIMARY KEY, c);
    CREATE TABLE c1(d, e, f DEFAULT 'k0' REFERENCES p 
      ON UPDATE SET DEFAULT
      ON DELETE SET NULL
    );

    INSERT INTO p VALUES(0, 'k0', '');
    INSERT INTO p VALUES(1, 'k1', 'I');
    INSERT INTO p VALUES(2, 'k2', 'II');
    INSERT INTO p VALUES(3, 'k3', 'III');

    INSERT INTO c1 VALUES(1, 'xx', 'k1');
    INSERT INTO c1 VALUES(2, 'xx', 'k2');
    INSERT INTO c1 VALUES(3, 'xx', 'k3');
  
UPDATE p SET b = 'k4' WHERE a = 1;
    SELECT * FROM c1;
  
DELETE FROM p WHERE a = 2;
    SELECT * FROM c1;
  
CREATE UNIQUE INDEX pi ON p(c);
    REPLACE INTO p VALUES(5, 'k5', 'III');
    SELECT * FROM c1;
  
CREATE TABLE parent(x PRIMARY KEY, y);
    CREATE TABLE child1(a, 
      b REFERENCES parent ON UPDATE NO ACTION ON DELETE RESTRICT
    );
    CREATE TABLE child2(a, 
      b REFERENCES parent ON UPDATE RESTRICT ON DELETE SET NULL
    );
    CREATE TABLE child3(a, 
      b REFERENCES parent ON UPDATE SET NULL ON DELETE SET DEFAULT
    );
    CREATE TABLE child4(a, 
      b REFERENCES parent ON UPDATE SET DEFAULT ON DELETE CASCADE
    );

    -- Create some foreign keys that use the default action - "NO ACTION"
    CREATE TABLE child5(a, b REFERENCES parent ON UPDATE CASCADE);
    CREATE TABLE child6(a, b REFERENCES parent ON DELETE RESTRICT);
    CREATE TABLE child7(a, b REFERENCES parent ON DELETE NO ACTION);
    CREATE TABLE child8(a, b REFERENCES parent ON UPDATE NO ACTION);
  
CREATE TABLE parent(p1, p2, PRIMARY KEY(p1, p2));
    CREATE TABLE child(c1, c2, 
      FOREIGN KEY(c1, c2) REFERENCES parent
      ON UPDATE NO ACTION
      ON DELETE NO ACTION
      DEFERRABLE INITIALLY DEFERRED
    );
    INSERT INTO parent VALUES('j', 'k');
    INSERT INTO parent VALUES('l', 'm');
    INSERT INTO child VALUES('j', 'k');
    INSERT INTO child VALUES('l', 'm');
  
BEGIN;
      UPDATE parent SET p1='k' WHERE p1='j';
      DELETE FROM parent WHERE p1='l';
      SELECT * FROM child;
  
CREATE TABLE parent(p1, p2);
    CREATE UNIQUE INDEX parent_i ON parent(p1, p2);
    CREATE TABLE child1(c1, c2, 
      FOREIGN KEY(c2, c1) REFERENCES parent(p1, p2) ON DELETE RESTRICT
    );
    CREATE TABLE child2(c1, c2, 
      FOREIGN KEY(c2, c1) REFERENCES parent(p1, p2) ON UPDATE RESTRICT
    );
  
INSERT INTO parent VALUES('a', 'b');
    INSERT INTO parent VALUES('c', 'd');
    INSERT INTO child1 VALUES('b', 'a');
    INSERT INTO child2 VALUES('d', 'c');
  
DELETE FROM parent WHERE p1 = 'a' 
UPDATE parent SET p2 = 'e' WHERE p1 = 'c' 
CREATE TABLE parent(x PRIMARY KEY);
    CREATE TABLE child1(c REFERENCES parent ON UPDATE RESTRICT);
    CREATE TABLE child2(c REFERENCES parent ON UPDATE NO ACTION);

    INSERT INTO parent VALUES('key1');
    INSERT INTO parent VALUES('key2');
    INSERT INTO child1 VALUES('key1');
    INSERT INTO child2 VALUES('key2');

    CREATE TRIGGER parent_t AFTER UPDATE ON parent BEGIN
      UPDATE child1 set c = new.x WHERE c = old.x;
      UPDATE child2 set c = new.x WHERE c = old.x;
    END;
  
UPDATE parent SET x = 'key one' WHERE x = 'key1' 
UPDATE parent SET x = 'key two' WHERE x = 'key2';
    SELECT * FROM child2;
  
CREATE TABLE parent(x PRIMARY KEY);
    CREATE TABLE child1(c REFERENCES parent ON DELETE RESTRICT);
    CREATE TABLE child2(c REFERENCES parent ON DELETE NO ACTION);

    INSERT INTO parent VALUES('key1');
    INSERT INTO parent VALUES('key2');
    INSERT INTO child1 VALUES('key1');
    INSERT INTO child2 VALUES('key2');

    CREATE TRIGGER parent_t AFTER DELETE ON parent BEGIN
      UPDATE child1 SET c = NULL WHERE c = old.x;
      UPDATE child2 SET c = NULL WHERE c = old.x;
    END;
  
DELETE FROM parent WHERE x = 'key1' 
DELETE FROM parent WHERE x = 'key2';
    SELECT * FROM child2;
  
CREATE TABLE parent(x PRIMARY KEY);
    CREATE TABLE child1(c REFERENCES parent ON DELETE RESTRICT);
    CREATE TABLE child2(c REFERENCES parent ON DELETE NO ACTION);

    INSERT INTO parent VALUES('key1');
    INSERT INTO parent VALUES('key2');
    INSERT INTO child1 VALUES('key1');
    INSERT INTO child2 VALUES('key2');
  
REPLACE INTO parent VALUES('key1') 
REPLACE INTO parent VALUES('key2');
    SELECT * FROM child2;
  
CREATE TABLE parent(x PRIMARY KEY);
    CREATE TABLE child1(c REFERENCES parent ON UPDATE RESTRICT
      DEFERRABLE INITIALLY DEFERRED
    );
    CREATE TABLE child2(c REFERENCES parent ON UPDATE NO ACTION
      DEFERRABLE INITIALLY DEFERRED
    );

    INSERT INTO parent VALUES('key1');
    INSERT INTO parent VALUES('key2');
    INSERT INTO child1 VALUES('key1');
    INSERT INTO child2 VALUES('key2');
    BEGIN;
  
UPDATE parent SET x = 'key one' WHERE x = 'key1' 
UPDATE parent SET x = 'key two' WHERE x = 'key2' 
UPDATE child2 SET c = 'key two';
    COMMIT;
  
CREATE TABLE parent(x PRIMARY KEY);
    CREATE TABLE child1(c REFERENCES parent ON DELETE RESTRICT
      DEFERRABLE INITIALLY DEFERRED
    );
    CREATE TABLE child2(c REFERENCES parent ON DELETE NO ACTION
      DEFERRABLE INITIALLY DEFERRED
    );

    INSERT INTO parent VALUES('key1');
    INSERT INTO parent VALUES('key2');
    INSERT INTO child1 VALUES('key1');
    INSERT INTO child2 VALUES('key2');
    BEGIN;
  
DELETE FROM parent WHERE x = 'key1' 
DELETE FROM parent WHERE x = 'key2' 
UPDATE child2 SET c = NULL;
    COMMIT;
  
CREATE TABLE pA(x PRIMARY KEY);
    CREATE TABLE cA(c REFERENCES pA ON DELETE SET NULL);
    CREATE TABLE cB(c REFERENCES pA ON UPDATE SET NULL);

    INSERT INTO pA VALUES(X'ABCD');
    INSERT INTO pA VALUES(X'1234');
    INSERT INTO cA VALUES(X'ABCD');
    INSERT INTO cB VALUES(X'1234');
  
DELETE FROM pA WHERE rowid = 1;
    SELECT quote(x) FROM pA;
  
SELECT quote(c) FROM cA;
  
UPDATE pA SET x = X'8765' WHERE rowid = 2;
    SELECT quote(x) FROM pA;
  
SELECT quote(c) FROM cB 
CREATE TABLE pA(x PRIMARY KEY);
    CREATE TABLE cA(c DEFAULT X'0000' REFERENCES pA ON DELETE SET DEFAULT);
    CREATE TABLE cB(c DEFAULT X'9999' REFERENCES pA ON UPDATE SET DEFAULT);

    INSERT INTO pA(rowid, x) VALUES(1, X'0000');
    INSERT INTO pA(rowid, x) VALUES(2, X'9999');
    INSERT INTO pA(rowid, x) VALUES(3, X'ABCD');
    INSERT INTO pA(rowid, x) VALUES(4, X'1234');

    INSERT INTO cA VALUES(X'ABCD');
    INSERT INTO cB VALUES(X'1234');
  
DELETE FROM pA WHERE rowid = 3;
    SELECT quote(x) FROM pA ORDER BY rowid;
  
SELECT quote(c) FROM cA 
UPDATE pA SET x = X'8765' WHERE rowid = 4;
    SELECT quote(x) FROM pA ORDER BY rowid;
  
SELECT quote(c) FROM cB 
CREATE TABLE p1(a, b UNIQUE);
    CREATE TABLE c1(c REFERENCES p1(b) ON DELETE CASCADE, d);
    INSERT INTO p1 VALUES(NULL, NULL);
    INSERT INTO p1 VALUES(4, 4);
    INSERT INTO p1 VALUES(5, 5);
    INSERT INTO c1 VALUES(NULL, NULL);
    INSERT INTO c1 VALUES(4, 4);
    INSERT INTO c1 VALUES(5, 5);
    SELECT count(*) FROM c1;
  
DELETE FROM p1 WHERE a = 4;
    SELECT d, c FROM c1;
  
DELETE FROM p1;
    SELECT d, c FROM c1;
  
SELECT * FROM p1 
CREATE TABLE p1(a, b UNIQUE);
    CREATE TABLE c1(c REFERENCES p1(b) ON UPDATE CASCADE, d);
    INSERT INTO p1 VALUES(NULL, NULL);
    INSERT INTO p1 VALUES(4, 4);
    INSERT INTO p1 VALUES(5, 5);
    INSERT INTO c1 VALUES(NULL, NULL);
    INSERT INTO c1 VALUES(4, 4);
    INSERT INTO c1 VALUES(5, 5);
    SELECT count(*) FROM c1;
  
UPDATE p1 SET b = 10 WHERE b = 5;
    SELECT d, c FROM c1;
  
UPDATE p1 SET b = 11 WHERE b = 4;
    SELECT d, c FROM c1;
  
UPDATE p1 SET b = 6 WHERE b IS NULL;
    SELECT d, c FROM c1;
  
SELECT * FROM p1 
CREATE TABLE artist(
      artistid    INTEGER PRIMARY KEY, 
      artistname  TEXT
    );
    CREATE TABLE track(
      trackid     INTEGER,
      trackname   TEXT, 
      trackartist INTEGER REFERENCES artist(artistid) ON UPDATE CASCADE
    );

    INSERT INTO artist VALUES(1, 'Dean Martin');
    INSERT INTO artist VALUES(2, 'Frank Sinatra');
    INSERT INTO track VALUES(11, 'That''s Amore', 1);
    INSERT INTO track VALUES(12, 'Christmas Blues', 1);
    INSERT INTO track VALUES(13, 'My Way', 2);
  
UPDATE artist SET artistid = 100 WHERE artistname = 'Dean Martin';
  
SELECT * FROM artist 
SELECT * FROM track 
CREATE TABLE parent(a COLLATE nocase, b, c, PRIMARY KEY(c, a));
    CREATE TABLE child(d DEFAULT 'a', e, f DEFAULT 'c',
      FOREIGN KEY(f, d) REFERENCES parent ON UPDATE SET DEFAULT
    );

    INSERT INTO parent VALUES('A', 'b', 'c');
    INSERT INTO parent VALUES('ONE', 'two', 'three');
    INSERT INTO child VALUES('one', 'two', 'three');
  
BEGIN;
      UPDATE parent SET a = '' WHERE a = 'oNe';
      SELECT * FROM child;
  
ROLLBACK;
    DELETE FROM parent WHERE a = 'A';
    SELECT * FROM parent;
  
UPDATE parent SET a = '' WHERE a = 'oNe' 
CREATE TABLE artist(
      artistid    INTEGER PRIMARY KEY, 
      artistname  TEXT
    );
    CREATE TABLE track(
      trackid     INTEGER,
      trackname   TEXT, 
      trackartist INTEGER DEFAULT 0 REFERENCES artist(artistid) ON DELETE SET DEFAULT
    );
    INSERT INTO artist VALUES(3, 'Sammy Davis Jr.');
    INSERT INTO track VALUES(14, 'Mr. Bojangles', 3);
  
DELETE FROM artist WHERE artistname = 'Sammy Davis Jr.' 
INSERT INTO artist VALUES(0, 'Unknown Artist');
    DELETE FROM artist WHERE artistname = 'Sammy Davis Jr.';
  
SELECT * FROM artist 
SELECT * FROM track 
CREATE TABLE parent(x PRIMARY KEY);

    CREATE TRIGGER bu BEFORE UPDATE ON parent BEGIN
      INSERT INTO parent VALUES(new.x-old.x);
    END;
    CREATE TABLE child(
      a DEFAULT (maxparent()) REFERENCES parent ON UPDATE SET DEFAULT
    );
    CREATE TRIGGER au AFTER UPDATE ON parent BEGIN
      INSERT INTO parent VALUES(new.x+old.x);
    END;

    INSERT INTO parent VALUES(1);
    INSERT INTO child VALUES(1);
  
UPDATE parent SET x = 22;
    SELECT * FROM parent ORDER BY rowid; SELECT 'xxx' ; SELECT a FROM child;
  
DELETE FROM child;
    DELETE FROM parent;
    INSERT INTO parent VALUES(-1);
    INSERT INTO child VALUES(-1);
    UPDATE parent SET x = 22;
    SELECT * FROM parent ORDER BY rowid; SELECT 'xxx' ; SELECT a FROM child;
  
CREATE TABLE zeus(a INTEGER COLLATE NOCASE, b, PRIMARY KEY(a, b));
    CREATE TABLE apollo(c, d, 
      FOREIGN KEY(c, d) REFERENCES zeus ON UPDATE CASCADE
    );
    INSERT INTO zeus VALUES('abc', 'xyz');
    INSERT INTO apollo VALUES('ABC', 'xyz');
  
UPDATE zeus SET a = 'aBc';
    SELECT * FROM apollo;
  
UPDATE zeus SET a = 1, b = 1;
    SELECT * FROM apollo;
  
UPDATE zeus SET a = 1, b = 1;
    SELECT typeof(c), c, typeof(d), d FROM apollo;
  
UPDATE zeus SET a = '1';
    SELECT typeof(c), c, typeof(d), d FROM apollo;
  
UPDATE zeus SET b = '1';
    SELECT typeof(c), c, typeof(d), d FROM apollo;
  
UPDATE zeus SET b = NULL;
    SELECT typeof(c), c, typeof(d), d FROM apollo;
  
CREATE TABLE parent(x PRIMARY KEY);
    CREATE TABLE child(y REFERENCES parent ON UPDATE SET NULL);
    INSERT INTO parent VALUES('key');
    INSERT INTO child VALUES('key');
  
UPDATE parent SET x = 'key';
    SELECT IFNULL(y, 'null') FROM child;
  
UPDATE parent SET x = 'key2';
    SELECT IFNULL(y, 'null') FROM child;
  
PRAGMA foreign_keys = OFF
PRAGMA foreign_keys = ON
CREATE TABLE tbl(a, b); INSERT INTO tbl VALUES(1, 2); 
CREATE TABLE 'p 1 "parent one"'(a REFERENCES 'p 1 "parent one"', b, PRIMARY KEY(b));

    CREATE TABLE c1(c, d REFERENCES 'p 1 "parent one"' ON UPDATE CASCADE);
    CREATE TABLE c2(e, f, FOREIGN KEY(f) REFERENCES 'p 1 "parent one"' ON UPDATE CASCADE);
    CREATE TABLE c3(e, 'f col 2', FOREIGN KEY('f col 2') REFERENCES 'p 1 "parent one"' ON UPDATE CASCADE);

    INSERT INTO 'p 1 "parent one"' VALUES(1, 1);
    INSERT INTO c1 VALUES(1, 1);
    INSERT INTO c2 VALUES(1, 1);
    INSERT INTO c3 VALUES(1, 1);

    -- CREATE TABLE q(a, b, PRIMARY KEY(b));
  
ALTER TABLE 'p 1 "parent one"' RENAME TO p 
UPDATE p SET a = 'xxx', b = 'xxx';
    SELECT * FROM p;
    SELECT * FROM c1;
    SELECT * FROM c2;
    SELECT * FROM c3;
  
SELECT sql FROM sqlite_master WHERE type = 'table'
CREATE TABLE p(a, b, PRIMARY KEY(a, b));

    CREATE TABLE c1(c, d, FOREIGN KEY(c, d) REFERENCES p ON DELETE SET NULL);
    CREATE TABLE c2(c, d, FOREIGN KEY(c, d) REFERENCES p ON DELETE SET DEFAULT);
    CREATE TABLE c3(c, d, FOREIGN KEY(c, d) REFERENCES p ON DELETE CASCADE);
    CREATE TABLE c4(c, d, FOREIGN KEY(c, d) REFERENCES p ON DELETE RESTRICT);
    CREATE TABLE c5(c, d, FOREIGN KEY(c, d) REFERENCES p ON DELETE NO ACTION);

    CREATE TABLE c6(c, d, 
      FOREIGN KEY(c, d) REFERENCES p ON DELETE RESTRICT 
      DEFERRABLE INITIALLY DEFERRED
    );
    CREATE TABLE c7(c, d, 
      FOREIGN KEY(c, d) REFERENCES p ON DELETE NO ACTION
      DEFERRABLE INITIALLY DEFERRED
    );

    CREATE TABLE log(msg);
    CREATE TRIGGER tt AFTER DELETE ON p BEGIN
      INSERT INTO log VALUES('delete ' || old.rowid);
    END;
  
INSERT INTO p VALUES('a', 'b');
    INSERT INTO c1 VALUES('a', 'b');
    INSERT INTO c2 VALUES('a', 'b');
    INSERT INTO c3 VALUES('a', 'b');
    BEGIN;
      DROP TABLE p;
      SELECT * FROM c1;
  
SELECT * FROM c2 
SELECT * FROM c3 
SELECT * FROM log 
BEGIN;
      DELETE FROM p;
      SELECT * FROM log;
    ROLLBACK;
  
DELETE FROM c1;
    DELETE FROM c2;
    DELETE FROM c3;
  
INSERT INTO c5 VALUES('a', 'b') 
DROP TABLE p 
SELECT * FROM p 
BEGIN;
      DROP TABLE p;
  
SELECT * FROM p;
    SELECT * FROM c5;
    ROLLBACK;
  
DELETE FROM c1 ; DELETE FROM c2 ; DELETE FROM c3 ;
    DELETE FROM c4 ; DELETE FROM c5 ; DELETE FROM c6 ;
    DELETE FROM c7 
  
INSERT INTO c7 VALUES('a', 'b') 
BEGIN;
      DROP TABLE p;
  
CREATE TABLE p(a, b, PRIMARY KEY(a, b)) 
INSERT INTO p VALUES('a', 'b') 
PRAGMA foreign_keys = OFF;

    CREATE TABLE p(a PRIMARY KEY, b REFERENCES nosuchtable);
    CREATE TABLE c1(c, d, FOREIGN KEY(c, d) REFERENCES a);
    CREATE TABLE c2(c REFERENCES p(b), d);
    CREATE TABLE c3(c REFERENCES p ON DELETE SET NULL, d);

    INSERT INTO p VALUES(1, 2);
    INSERT INTO c1 VALUES(1, 2);
    INSERT INTO c2 VALUES(1, 2);
    INSERT INTO c3 VALUES(1, 2);
  
PRAGMA foreign_keys = ON 
DELETE FROM p 
BEGIN;
      DROP TABLE p;
      SELECT * FROM c3;
    ROLLBACK;
  
CREATE TABLE nosuchtable(x PRIMARY KEY) 
DELETE FROM p 
DROP TABLE c1 
DELETE FROM p 
DROP TABLE c2 
DELETE FROM p 
CREATE TABLE t1(a, b) ; INSERT INTO t1 VALUES(1, 2) 
ALTER TABLE t1 ADD COLUMN c DEFAULT 'xxx' REFERENCES t2 
PRAGMA foreign_keys = OFF 
ALTER TABLE t1 ADD COLUMN c DEFAULT 'xxx' REFERENCES t2 
SELECT sql FROM sqlite_master WHERE name = 't1' 
PRAGMA foreign_keys = ON 
CREATE TABLE p(a UNIQUE);
    CREATE TABLE c(b REFERENCES p(a));
    BEGIN;
      ALTER TABLE p RENAME TO parent;
      SELECT sql FROM sqlite_master WHERE name = 'c';
    ROLLBACK;
  
PRAGMA foreign_keys = OFF;
    PRAGMA legacy_alter_table = ON;
    ALTER TABLE p RENAME TO parent;
    SELECT sql FROM sqlite_master WHERE name = 'c';
  
PRAGMA foreign_keys = ON 
PRAGMA legacy_alter_table = OFF 
CREATE TABLE p(a UNIQUE);
    CREATE TABLE c(b REFERENCES p(a) ON DELETE SET NULL);
    INSERT INTO p VALUES('x');
    INSERT INTO c VALUES('x');
    BEGIN;
      DROP TABLE p;
      SELECT * FROM c;
    ROLLBACK;
  
PRAGMA foreign_keys = OFF;
    DROP TABLE p;
    SELECT * FROM c;
  
PRAGMA foreign_keys = ON 
INSERT INTO p VALUES(1, 2, 3)         
INSERT INTO c VALUES('w', 2, 3)       
INSERT INTO c VALUES('x', 'x', NULL)  
INSERT INTO c VALUES('y', NULL, 'x')  
INSERT INTO c VALUES('z', NULL, NULL) 
INSERT INTO c VALUES('a', 2, 4) 
SET CONSTRAINTS ALL IMMEDIATE 
SET CONSTRAINTS ALL DEFERRED 
CREATE TABLE p(a, b, PRIMARY KEY(a, b));
    CREATE TABLE cd(c, d, 
      FOREIGN KEY(c, d) REFERENCES p DEFERRABLE INITIALLY DEFERRED);
    CREATE TABLE ci(c, d, 
      FOREIGN KEY(c, d) REFERENCES p DEFERRABLE INITIALLY IMMEDIATE);
    BEGIN;
  
INSERT INTO ci VALUES('x', 'y') 
INSERT INTO cd VALUES('x', 'y') 
COMMIT 
DELETE FROM cd;
    COMMIT;
  
BEGIN;
    CREATE TABLE t0(a PRIMARY KEY, b);
    INSERT INTO t0 VALUES('x0', NULL);
  
BEGIN;
    CREATE TABLE t0(a PRIMARY KEY);
    INSERT INTO t0 VALUES('xxx');
  
CREATE TABLE t1(a PRIMARY KEY, b REFERENCES t1 ON DELETE CASCADE);
      INSERT INTO t1 VALUES(1, NULL);
      INSERT INTO t1 VALUES(2, 1);
      INSERT INTO t1 VALUES(3, 2);
      INSERT INTO t1 VALUES(4, 3);
      INSERT INTO t1 VALUES(5, 4);
      SELECT count(*) FROM t1;
    
SELECT count(*) FROM t1 WHERE a = 1 
DELETE FROM t1 WHERE a = 1;
      SELECT count(*) FROM t1;
    
