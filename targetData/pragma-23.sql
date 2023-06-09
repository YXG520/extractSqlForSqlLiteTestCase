

    CREATE TABLE t1(a INTEGER PRIMARY KEY,b,c,d);
    CREATE INDEX i1 ON t1(b,c);
    CREATE INDEX i2 ON t1(c,d);
    CREATE INDEX i2x ON t1(d COLLATE nocase, c DESC);
    CREATE INDEX i3 ON t1(d,b+c,c);
    CREATE TABLE t2(x INTEGER REFERENCES t1);
  
SELECT name FROM sqlite_master


    DROP INDEX i2;
    CREATE INDEX i2 ON t1(c,d,b);
  
SELECT cid, name, '|' FROM out ORDER BY seqno

SELECT cid, name, "desc", coll, "key", '|' FROM out ORDER BY seqno

PRAGMA index_xinfo(i2)

PRAGMA index_xinfo(i2x)

PRAGMA index_xinfo(i3)


    DROP INDEX IF EXISTS i3;
    CREATE INDEX i3 ON t1(d,b,c);
  
SELECT seq, name, "unique", origin, '|' FROM out ORDER BY seq


      ALTER TABLE t1 ADD COLUMN e;
    

      PRAGMA table_info(t1);
    


    DROP TABLE t2;
    CREATE TABLE t2(x, y INTEGER REFERENCES t1);
  

    PRAGMA foreign_key_list(t2);
  
