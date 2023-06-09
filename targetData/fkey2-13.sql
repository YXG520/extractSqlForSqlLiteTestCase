

    CREATE TABLE pp(a UNIQUE, b, c, PRIMARY KEY(b, c));
    CREATE TABLE cc(d, e, f UNIQUE, FOREIGN KEY(d, e) REFERENCES pp);
    INSERT INTO pp VALUES(1, 2, 3);
    INSERT INTO cc VALUES(2, 3, 1);
  



      SELECT * FROM pp;
      SELECT * FROM cc;
    



      COMMIT;
      SELECT * FROM pp;
      SELECT * FROM cc;
    

 
    REPLACE INTO pp(rowid, a, b, c) VALUES(1, 2, 2, 3);
    SELECT rowid, * FROM pp;
    SELECT * FROM cc;
  

 
    REPLACE INTO pp(rowid, a, b, c) VALUES(2, 2, 2, 3);
    SELECT rowid, * FROM pp;
    SELECT * FROM cc;
  
