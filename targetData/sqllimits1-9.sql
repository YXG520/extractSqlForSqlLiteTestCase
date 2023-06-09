

    set max $::SQLITE_MAX_EXPR_DEPTH
    set expr "(1 [string repeat {AND 1 

      SELECT $expr
    


    set max $::SQLITE_MAX_EXPR_DEPTH
    set expr "SELECT 1"
    for {set i 0
 $expr 


    execsql {
      PRAGMA max_page_count = 1000000;  -- 1 GB
      CREATE TABLE v0(a);
      INSERT INTO v0 VALUES(1);
    

          CREATE VIEW v${i


    catchsql {
      SELECT a FROM v199
    
