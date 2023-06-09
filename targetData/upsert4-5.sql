

  CREATE TABLE w1(a INT PRIMARY KEY, x, y);
  CREATE UNIQUE INDEX w1expr ON w1(('x' || x));
  INSERT INTO w1 VALUES(2, 'one', NULL)
    ON CONFLICT (('x' || x) COLLATE nocase) DO NOTHING;

