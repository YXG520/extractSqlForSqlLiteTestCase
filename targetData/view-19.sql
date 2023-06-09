

    CREATE VIEW v3308a AS SELECT rowid, * FROM t1;
  

    SELECT * FROM v3308a
  


    CREATE VIEW v3308b AS SELECT t1.rowid, t1.a, t1.b+t1.c FROM t1;
  

    SELECT * FROM v3308b
  


    CREATE VIEW v3308c AS SELECT t1.oid, A, t1.b+t1.c AS x FROM t1;
  

    SELECT * FROM v3308c
  
