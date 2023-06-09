

  CREATE TEMP TABLE saved_content(x);
  INSERT INTO saved_content(x) SELECT data FROM sqlite_dbpage WHERE pgno=4;
  UPDATE sqlite_dbpage SET data=zeroblob(4096) WHERE pgno=4;



  PRAGMA integrity_check;



  SELECT pgno, quote(substr(data,1,5)) FROM sqlite_dbpage('main') ORDER BY pgno;



  UPDATE sqlite_dbpage SET data=(SELECT x FROM saved_content) WHERE pgno=4;



  PRAGMA integrity_check;



  DELETE FROM saved_content;
  INSERT INTO saved_content(x) 
     SELECT data FROM sqlite_dbpage WHERE schema='aux1' AND pgno=2;



  UPDATE sqlite_dbpage SET data=zeroblob(4096) WHERE pgno=2 AND schema='aux1';



  PRAGMA aux1.integrity_check;



  UPDATE sqlite_dbpage SET data=(SELECT x FROM saved_content)
   WHERE pgno=2 AND schema='aux1';



  PRAGMA aux1.integrity_check;

