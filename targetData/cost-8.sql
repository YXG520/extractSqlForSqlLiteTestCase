

  CREATE TABLE composer(
    cid INTEGER PRIMARY KEY,
    cname TEXT
  );
  CREATE TABLE album(
    aid INTEGER PRIMARY KEY,
    aname TEXT
  );
  CREATE TABLE track(
    tid INTEGER PRIMARY KEY,
    cid INTEGER REFERENCES composer,
    aid INTEGER REFERENCES album,
    title TEXT
  );
  CREATE INDEX track_i1 ON track(cid);
  CREATE INDEX track_i2 ON track(aid);


S
Q
