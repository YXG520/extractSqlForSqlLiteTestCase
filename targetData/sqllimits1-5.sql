

  catchsql { SELECT randomblob(2147483647) 


  catchsql { SELECT zeroblob(2147483647) 


  catchsql { SELECT LENGTH(randomblob($::LARGESIZE)) 


  catchsql { SELECT quote(randomblob($::LARGESIZE)) 


  catchsql { SELECT LENGTH(zeroblob($::LARGESIZE)) 


  catchsql { SELECT quote(zeroblob($::LARGESIZE)) 


  catchsql { SELECT zeroblob(-1) 


  set ::str [string repeat A 65537]
  set ::rep [string repeat B 65537]
  catchsql { SELECT replace($::str, 'A', $::rep) 


  # Prior to 3.37.0 strftime() allocated a large static buffer into
  # which to format its output. Using that strategy, 2100 repeats was
  # enough to exceed 100KiB and provoke the error. As of 3.37.0 strftime()
  # uses the StrAccum functions, so it requires 12100 to fail.
  #
  # set ::str [string repeat %J 2100]
  set ::str [string repeat %J 12100]
  catchsql { SELECT length(strftime($::str, '2003-10-31')) 


  set ::str1 [string repeat A [expr {$SQLITE_LIMIT_LENGTH - 10
 SELECT $::str1 || $::str2 


  set ::str1 [string repeat ' [expr {$SQLITE_LIMIT_LENGTH - 10
 SELECT quote($::str1) 


  set ::str1 [string repeat ' [expr {$SQLITE_LIMIT_LENGTH - 10
 SELECT hex($::str1) 


  set ::STMT [sqlite3_prepare db "SELECT ?" -1 TAIL]
  sqlite3_bind_zeroblob $::STMT 1 [expr {$SQLITE_LIMIT_LENGTH + 1


  sqlite3_step $::STMT 



  sqlite3_reset $::STMT 



  set np1 [expr {$SQLITE_LIMIT_LENGTH + 1


    catch {sqlite3_bind_text16 $::STMT 1 $::str1 -1


  catch {sqlite3_bind_text $::STMT 1 $::str1 $np1


    catch {sqlite3_bind_text16 $::STMT 1 $::str1 [expr $np1+1]


  set n [expr {$np1-1


  catch {sqlite3_bind_text16 $::STMT 1 $::str1 $n


  execsql {
    CREATE TABLE t4(x);
    INSERT INTO t4 VALUES(1);
    INSERT INTO t4 VALUES(2);
    INSERT INTO t4 SELECT 2+x FROM t4;
  

    SELECT group_concat(hex(randomblob(20000))) FROM t4;
  
DROP TABLE t4


  catchsql "SELECT '$strvalue' AS x"



  catchsql "SELECT 'A$strvalue'"



  sqlite3_limit db SQLITE_LIMIT_LENGTH 0x7fffffff
  catchsql {SELECT 'A' || $::strvalue


  sqlite3_limit db SQLITE_LIMIT_LENGTH $SQLITE_LIMIT_LENGTH
  catchsql {SELECT 'A' || $::strvalue


  catchsql "SELECT x'$blobvalue' AS x"



  catchsql "SELECT '41$blobvalue'"



    catchsql {SELECT strftime('%Y ' || $::strvalue, '2008-01-02')


    catchsql {SELECT strftime('%Y-%m-%d ' || $::strvalue, '2008-01-02')
