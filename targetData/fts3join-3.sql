

  CREATE VIRTUAL TABLE vt USING fts3(x);
  INSERT INTO vt VALUES('abc');
  INSERT INTO vt VALUES('xyz');

  CREATE TABLE tt(a INTEGER PRIMARY KEY);
  INSERT INTO tt VALUES(1), (2);



  SELECT * FROM tt LEFT JOIN (
    SELECT rowid AS rrr, * FROM vt WHERE vt MATCH 'abc'
  ) ON tt.a = rrr



  SELECT * FROM tt LEFT JOIN vt ON (vt MATCH 'abc')

