

  CREATE TABLE tx(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o PRIMARY KEY) 
  WITHOUT ROWID;
  INSERT INTO tx VALUES(
    1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
  );



  SELECT o FROM tx NATURAL JOIN tx;



  CREATE TABLE ty(a,Ñ,x6,x7,x8,Q,I,v,x1,L,E,x2,x3,x4,x5,s,g PRIMARY KEY,b,c)
  WITHOUT ROWID;
  SELECT a FROM ty NATURAL JOIN ty;

