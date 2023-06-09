
 pragma auto_vacuum = 0 
 pragma page_count; pragma main.page_count 

 
      CREATE TABLE abc(a, b, c);
      PRAGMA page_count;
      PRAGMA main.page_count;
      PRAGMA temp.page_count;
    

pragma PAGE_COUNT

 
      BEGIN;
      CREATE TABLE def(a, b, c);
      PRAGMA page_count;
    

pragma PAGE_COUNT



      ROLLBACK;
      PRAGMA page_count;
    


      PRAGMA auto_vacuum = 0;
      CREATE TABLE t1(a, b, c);
      CREATE TABLE t2(a, b, c);
      CREATE TABLE t3(a, b, c);
      CREATE TABLE t4(a, b, c);
    

      ATTACH 'test2.db' AS aux;
      PRAGMA aux.page_count;
    

pragma AUX.PAGE_COUNT
