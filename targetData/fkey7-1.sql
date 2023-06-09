

  PRAGMA foreign_keys = 1;

  CREATE TABLE s1(a PRIMARY KEY, b);
  CREATE TABLE par(a, b REFERENCES s1, c UNIQUE, PRIMARY KEY(a));

  CREATE TABLE c1(a, b REFERENCES par);
  CREATE TABLE c2(a, b REFERENCES par);
  CREATE TABLE c3(a, b REFERENCES par(c));
