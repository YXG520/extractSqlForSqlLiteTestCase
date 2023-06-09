

  CREATE TABLE t2(a,b,c); INSERT INTO t2 VALUES(1,2,3);
  CREATE INDEX t2x1 ON t2(a,b+random());



  CREATE INDEX t2x1 ON t2(julianday('now',a));



  CREATE INDEX t2x2 ON t2(a,b+(SELECT 15));



  CREATE TABLE e1(x,y,UNIQUE(y,substr(x,1,5)));



  CREATE TABLE e1(x,y,PRIMARY KEY(y,substr(x,1,5)));



  CREATE TABLE e1(x,y,PRIMARY KEY(y,substr(x,1,5))) WITHOUT ROWID;



  CREATE TABLE e1(x,y,FOREIGN KEY(substr(y,1,5)) REFERENCES t1);

