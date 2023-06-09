
SELECT * FROM sqlite_temp_master
pragma database_list

      lappend res $idx $name
    


    CREATE TABLE t2(a TYPE_X, b [TYPE_Y], c "TYPE_Z");
    pragma table_info(t2)
  


    pragma table_info;
  


    CREATE TABLE t5(
      a TEXT DEFAULT CURRENT_TIMESTAMP, 
      b DEFAULT (5+3),
      c TEXT,
      d INTEGER DEFAULT NULL,
      e TEXT DEFAULT '',
      UNIQUE(b,c,d),
      PRIMARY KEY(e,b,c)
    );
    PRAGMA table_info(t5);
  


    CREATE TABLE t2_3(a,b INTEGER PRIMARY KEY,c);
    pragma table_info(t2_3)
  


      CREATE TABLE t3(a int references t2(b), b UNIQUE);
      pragma foreign_key_list(t3);
    


      pragma foreign_key_list;
    


      pragma foreign_key_list(t3_bogus);
    


      pragma foreign_key_list(t5);
    

SELECT seq, "name", "unique" FROM out ORDER BY seq
CREATE TABLE t3(a,b UNIQUE)


    CREATE INDEX t3i1 ON t3(a,b);
  
SELECT seqno, cid, name FROM out ORDER BY seqno

SELECT seqno, cid, name FROM out ORDER BY seqno


  CREATE INDEX t3i2 ON t3(b,a);
  PRAGMA index_info='t3i2';
  DROP INDEX t3i2;



    pragma index_info(t3i1_bogus);
  


      CREATE TABLE trial(col_main);
      CREATE TEMP TABLE trial(col_temp);
    


      PRAGMA table_info(trial);
    


      PRAGMA temp.table_info(trial);
    


      PRAGMA main.table_info(trial);
    


    CREATE TABLE test_table(
      one INT NOT NULL DEFAULT -1, 
      two text,
      three VARCHAR(45, 65) DEFAULT 'abcde',
      four REAL DEFAULT X'abcdef',
      five DEFAULT CURRENT_TIME
    );
  
SELECT cid, "name", type, "notnull", dflt_value, pk FROM out
            ORDER BY cid


    CREATE TABLE t68(a,b,c,PRIMARY KEY(a,b,a,c));
    PRAGMA table_info(t68);
  
