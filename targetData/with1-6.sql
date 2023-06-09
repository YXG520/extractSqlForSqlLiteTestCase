

  CREATE TABLE f(
      id INTEGER PRIMARY KEY, parentid REFERENCES f, name TEXT
  );

  INSERT INTO f VALUES(0, NULL, '');
  INSERT INTO f VALUES(1, 0, 'bin');
    INSERT INTO f VALUES(2, 1, 'true');
    INSERT INTO f VALUES(3, 1, 'false');
    INSERT INTO f VALUES(4, 1, 'ls');
    INSERT INTO f VALUES(5, 1, 'grep');
  INSERT INTO f VALUES(6, 0, 'etc');
    INSERT INTO f VALUES(7, 6, 'rc.d');
      INSERT INTO f VALUES(8, 7, 'rc.apache');
      INSERT INTO f VALUES(9, 7, 'rc.samba');
  INSERT INTO f VALUES(10, 0, 'home');
    INSERT INTO f VALUES(11, 10, 'dan');
      INSERT INTO f VALUES(12, 11, 'public_html');
        INSERT INTO f VALUES(13, 12, 'index.html');
          INSERT INTO f VALUES(14, 13, 'logo.gif');



  WITH flat(fid, fpath) AS (
    SELECT id, '' FROM f WHERE parentid IS NULL
    UNION ALL
    SELECT id, fpath || '/' || name FROM f, flat WHERE parentid=fid
  )
  SELECT fpath FROM flat WHERE fpath!='' ORDER BY 1;



  WITH flat(fid, fpath) AS (
    SELECT id, '' FROM f WHERE parentid IS NULL
    UNION ALL
    SELECT id, fpath || '/' || name FROM f, flat WHERE parentid=fid
  )
  SELECT count(*) FROM flat;



  WITH x(i) AS (
    SELECT 1
    UNION ALL
    SELECT i+1 FROM x WHERE i<10
  )
  SELECT count(*) FROM x

