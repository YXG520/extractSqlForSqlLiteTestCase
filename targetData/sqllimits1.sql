sqlite3_limit db SQLITE_LIMIT_LENGTH -1

sqlite3_limit db SQLITE_LIMIT_SQL_LENGTH -1

sqlite3_limit db SQLITE_LIMIT_COLUMN -1

sqlite3_limit db SQLITE_LIMIT_EXPR_DEPTH -1

sqlite3_limit db SQLITE_LIMIT_COMPOUND_SELECT -1

sqlite3_limit db SQLITE_LIMIT_VDBE_OP -1

sqlite3_limit db SQLITE_LIMIT_FUNCTION_ARG -1

sqlite3_limit db SQLITE_LIMIT_ATTACHED -1

sqlite3_limit db SQLITE_LIMIT_LIKE_PATTERN_LENGTH -1

sqlite3_limit db SQLITE_LIMIT_VARIABLE_NUMBER -1

sqlite3_limit db SQLITE_LIMIT_TRIGGER_DEPTH -1

sqlite3_limit db SQLITE_LIMIT_WORKER_THREADS 99999
  sqlite3_limit db SQLITE_LIMIT_WORKER_THREADS -1

sqlite3_limit db SQLITE_LIMIT_TOOSMALL 123

sqlite3_limit db SQLITE_LIMIT_TOOSMALL 123

sqlite3_limit db SQLITE_LIMIT_TOOBIG 123

sqlite3_limit db SQLITE_LIMIT_TOOBIG 123

