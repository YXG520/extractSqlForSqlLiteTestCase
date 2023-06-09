

  PRAGMA table_info(dbstat);



  DROP TABLE dbstat;



  PRAGMA table_info=dbstat;



  PRAGMA auto_vacuum = OFF;
  CREATE VIRTUAL TABLE temp.stat USING dbstat;
  SELECT * FROM stat;



    PRAGMA journal_mode = WAL;
    PRAGMA journal_mode = delete;
    SELECT name, path, pageno, pagetype, ncell, payload, unused, mx_payload
      FROM stat;
  
