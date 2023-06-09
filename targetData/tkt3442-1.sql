

     CREATE TABLE listhash(
       key INTEGER PRIMARY KEY,
       id TEXT,
       node INTEGER
     );
     CREATE UNIQUE INDEX ididx ON listhash(id);
  

S

S

S


    SELECT node FROM listhash WHERE id=[5000] LIMIT 1;
  
