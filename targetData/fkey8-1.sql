
 PRAGMA foreign_keys = 1; 

  1   1 "DELETE FROM p1" {
    CREATE TABLE p1(a PRIMARY KEY);
    CREATE TABLE c1(b REFERENCES p1);
  

