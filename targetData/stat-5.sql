

  PRAGMA auto_vacuum = OFF;
  CREATE TABLE tx(y);
  ATTACH ':memory:' AS aux1;
  CREATE VIRTUAL TABLE temp.stat USING dbstat(aux1);
  CREATE TABLE aux1.t1(x);
  INSERT INTO t1 VALUES(zeroblob(1513));
  INSERT INTO t1 VALUES(zeroblob(1514));
  SELECT name, path, pageno, pagetype, ncell, payload, unused, mx_payload
    FROM stat WHERE name = 't1';



  SELECT name, quote(path), pageno, quote(pagetype), ncell, payload,
         unused, mx_payload, '|' FROM dbstat('main',1);



  SELECT name, quote(path), pageno, quote(pagetype), ncell, payload,
         unused, mx_payload, '|' FROM dbstat('aux1',1);

