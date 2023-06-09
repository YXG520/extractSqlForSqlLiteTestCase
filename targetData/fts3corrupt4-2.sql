

  CREATE VIRTUAL TABLE ft USING fts3;
  INSERT INTO ft(ft) VALUES('nodesize=32');



      BEGIN;
        INSERT INTO ft VALUES('abc' || $i);
        INSERT INTO ft VALUES('abc' || $i || 'x' );
        INSERT INTO ft VALUES('abc' || $i || 'xx' );
      COMMIT
    

    SELECT count(*) FROM ft_segdir;
    SELECT count(*) FROM ft_segments;
  


  INSERT INTO ft(ft) VALUES('merge=1,4');
  SELECT count(*) FROM ft_segdir;
  SELECT count(*) FROM ft_segments;



  SELECT quote(block) FROM ft_segments WHERE blockid=2



  UPDATE ft_segments SET block = 
    blob('00056162633130031F0200 FFFFFFFF07FF55 66740302020003046E646F6E03030200')
    WHERE blockid=2;



  INSERT INTO ft(ft) VALUES('merge=1,4');



  UPDATE ft_segments SET block = 
    blob('00056162633130031F0200 02FFFFFFFF07 66740302020003046E646F6E03030200')
    WHERE blockid=2;



  INSERT INTO ft(ft) VALUES('merge=1,4');



  UPDATE ft_segments SET block = 
    blob('00056162633130031F0200 0202 6674 FFFFFF070302020003046E646F6E030200')
    WHERE blockid=2;



  INSERT INTO ft(ft) VALUES('merge=1,4');

