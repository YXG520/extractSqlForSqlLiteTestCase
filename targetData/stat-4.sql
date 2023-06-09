

  CREATE TABLE t5(x);
  CREATE INDEX i5 ON t5(x);
  SELECT name, path, pageno, pagetype, ncell, payload, unused, mx_payload
    FROM stat WHERE name = 't5' OR name = 'i5';

