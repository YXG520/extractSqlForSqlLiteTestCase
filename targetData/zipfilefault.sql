DROP TABLE IF EXISTS aaa 
CREATE VIRTUAL TABLE aaa USING zipfile('test.zip') 
CREATE VIRTUAL TABLE setup USING zipfile('test.zip');
  INSERT INTO setup(name, data) VALUES('a.txt', '1234567890');

SELECT name,data FROM zipfile('test.zip') 
SELECT json_extract( zipfile_cds(z), '$.version-made-by' ) 
      FROM zipfile('test.zip')
    
CREATE VIRTUAL TABLE setup USING zipfile('test.zip');
  INSERT INTO setup(name, data) VALUES('a.txt', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaa');

SELECT name,data FROM zipfile('test.zip') 
WITH c(n, d) AS (
      SELECT 1, 'aaaaaaaaaaabbbbbbbbbbaaaaaaaaaabbbbbbbbbb'
    )
    SELECT name, data FROM zipfile(
      (SELECT zipfile(n, d) FROM c)
    );
  
CREATE VIRTUAL TABLE setup USING zipfile('test.zip') 

INSERT INTO setup(name, data) 
    VALUES('a.txt', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaa');
  
INSERT INTO setup(name, data) VALUES('dir', NULL)
  
DROP TABLE IF EXISTS setup;
    BEGIN;
      CREATE VIRTUAL TABLE setup USING zipfile('test.zip') 
  
INSERT INTO setup(name, data) VALUES('dir', NULL)
  
COMMIT 
WITH c(n, d) AS (
      VALUES('a.txt', '1234567890') UNION ALL
      VALUES('dir', NULL)
    )
    SELECT zipfile(n, d) IS NULL FROM c;
  
WITH c(n, d) AS (
      VALUES('a.txt', $big)
    )
    SELECT zipfile(n, NULL, NULL, d, 0) IS NULL FROM c;
  
