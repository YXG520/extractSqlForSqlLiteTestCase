

  CREATE TABLE without(x INTEGER PRIMARY KEY, without TEXT);
  INSERT INTO without VALUES(1, 'xyzzy'), (2, 'fizzle');
  SELECT * FROM without WHERE without='xyzzy';

