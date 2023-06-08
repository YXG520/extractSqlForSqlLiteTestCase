lappend files aux$ii "test.db$ii"

ATTACH 'x.db' AS next;

ATTACH DATABASE '' AS aux;
  CREATE TABLE IF NOT EXISTS aux.t1(a, b);
  CREATE TEMPORARY TRIGGER tr1 DELETE ON t1 BEGIN 
    DELETE FROM t1; 
  END;
  CREATE TABLE temp.t1(a, b);

DETACH DATABASE aux;

DROP TRIGGER tr1;

