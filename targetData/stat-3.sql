

  CREATE TABLE t4(x);
  CREATE INDEX i4 ON t4(x);
  INSERT INTO t4(rowid, x) VALUES(2, a_string(7777));
  SELECT name, path, pageno, pagetype, ncell, payload, unused, mx_payload
    FROM stat WHERE name != 'sqlite_schema' ORDER BY name;



  SELECT *, '|' FROM dbstat WHERE aggregate=TRUE ORDER BY name;


} 1 {

} 2   74  834   40 {

} 1024 | \
  t4            {
