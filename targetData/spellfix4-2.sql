

  INSERT INTO cost1 VALUES
    (0, 'a', 'ä', 5),
    (0, 'ss', 'ß', 8)
  ;
  SELECT editdist3('cost1');
  SELECT editdist3('strasse','straße');
  SELECT editdist3('straße','strasse');



  SELECT editdist3('baume','bäume');



  SELECT editdist3('baum','bäume');



  INSERT INTO cost1 VALUES
    (0, 'ä', 'a', 5),
    (0, 'ß', 'ss', 8)
  ;
  SELECT editdist3('cost1');
  SELECT editdist3('strasse','straße');
  SELECT editdist3('straße','strasse');

