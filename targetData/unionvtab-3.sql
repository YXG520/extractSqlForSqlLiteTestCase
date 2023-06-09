

  CREATE TABLE tbl1(a INTEGER PRIMARY KEY, b);
  CREATE TABLE tbl2(a INTEGER PRIMARY KEY, b);
  CREATE TABLE tbl3(a INTEGER PRIMARY KEY, b);

  WITH ss(ii) AS ( SELECT 1 UNION ALL SELECT ii+1 FROM ss WHERE ii<100 )
  INSERT INTO tbl1 SELECT ii, '1.' || ii FROM ss;

  WITH ss(ii) AS ( SELECT 1 UNION ALL SELECT ii+1 FROM ss WHERE ii<100 )
  INSERT INTO tbl2 SELECT ii, '2.' || ii FROM ss;

  WITH ss(ii) AS ( SELECT 1 UNION ALL SELECT ii+1 FROM ss WHERE ii<100 )
  INSERT INTO tbl3 SELECT ii, '3.' || ii FROM ss;

  CREATE VIRTUAL TABLE temp.uu USING unionvtab(
    "VALUES(NULL,'tbl2', 26, 74), (NULL,'tbl3', 75, 100), (NULL,'tbl1', 1, 25)"
  );



  SELECT * FROM uu WHERE rowid = 10;



  SELECT * FROM uu WHERE rowid = 25;


 SELECT count(*) FROM uu WHERE rowid <= 24 
24

 SELECT count(*) FROM uu WHERE rowid <= 25 
100

 SELECT count(*) FROM uu WHERE rowid <= 26 
126

 SELECT count(*) FROM uu WHERE rowid <= 73 
173

 SELECT count(*) FROM uu WHERE rowid <= 74 
200

 SELECT count(*) FROM uu WHERE rowid <= 75 
275

 SELECT count(*) FROM uu WHERE rowid <= 99 
299

 SELECT count(*) FROM uu WHERE rowid <= 100 
300

 SELECT count(*) FROM uu WHERE rowid <= 101 
300

 SELECT count(*) FROM uu WHERE rowid < 25 
24

 SELECT count(*) FROM uu WHERE rowid < 26 
100

 SELECT count(*) FROM uu WHERE rowid < 27 
126

 SELECT count(*) FROM uu WHERE rowid < 73 
172

 SELECT count(*) FROM uu WHERE rowid < 74 
173

 SELECT count(*) FROM uu WHERE rowid < 75 
200

 SELECT count(*) FROM uu WHERE rowid < 76 
275

 SELECT count(*) FROM uu WHERE rowid < 99 
298

 SELECT count(*) FROM uu WHERE rowid < 100 
299

 SELECT count(*) FROM uu WHERE rowid < 101 
300

 SELECT count(*) FROM uu WHERE rowid > 24 
276

 SELECT count(*) FROM uu WHERE rowid > 25 
200

 SELECT count(*) FROM uu WHERE rowid > 26 
174

 SELECT count(*) FROM uu WHERE rowid > 27 
173

 SELECT count(*) FROM uu WHERE rowid > 73 
127

 SELECT count(*) FROM uu WHERE rowid > 74 
100

 SELECT count(*) FROM uu WHERE rowid > 75 
25

 SELECT count(*) FROM uu WHERE rowid > 76 
24

 SELECT count(*) FROM uu WHERE rowid > 99 
1

 SELECT count(*) FROM uu WHERE rowid > 100 
0

 SELECT count(*) FROM uu WHERE rowid > 101 
0

 SELECT count(*) FROM uu WHERE rowid >= 24 
277

 SELECT count(*) FROM uu WHERE rowid >= 25 
276

 SELECT count(*) FROM uu WHERE rowid >= 26 
200

 SELECT count(*) FROM uu WHERE rowid >= 27 
174

 SELECT count(*) FROM uu WHERE rowid >= 73 
128

 SELECT count(*) FROM uu WHERE rowid >= 74 
127

 SELECT count(*) FROM uu WHERE rowid >= 75 
100

 SELECT count(*) FROM uu WHERE rowid >= 76 
25

 SELECT count(*) FROM uu WHERE rowid >= 99 
2

 SELECT count(*) FROM uu WHERE rowid >= 100 
1

 SELECT count(*) FROM uu WHERE rowid >= 101 
0

 SELECT count(*) FROM uu WHERE rowid >= $S 
300

 SELECT count(*) FROM uu WHERE rowid >  $S 
300

 SELECT count(*) FROM uu WHERE rowid <= $S 
0

 SELECT count(*) FROM uu WHERE rowid <  $S 
0

 SELECT count(*) FROM uu WHERE rowid >= $L 
0

 SELECT count(*) FROM uu WHERE rowid >  $L 
0

 SELECT count(*) FROM uu WHERE rowid <= $L 
300

 SELECT count(*) FROM uu WHERE rowid <  $L 
300

 SELECT count(*) FROM uu WHERE a < 25 
24

 SELECT count(*) FROM uu WHERE a < 26 
100

 SELECT count(*) FROM uu WHERE a < 27 
126

 SELECT count(*) FROM uu WHERE a < 73 
172

 SELECT count(*) FROM uu WHERE a < 74 
173

 SELECT count(*) FROM uu WHERE a < 75 
200

 SELECT count(*) FROM uu WHERE a < 76 
275

 SELECT count(*) FROM uu WHERE a < 99 
298

 SELECT count(*) FROM uu WHERE a < 100 
299

 SELECT count(*) FROM uu WHERE a < 101 
300
