

  CREATE TABLE x5_rules(a, b, c, d);
  CREATE VIRTUAL TABLE x5 USING fuzzer(x5_rules);



  SELECT word, distance FROM x5 WHERE word MATCH 
    'aaaaaaaaaXaaaaaaaaaXaaaaaaaaaXaaaaaaaaaXaaaaaaaaa' || 
    'aaaaaaaaaXaaaaaaaaaXaaaaaaaaaXaaaaaaaaaXaaaaaaaaa' || 
    'aaaaaaaaaXaaaaaaaaaXaaaaaaaaaXaaaaaaaaaXaaaaaaaaa'



  INSERT INTO x5_rules VALUES(0, 'a', '0.1.2.3.4.5.6.7.8.9.a', 1);
  DROP TABLE x5;
  CREATE VIRTUAL TABLE x5 USING fuzzer(x5_rules);
  SELECT length(word) FROM x5 WHERE word MATCH 'a' LIMIT 50;

