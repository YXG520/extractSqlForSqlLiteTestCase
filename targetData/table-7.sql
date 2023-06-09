

    CREATE TABLE weird(
      desc text,
      asc text,
      key int,
      [14_vac] boolean,
      fuzzy_dog_12 varchar(10),
      begin blob,
      end clob
    )
  


    INSERT INTO weird VALUES('a','b',9,0,'xyz','hi','y''all');
    SELECT * FROM weird;
  


    SELECT * FROM weird;
  


    CREATE TABLE savepoint(release);
    INSERT INTO savepoint(release) VALUES(10);
    UPDATE savepoint SET release = 5;
    SELECT release FROM savepoint;
  
