

  WITH c(x) AS (VALUES('{a: "abc'||char(0x5c,0x0a)||'xyz"


  SELECT ('{a: "abc'||char(0x5c,0x0d)||'xyz"


  SELECT ('{a: "abc'||char(0x5c,0x0d,0x0a)||'xyz"


  SELECT ('{a: "abc'||char(0x5c,0x2028)||'xyz"


  SELECT ('{a: "abc'||char(0x5c,0x2029)||'xyz"
