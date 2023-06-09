

        ATTACH 'test2.db' as aux;
        CREATE TABLE tx(a, b);
        CREATE TABLE aux.ty(a, b);
      

        ATTACH 'test2.db' as aux;
        PRAGMA cache_size = 10;
        BEGIN;
        CREATE TABLE aux.t2(a, b, c);
        CREATE TABLE t1(a, b, c);
        COMMIT;
      

      SELECT * FROM sqlite_master;
      SELECT * FROM aux.sqlite_master;
    
