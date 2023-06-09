

  CREATE TABLE cost1(iLang, cFrom, cTo, iCost);
  INSERT INTO cost1 VALUES
    (0, '', '?',  97),
    (0, '?', '',  98),
    (0, '?', '?', 99),
    (0, 'm', 'n', 50),
    (0, 'n', 'm', 50)
  ;
  SELECT editdist3('cost1');
  SELECT editdist3('anchor','amchor');



  SELECT editdist3('anchor','anchoxr');



  SELECT editdist3('anchor','xanchor');



  SELECT editdist3('anchor','anchorx');



  SELECT editdist3('anchor','anchr');



  SELECT editdist3('anchor','ancho');



  SELECT editdist3('anchor','nchor');



  SELECT editdist3('anchor','anchur');



  SELECT editdist3('anchor','onchor');



  SELECT editdist3('anchor','anchot');



  SELECT editdist3('anchor','omchor');

