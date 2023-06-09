

  CREATE TABLE t6(a, b TEXT);
  CREATE INDEX i6 ON t6(b, a);
  CREATE VIRTUAL TABLE e6 USING echo(t6);


    1 "SELECT * FROM e6 WHERE b LIKE '8abc'" {
      xBestIndex 
         {SELECT rowid, a, b FROM 't6' WHERE b >= ? AND b < ? AND b like ?

