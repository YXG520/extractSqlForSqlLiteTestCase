set sql [encoding convertto unicode $zSql]
  append sql "\00\00"
  set stmt [sqlite3_prepare16 $db $sql -1 {
set sql [encoding convertto unicode $zSql]
  append sql "\00\00"
  set stmt [sqlite3_prepare16 $db $sql -1 {
pragma page_size=512;
    pragma auto_vacuum=2;
    pragma cache_size=16;
  
CREATE TABLE A(Id INTEGER, Name TEXT) 
pragma locking_mode=exclusive 
BEGIN EXCLUSIVE;
        INSERT INTO a VALUES(1, 'ABCDEFGHIJKLMNOP');
      
COMMIT
SELECT count(*) FROM a 
CREATE INDEX i1 ON a(id, name); 
pragma locking_mode=exclusive 
BEGIN EXCLUSIVE;
        INSERT INTO a VALUES(1, 'ABCDEFGHIJKLMNOP');
      
