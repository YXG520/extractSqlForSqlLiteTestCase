

      CREATE TABLE long(a, b PRIMARY KEY, c);
      CREATE TABLE short(d, e, f REFERENCES long);
      CREATE TABLE mid(g, h, i REFERENCES long DEFERRABLE INITIALLY DEFERRED);
    

 INSERT INTO long VALUES(1, 2, 3) 

 INSERT INTO short VALUES(1, 3, 2) 

 INSERT INTO mid VALUES(1, 3, 2) 


      CREATE TABLE nought(a, b PRIMARY KEY, c);
      CREATE TABLE cross(d, e, f,
        FOREIGN KEY(e) REFERENCES nought(b) ON UPDATE CASCADE
      );
    
 INSERT INTO nought VALUES(2, 1, 2) 
 INSERT INTO cross VALUES(0, 1, 0) 
 UPDATE nought SET b = 5 

SELECT * FROM cross


      CREATE TABLE one(a INTEGER PRIMARY KEY, b);
      CREATE TABLE two(b, c REFERENCES one);
      INSERT INTO one VALUES(101, 102);
    
 INSERT INTO two VALUES(100, 101); 

 INSERT INTO short VALUES(1, 3, 2) 

 INSERT INTO short VALUES(1, 3, NULL) 

 SELECT * FROM short 

 UPDATE short SET f = 2 WHERE f IS NULL 
