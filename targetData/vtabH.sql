CREATE TABLE t6(a, b TEXT);
  CREATE INDEX i6 ON t6(b, a);
  CREATE VIRTUAL TABLE e6 USING echo(t6);

1 "SELECT * FROM e6 WHERE b LIKE '8abc'" {
      xBestIndex 
         {SELECT rowid, a, b FROM 't6' WHERE b >= ? AND b < ? AND b like ?
CREATE VIRTUAL TABLE vars USING tclvar;
  SELECT name, arrayname, value FROM vars WHERE name = 'xyz';

SELECT name FROM fsdir WHERE dir = '.' AND name = 'test.db';
    SELECT name FROM fsdir WHERE dir = '.' AND name = '.'
  
SELECT path FROM fstree WHERE path NOT GLOB '*\$*' LIMIT $num_root_files;
    
SELECT path FROM fstree WHERE path GLOB $pwd ORDER BY 1
  
SELECT path, size FROM fstree 
       WHERE path GLOB $pwd || '/subdir/*' ORDER BY 1
    
SELECT path, size FROM fstree
       WHERE path LIKE $pwd || '/subdir/%' ORDER BY 1
    
SELECT sum(size) FROM fstree WHERE path LIKE $pwd || '/subdir/%'
    
SELECT size FROM fstree WHERE path = $pwd || '/subdir/x1.txt'
    
