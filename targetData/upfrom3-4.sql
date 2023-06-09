

      CREATE TABLE p1(a INTEGER PRIMARY KEY, b) %WO%;
      CREATE TABLE c1(x PRIMARY KEY, y REFERENCES p1 ON UPDATE CASCADE) %WO%;
      PRAGMA foreign_keys = 1;

      INSERT INTO p1 VALUES(1, 'one');
      INSERT INTO p1 VALUES(11, 'eleven');
      INSERT INTO p1 VALUES(111, 'eleventyone');

      INSERT INTO c1 VALUES('a', 1);
      INSERT INTO c1 VALUES('b', 11);
      INSERT INTO c1 VALUES('c', 111);
    


      CREATE TABLE map(f, t);
      INSERT INTO map VALUES('a', 111);
      INSERT INTO map VALUES('c', 112);
    


      UPDATE c1 SET y=t FROM map WHERE x=f;
    


      INSERT INTO map VALUES('eleven', 12);
      INSERT INTO map VALUES('eleventyone', 112);
      UPDATE p1 SET a=t FROM map WHERE b=f;
    


      SELECT * FROM c1
    
