
SELECT instr('abcdefg','a');

SELECT instr('abcdefg','b');

SELECT instr('abcdefg','c');

SELECT instr('abcdefg','d');

SELECT instr('abcdefg','e');

SELECT instr('abcdefg','f');

SELECT instr('abcdefg','g');

SELECT instr('abcdefg','h');

SELECT instr('abcdefg','abcdefg');

SELECT instr('abcdefg','abcdefgh');

SELECT instr('abcdefg','bcdefg');

SELECT instr('abcdefg','bcdefgh');

SELECT instr('abcdefg','cdefg');

SELECT instr('abcdefg','cdefgh');

SELECT instr('abcdefg','defg');

SELECT instr('abcdefg','defgh');

SELECT instr('abcdefg','efg');

SELECT instr('abcdefg','efgh');

SELECT instr('abcdefg','fg');

SELECT instr('abcdefg','fgh');

SELECT coalesce(instr('abcdefg',NULL),'nil');

SELECT coalesce(instr(NULL,'x'),'nil');

SELECT instr(12345,34);

SELECT instr(123456.78,34);

SELECT instr(123456.78,x'3334');

SELECT instr('äbcdefg','efg');

SELECT instr('€xyzzy','xyz');

SELECT instr('abc€xyzzy','xyz');

SELECT instr('abc€xyzzy','€xyz');

SELECT instr('abc€xyzzy','c€xyz');

SELECT instr(x'0102030405',x'01');

SELECT instr(x'0102030405',x'02');

SELECT instr(x'0102030405',x'03');

SELECT instr(x'0102030405',x'04');

SELECT instr(x'0102030405',x'05');

SELECT instr(x'0102030405',x'06');

SELECT instr(x'0102030405',x'0102030405');

SELECT instr(x'0102030405',x'02030405');

SELECT instr(x'0102030405',x'030405');

SELECT instr(x'0102030405',x'0405');

SELECT instr(x'0102030405',x'0506');

SELECT instr(x'0102030405',x'');

SELECT instr(x'',x'');

SELECT instr('','');

SELECT instr('abcdefg','');

SELECT instr($longstr,'X');

SELECT instr($longstr,'Y');

SELECT instr($longstr,'Xa');

SELECT instr($longstr,'zXa');

SELECT instr($longstr,'X');

SELECT instr($longstr,'Y');

SELECT instr($longstr,'Xä');

SELECT instr($longstr,'zXä');

SELECT instr(x'78c3a4e282ac79','x');

SELECT instr(x'78c3a4e282ac79','y');

SELECT instr(x'78c3a4e282ac79',x'79');

SELECT instr(x'78c3a4e282ac79',x'7a');

SELECT instr(x'78c3a4e282ac79',x'78');

SELECT instr(x'78c3a4e282ac79',x'a4');

SELECT instr('xä€y',x'79');

SELECT instr('xä€y',x'a4');

SELECT instr(x'78c3a4e282ac79','y');


  SELECT coalesce(instr(NULL,'abc'), 999);



  SELECT coalesce(instr('abc',NULL), 999);



  SELECT coalesce(instr(NULL,NULL), 999);



  SELECT instr(X'', 'abc')



  CREATE TABLE x1(a, b);
  INSERT INTO x1 VALUES(X'', 'abc');
  SELECT instr(a, b) FROM x1;

