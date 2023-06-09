

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(path TEXT COLLATE nocase PRIMARY KEY,a,b,c) WITHOUT ROWID;


S
Q

S
Q


  DROP TABLE IF EXISTS t2;
  CREATE TABLE t2(path TEXT,x,y,z);
  CREATE INDEX t2path ON t2(path COLLATE nocase);
  CREATE INDEX t2path2 ON t2(path);


S
Q

PRAGMA case_sensitive_like=ON

S
Q

S
Q
