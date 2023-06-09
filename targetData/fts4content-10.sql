

  CREATE TABLE idx(id INTEGER PRIMARY KEY, path TEXT);
  INSERT INTO idx VALUES (1, 't1.txt');
  INSERT INTO idx VALUES (2, 't2.txt');
  INSERT INTO idx VALUES (3, 't3.txt');

  CREATE VIRTUAL TABLE vt USING fs(idx);
  SELECT path, data FROM vt;



  SELECT path, data FROM vt WHERE rowid = 2;



  CREATE VIRTUAL TABLE ft USING fts4(content=vt);
  INSERT INTO ft(ft) VALUES('rebuild');



  SELECT snippet(ft, '[', ']', '...', -1, 5) FROM ft WHERE ft MATCH 'e'



  SELECT snippet(ft, '[', ']', '...', -1, 5) FROM ft WHERE ft MATCH 't'




  SELECT snippet(ft, '[', ']', '...', -1, 5) FROM ft WHERE ft MATCH 'e'

