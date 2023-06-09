

  CREATE VIRTUAL TABLE vt0 USING fts3(c0);
  INSERT INTO vt0 VALUES (x'00');



  INSERT INTO vt0(vt0) VALUES('integrity-check');



  CREATE VIRTUAL TABLE vt0 USING fts4(c0, order=DESC);
  INSERT INTO vt0(c0) VALUES (0), (0);



  INSERT INTO vt0(vt0) VALUES('integrity-check');



  CREATE VIRTUAL TABLE vt0 USING fts4(c0, order=ASC);
  INSERT INTO vt0(c0) VALUES (0), (0);



  INSERT INTO vt0(vt0) VALUES('integrity-check');



  CREATE VIRTUAL TABLE ft USING fts4(c0, c1, order=DESC, prefix=1);
  INSERT INTO ft VALUES('a b c d', 'hello world');
  INSERT INTO ft VALUES('negative', 'positive');
  INSERT INTO ft VALUES('hello world', 'a b c d');



  INSERT INTO vt0(vt0) VALUES('integrity-check');

