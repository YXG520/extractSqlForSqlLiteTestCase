

  CREATE TABLE t3(a TEXT, b TEXT COLLATE utf16_aligned, c);
  INSERT INTO t3 VALUES('one', '.....', 0);
  INSERT INTO t3 VALUES('one', '....x', 1);
  INSERT INTO t3 VALUES('one', '...x.', 2);
  INSERT INTO t3 VALUES('one', '...xx', 3);
  INSERT INTO t3 VALUES('one', '..x..', 4);
  INSERT INTO t3 VALUES('one', '..x.x', 5);
  INSERT INTO t3 VALUES('one', '..xx.', 6);
  INSERT INTO t3 VALUES('one', '..xxx', 7);
  INSERT INTO t3 VALUES('one', '.x...', 8);
  INSERT INTO t3 VALUES('one', '.x..x', 9);
  INSERT INTO t3 VALUES('one', '.x.x.', 10);
  INSERT INTO t3 VALUES('one', '.x.xx', 11);
  INSERT INTO t3 VALUES('one', '.xx..', 12);
  INSERT INTO t3 VALUES('one', '.xx.x', 13);
  INSERT INTO t3 VALUES('one', '.xxx.', 14);
  INSERT INTO t3 VALUES('one', '.xxxx', 15);

  INSERT INTO t3 VALUES('two', 'x....', 16);
  INSERT INTO t3 VALUES('two', 'x...x', 17);
  INSERT INTO t3 VALUES('two', 'x..x.', 18);
  INSERT INTO t3 VALUES('two', 'x..xx', 19);
  INSERT INTO t3 VALUES('two', 'x.x..', 20);
  INSERT INTO t3 VALUES('two', 'x.x.x', 21);
  INSERT INTO t3 VALUES('two', 'x.xx.', 22);
  INSERT INTO t3 VALUES('two', 'x.xxx', 23);
  INSERT INTO t3 VALUES('two', 'xx...', 24);
  INSERT INTO t3 VALUES('two', 'xx..x', 25);
  INSERT INTO t3 VALUES('two', 'xx.x.', 26);
  INSERT INTO t3 VALUES('two', 'xx.xx', 27);
  INSERT INTO t3 VALUES('two', 'xxx..', 28);
  INSERT INTO t3 VALUES('two', 'xxx.x', 29);
  INSERT INTO t3 VALUES('two', 'xxxx.', 30);
  INSERT INTO t3 VALUES('two', 'xxxxx', 31);

  INSERT INTO t3 SELECT * FROM t3;

  CREATE INDEX i3 ON t3(a, b);
  ANALYZE;

  SELECT 'x' > '.';


S
Q
