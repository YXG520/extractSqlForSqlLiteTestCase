CREATE TABLE elephant(
      name VARCHAR(32), 
      color VARCHAR(16), 
      age INTEGER, 
      UNIQUE(name, color)
    );
  
CREATE VIRTUAL TABLE pachyderm USING echo(elephant);
  


DROP TABLE pachyderm;
  




CREATE VIRTUAL TABLE pachyderm USING echo(elephant);
  
SELECT name FROM sqlite_master WHERE type = 'table';
  
CREATE VIRTUAL TABLE pachyderm USING echo(elephant);
  
SELECT name FROM sqlite_master WHERE type = 'table';
  
CREATE VIRTUAL TABLE pachyderm USING echo(elephant);
  
SELECT name FROM sqlite_master WHERE type = 'table';
  
DROP TABLE pachyderm;
SELECT name FROM sqlite_master WHERE type = 'table';
    
DROP TABLE pachyderm;
  
SELECT name FROM sqlite_master WHERE type = 'table';
  
