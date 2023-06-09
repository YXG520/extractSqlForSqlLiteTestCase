

    ATTACH DATABASE '/nodir/nofile.x' AS notadb;
  


    ATTACH DATABASE ':memory:' AS notadb;
  


    DETACH DATABASE notadb;
  

    PRAGMA database_list;
  
create temp table dummy(dummy)
