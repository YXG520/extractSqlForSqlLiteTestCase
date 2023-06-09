

  DROP TABLE IF EXISTS t8;
  CREATE TABLE t8(a,b);
  INSERT INTO t8(a) VALUES('abc' || char(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35) || 'xyz');
  UPDATE t8 SET b=json_array(a);
  SELECT b FROM t8;



  SELECT a=json_extract(b,'$[0]') FROM t8;



  SELECT json_valid(char(0x22,0xe4,0x22));



  SELECT unicode(json_extract(char(0x22,228,0x22),'$'));

