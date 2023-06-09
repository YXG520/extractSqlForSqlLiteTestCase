
 PRAGMA count_changes = 1 
 
    CREATE TABLE one(a, b, c, UNIQUE(b, c));
    CREATE TABLE two(d, e, f, FOREIGN KEY(e, f) REFERENCES one(b, c));
    INSERT INTO one VALUES(1, 2, 3);
  

INSERT INTO two VALUES(4, 5, 6)





    INSERT INTO one VALUES(2, 3, 4);
    INSERT INTO one VALUES(3, 4, 5);
    INSERT INTO two VALUES(1, 2, 3);
    INSERT INTO two VALUES(2, 3, 4);
    INSERT INTO two VALUES(3, 4, 5);
  


    BEGIN;
      INSERT INTO one VALUES(0, 0, 0);
      UPDATE two SET e=e+1, f=f+1;
  

 SELECT * FROM one 

 SELECT * FROM two 



    CREATE TABLE three(
      g, h, i, 
      FOREIGN KEY(h, i) REFERENCES one(b, c) DEFERRABLE INITIALLY DEFERRED
    );
  

INSERT INTO three VALUES(7, 8, 9)





    CREATE TABLE high("a'b!" PRIMARY KEY, b) WITHOUT rowid;
    CREATE TABLE low(
      c, 
      "d&6" REFERENCES high ON UPDATE CASCADE ON DELETE CASCADE
    );
  


    INSERT INTO high VALUES('a', 'b');
    INSERT INTO low VALUES('b', 'a');
  

a'b!



 SELECT * FROM high ; SELECT * FROM low 

 DELETE FROM high 



 SELECT * FROM high ; SELECT * FROM low 
 PRAGMA count_changes = 0 
