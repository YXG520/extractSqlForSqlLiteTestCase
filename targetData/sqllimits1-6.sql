

  sqlite3_limit db SQLITE_LIMIT_SQL_LENGTH 50000
  set sql "SELECT 1 WHERE 1==1"
  set tail " /* A comment to take up space in order to make the string\
                longer without increasing the expression depth */\
                AND   1  ==  1"
  set N [expr {(50000 / [string length $tail])+1


  sqlite3_limit db SQLITE_LIMIT_SQL_LENGTH 50000
  set sql "SELECT 1 WHERE 1==1"
  set tail " /* A comment to take up space in order to make the string\
                longer without increasing the expression depth */\
                AND   1  ==  1"
  set N [expr {(50000 / [string length $tail])+1
 AND 0


  sqlite3_errmsg db

