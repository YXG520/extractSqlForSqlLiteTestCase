

    CREATE VIRTUAL TABLE y1 USING fts3;
    VACUUM;
  


    INSERT INTO y1_segments VALUES(1, X'1234567890');
  


    DROP TABLE y1_segments;
  


    ALTER TABLE y1_segments RENAME TO abc;
  


    ALTER TABLE y1_segments RENAME TO abc;
  


    CREATE TABLE y1_segments AS SELECT * FROM abc;
  


    CREATE VIEW y1_segments AS SELECT * FROM abc;
  


    ALTER TABLE abc RENAME TO y1_segments;
  


    ALTER TABLE y1 RENAME TO z1;
  


    SELECT * FROM z1_segments;
  
