

  CREATE VIRTUAL TABLE def USING fts3(xyz);
  INSERT INTO def_segdir VALUES(0,0,0,0,0, X'0001310301c9000103323334050d81');



  SELECT rowid FROM def WHERE def MATCH '1 NEAR 1'