do_test sqllimits1-2.1.1 {
    sqlite3_limit db SQLITE_LIMIT_LENGTH \
                    [expr {$::SQLITE_MAX_LENGTH/2
sqlite3_limit db SQLITE_LIMIT_LENGTH -1
  
do_test sqllimits1-2.2.1 {
    sqlite3_limit db SQLITE_LIMIT_SQL_LENGTH \
                    [expr {$::SQLITE_MAX_SQL_LENGTH/2
sqlite3_limit db SQLITE_LIMIT_SQL_LENGTH -1
  
do_test sqllimits1-2.3.1 {
    sqlite3_limit db SQLITE_LIMIT_COLUMN \
                    [expr {$::SQLITE_MAX_COLUMN/2
sqlite3_limit db SQLITE_LIMIT_COLUMN -1
  
do_test sqllimits1-2.4.1 {
    sqlite3_limit db SQLITE_LIMIT_EXPR_DEPTH \
                    [expr {$::SQLITE_MAX_EXPR_DEPTH/2
sqlite3_limit db SQLITE_LIMIT_EXPR_DEPTH -1
  
do_test sqllimits1-2.5.1 {
    sqlite3_limit db SQLITE_LIMIT_COMPOUND_SELECT \
                    [expr {$::SQLITE_MAX_COMPOUND_SELECT/2
sqlite3_limit db SQLITE_LIMIT_COMPOUND_SELECT -1
  
do_test sqllimits1-2.6.1 {
    sqlite3_limit db SQLITE_LIMIT_VDBE_OP \
                    [expr {$::SQLITE_MAX_VDBE_OP/2
sqlite3_limit db SQLITE_LIMIT_VDBE_OP -1
  
do_test sqllimits1-2.7.1 {
    sqlite3_limit db SQLITE_LIMIT_FUNCTION_ARG \
                    [expr {$::SQLITE_MAX_FUNCTION_ARG/2
sqlite3_limit db SQLITE_LIMIT_FUNCTION_ARG -1
  
do_test sqllimits1-2.8.1 {
    sqlite3_limit db SQLITE_LIMIT_ATTACHED \
                    [expr {$::SQLITE_MAX_ATTACHED/2
sqlite3_limit db SQLITE_LIMIT_ATTACHED -1
  
do_test sqllimits1-2.9.1 {
    sqlite3_limit db SQLITE_LIMIT_LIKE_PATTERN_LENGTH \
                    [expr {$::SQLITE_MAX_LIKE_PATTERN_LENGTH/2
sqlite3_limit db SQLITE_LIMIT_LIKE_PATTERN_LENGTH -1
  
do_test sqllimits1-2.10.1 {
    sqlite3_limit db SQLITE_LIMIT_VARIABLE_NUMBER \
                    [expr {$::SQLITE_MAX_VARIABLE_NUMBER/2
sqlite3_limit db SQLITE_LIMIT_VARIABLE_NUMBER -1
  
sqlite3_limit db2 SQLITE_LIMIT_LENGTH -1

sqlite3_limit db2 SQLITE_LIMIT_SQL_LENGTH -1

sqlite3_limit db2 SQLITE_LIMIT_COLUMN -1

sqlite3_limit db2 SQLITE_LIMIT_EXPR_DEPTH -1

sqlite3_limit db2 SQLITE_LIMIT_COMPOUND_SELECT -1

sqlite3_limit db2 SQLITE_LIMIT_VDBE_OP -1

sqlite3_limit db2 SQLITE_LIMIT_FUNCTION_ARG -1

sqlite3_limit db2 SQLITE_LIMIT_ATTACHED -1

sqlite3_limit db2 SQLITE_LIMIT_LIKE_PATTERN_LENGTH -1

sqlite3_limit db2 SQLITE_LIMIT_VARIABLE_NUMBER -1

sqlite3_limit db SQLITE_LIMIT_LENGTH 0x7fffffff
  sqlite3_limit db SQLITE_LIMIT_LENGTH -1

sqlite3_limit db SQLITE_LIMIT_SQL_LENGTH 0x7fffffff
  sqlite3_limit db SQLITE_LIMIT_SQL_LENGTH -1

sqlite3_limit db SQLITE_LIMIT_COLUMN 0x7fffffff
  sqlite3_limit db SQLITE_LIMIT_COLUMN -1

sqlite3_limit db SQLITE_LIMIT_EXPR_DEPTH 0x7fffffff
  sqlite3_limit db SQLITE_LIMIT_EXPR_DEPTH -1

sqlite3_limit db SQLITE_LIMIT_COMPOUND_SELECT 0x7fffffff
  sqlite3_limit db SQLITE_LIMIT_COMPOUND_SELECT -1

sqlite3_limit db SQLITE_LIMIT_VDBE_OP 0x7fffffff
  sqlite3_limit db SQLITE_LIMIT_VDBE_OP -1

sqlite3_limit db SQLITE_LIMIT_FUNCTION_ARG 0x7fffffff
  sqlite3_limit db SQLITE_LIMIT_FUNCTION_ARG -1

sqlite3_limit db SQLITE_LIMIT_ATTACHED 0x7fffffff
  sqlite3_limit db SQLITE_LIMIT_ATTACHED -1

sqlite3_limit db SQLITE_LIMIT_LIKE_PATTERN_LENGTH 0x7fffffff
  sqlite3_limit db SQLITE_LIMIT_LIKE_PATTERN_LENGTH -1

sqlite3_limit db SQLITE_LIMIT_VARIABLE_NUMBER 0x7fffffff
  sqlite3_limit db SQLITE_LIMIT_VARIABLE_NUMBER -1

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

execsql {
    PRAGMA max_page_count = 1000;
  
execsql { CREATE TABLE trig (a INTEGER, b INTEGER); 
CREATE TRIGGER update_b BEFORE UPDATE ON trig
      FOR EACH ROW BEGIN
        INSERT INTO trig VALUES (65, 'update_b');
      END;

    CREATE TRIGGER update_a AFTER UPDATE ON trig
      FOR EACH ROW BEGIN
        INSERT INTO trig VALUES (65, 'update_a');
      END;

    CREATE TRIGGER insert_b BEFORE INSERT ON trig
      FOR EACH ROW BEGIN
        UPDATE trig SET a = 1;
      END;

    CREATE TRIGGER insert_a AFTER INSERT ON trig
      FOR EACH ROW BEGIN
        UPDATE trig SET a = 1;
      END;
  
execsql {
    INSERT INTO trig VALUES (1,1); 
  
execsql {
    SELECT COUNT(*) FROM trig;
  
catchsql {
    INSERT INTO trig VALUES (1,10);
  
catchsql {
    SELECT COUNT(*) FROM trig;
  
execsql {
    PRAGMA max_page_count = 1000000;
    CREATE TABLE abc(a, b, c);
    INSERT INTO abc VALUES(1, 2, 3);
    INSERT INTO abc SELECT a||b||c, b||c||a, c||a||b FROM abc;
    INSERT INTO abc SELECT a||b||c, b||c||a, c||a||b FROM abc;
    INSERT INTO abc SELECT a||b||c, b||c||a, c||a||b FROM abc;
    INSERT INTO abc SELECT a||b||c, b||c||a, c||a||b FROM abc;
    INSERT INTO abc SELECT a||b||c, b||c||a, c||a||b FROM abc;
    INSERT INTO abc SELECT a||b||c, b||c||a, c||a||b FROM abc;
    INSERT INTO abc SELECT a||b||c, b||c||a, c||a||b FROM abc;
    INSERT INTO abc SELECT a||b||c, b||c||a, c||a||b FROM abc;
    INSERT INTO abc SELECT a, b, c FROM abc;
    INSERT INTO abc SELECT b, a, c FROM abc;
    INSERT INTO abc SELECT c, b, a FROM abc;
  
db close
  sqlite3 db test.db
  execsql {
    PRAGMA max_page_count = 1000;
  
SELECT count(*) FROM sqlite_master;
  
execsql {
    PRAGMA max_page_count;
  
execsql {
    DROP TABLE abc;
  
# Columns in a table.
  set cols [list]
  for {set i 0
lappend cols "c$i"
  
# Columns in the result-set of a SELECT.
  set cols [list]
  for {set i 0
lappend cols "sql AS sql$i"
  
# Columns in the result-set of a sub-SELECT.
  set cols [list]
  for {set i 0
lappend cols "sql AS sql$i"
  
# Columns in an index.
  set cols [list]
  for {set i 0
lappend cols c
  
# Columns in a GROUP BY clause.
  catchsql "SELECT * FROM t1 GROUP BY [join $cols ,]"

# Columns in an ORDER BY clause.
  catchsql "SELECT * FROM t1 ORDER BY [join $cols ,]"

# Assignments in an UPDATE statement.
  set cols [list]
  for {set i 0
lappend cols "c = 1"
  
# Columns in a view definition:
  set cols [list]
  for {set i 0
lappend cols "c$i"
  
SELECT * FROM v1
# Columns in a view definition (testing * expansion):
  set cols [list]
  for {set i 0
lappend cols "c$i"
  
DROP VIEW IF EXISTS v1
# ORDER BY columns
  set cols [list]
  for {set i 0
lappend cols c
  
# ORDER BY columns
  set cols [list]
  for {set i 0
lappend cols [expr {$i%3 + 1
puts -nonewline stderr "WARNING: Compile with -DSQLITE_MAX_EXPR_DEPTH to run "
  puts stderr "tests sqllimits1-9.X"

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
    
do_test sqllimits1-11.$max.1 {
    set vals [list]
    sqlite3_limit db SQLITE_LIMIT_FUNCTION_ARG $::max
    for {set i 0
set vals [list]
    for {set i 0
db function myfunc myfunc
    set vals [list]
    for {set i 0
set max $::SQLITE_MAX_ATTACHED
    for {set i 0
i
i
set max $::SQLITE_MAX_ATTACHED
    for {set i 0
i
set max $::SQLITE_MAX_VARIABLE_NUMBER
  catchsql "SELECT ?[expr {$max+1
set max $::SQLITE_MAX_VARIABLE_NUMBER
  set vals [list]
  for {set i 0
set max $::SQLITE_LIMIT_LIKE_PATTERN
  set ::pattern [string repeat "A%" [expr $max/2]]
  set ::string  [string repeat "A" [expr {$max*2
SELECT $::string LIKE $::pattern;
  
set max $::SQLITE_LIMIT_LIKE_PATTERN
  set ::pattern [string repeat "A%" [expr {($max/2) + 1
SELECT $::string LIKE $::pattern;
  
#  set ::N [expr int(([expr pow(2,32)]/50) + 1)]
#  expr (($::N*50) & 0xffffffff)<55
#
#  set ::format "[string repeat A 60][string repeat "%J" $::N]"
#  catchsql {
#    SELECT strftime($::format, 1);
#  
SELECT *,*,*,*,*,*,*,* FROM (
  SELECT *,*,*,*,*,*,*,* FROM (
  SELECT *,*,*,*,*,*,*,* FROM (
  SELECT *,*,*,*,*,*,*,* FROM (
  SELECT *,*,*,*,*,*,*,* FROM (
    SELECT 1,2,3,4,5,6,7,8,9,10
  )
  ))))

CREATE TABLE b1(x);
  INSERT INTO b1 VALUES(1), (2), (3), (4), (5), (6), (7), (8), (9), (10), (11);

INSERT INTO b1 VALUES(1), (2), (3), (4), (5), (6), (7), (8), (9), (10)
    UNION VALUES(11);

PRAGMA encoding = 'utf16';
  
