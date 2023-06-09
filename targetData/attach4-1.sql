

ATTACH '$f' AS $name
PRAGMA database_list

    lappend L $name [file tail $file]
  


  ATTACH 'x.db' AS next;


CREATE TABLE $name.tbl(x)
INSERT INTO $name.tbl VALUES('$f')

SELECT x FROM $name.tbl

SELECT x FROM $name.tbl

UPDATE $name.tbl SET x = '$f'

SELECT x FROM $name.tbl
