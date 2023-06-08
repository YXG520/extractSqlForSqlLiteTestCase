DROP TABLE ab; 
CREATE TABLE ab(a INTEGER PRIMARY KEY, b);
      CREATE INDEX ab_i ON ab(b);
      INSERT INTO ab SELECT NULL, md5sum(a, b) FROM ab;
      SELECT count(*) FROM ab;
    
SELECT 
        (SELECT md5sum(a, b) FROM ab WHERE a < (SELECT max(a) FROM ab)) ==
        (SELECT b FROM ab WHERE a = (SELECT max(a) FROM ab))
    
PRAGMA integrity_check 
puts STARTING..
SELECT 
            (SELECT md5sum(a, b) FROM ab WHERE +a < (SELECT max(a) FROM ab)) ==
            (SELECT b FROM ab WHERE a = (SELECT max(a) FROM ab))
        
INSERT INTO ab SELECT NULL, md5sum(a, b) FROM ab 
SELECT count(*) FROM ab; 
SELECT 
        (SELECT md5sum(a, b) FROM ab WHERE +a < (SELECT max(a) FROM ab)) ==
        (SELECT b FROM ab WHERE a = (SELECT max(a) FROM ab))
    
PRAGMA integrity_check 
