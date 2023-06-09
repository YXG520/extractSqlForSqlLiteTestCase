

  CREATE TABLE t0(a INTEGER PRIMARY KEY, b TEXT);
  WITH s(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM s WHERE i<400) 
  INSERT INTO t0 SELECT i, hex(randomblob(50)) FROM s;

  CREATE TABLE dir(f, t, imin, imax);



      ATTACH 'test.db$i' AS aux;
      CREATE TABLE aux.t$i (a INTEGER PRIMARY KEY, b TEXT);
      INSERT INTO aux.t$i SELECT * FROM t0 WHERE a BETWEEN $iMin AND $iMax;
      DETACH aux;
      INSERT INTO dir VALUES('test.db$i', 't$i', $iMin, $iMax);
    

    CREATE VIRTUAL TABLE temp.s1 USING swarmvtab('SELECT * FROM dir');
  

 
  DROP TABLE s1; 



  CREATE VIRTUAL TABLE temp.s1 USING swarmvtab('SELECT * FROM dir');
  SELECT count(*) FROM s1 WHERE rowid<50;

