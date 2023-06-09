

  CREATE TEMPORARY TABLE tab (
    prim DATE PRIMARY KEY,
    a INTEGER,
    comp INTEGER AS (a),
    b INTEGER,
    x INTEGER
  );
  -- Add some data
  INSERT INTO tab (prim, a, b) VALUES ('2001-01-01', 0, 0);
  -- Check that each column is 0 like I expect
  SELECT * FROM tab;



  -- Do an UPSERT on the b column
  INSERT INTO tab (prim, b)
  VALUES ('2001-01-01',5)
      ON CONFLICT(prim) DO UPDATE SET  b=excluded.b;
  -- Now b is NULL rather than 5
  SELECT * FROM tab;

