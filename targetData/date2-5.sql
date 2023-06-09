

  CREATE TABLE mods(x);
  INSERT INTO mods(x) VALUES
    ('+10 days'),
    ('-10 days'),
    ('+10 hours'),
    ('-10 hours'),
    ('+10 minutes'),
    ('-10 minutes'),
    ('+10 seconds'),
    ('-10 seconds'),
    ('+10 months'),
    ('-10 months'),
    ('+10 years'),
    ('-10 years'),
    ('start of month'),
    ('start of year'),
    ('start of day'),
    ('weekday 1'),
    ('unixepoch');
  CREATE TABLE t5(y,m);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<5)
    INSERT INTO t5(y,m) SELECT julianday('2017-07-01')+c.x, mods.x FROM c, mods;
  CREATE INDEX t5x1 on t5(y) WHERE datetime(y,m) IS NOT NULL;



  INSERT INTO t5(y,m) VALUES('2017-07-20','localtime');



  INSERT INTO t5(y,m) VALUES('2017-07-20','utc');

