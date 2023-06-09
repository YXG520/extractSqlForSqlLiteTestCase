

    CREATE TABLE pp(a UNIQUE, b, c, PRIMARY KEY(b, c)) WITHOUT rowid;
    CREATE TABLE cc(d, e, f UNIQUE, FOREIGN KEY(d, e) REFERENCES pp);
    INSERT INTO pp VALUES(1, 2, 3);
    INSERT INTO cc VALUES(2, 3, 1);
  



      SELECT * FROM pp;
      SELECT * FROM cc;
    



      COMMIT;
      SELECT * FROM pp;
      SELECT * FROM cc;
    
