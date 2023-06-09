

    CREATE INDEX i1 ON t1(b);
    SELECT * FROM t1 WHERE b=='y'
  


    SELECT * FROM t1 WHERE b=='y' AND rowid<0
  


    SELECT * FROM t1 WHERE b=='y' AND rowid<0 AND rowid>=-20
  


    SELECT * FROM t1 WHERE b>='y'
  


    SELECT * FROM t1 WHERE b>='y' AND rowid<10
  


    UPDATE t1 SET a=8 WHERE b=='y';
    SELECT * FROM t1 WHERE b=='y';
  


    SELECT rowid, * FROM t1;
  


    SELECT rowid, * FROM t1 WHERE b<'second'
  


    SELECT rowid, * FROM t1 WHERE 'second'>b
  


    SELECT rowid, * FROM t1 WHERE 8>rowid AND 'second'>b
  


    SELECT rowid, * FROM t1 WHERE 8>rowid AND 'second'>b AND 0<rowid
  


    SELECT rowid, * FROM t1 WHERE b>'a'
  


    DELETE FROM t1 WHERE rowid=4;
    SELECT * FROM t1 WHERE b>'a';
  


    UPDATE t1 SET a=-4 WHERE rowid=8;
    SELECT * FROM t1 WHERE b>'a';
  


    SELECT * FROM t1
  

  set ::sqlite_search_count 0
  return [concat [execsql $sql] $::sqlite_search_count]

