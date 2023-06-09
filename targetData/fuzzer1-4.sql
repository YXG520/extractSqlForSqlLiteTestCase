

  ATTACH 'test.db2' AS aux;
  CREATE TABLE aux.f3_rules(ruleset, cfrom, cto, cost);
  INSERT INTO f3_rules(ruleset, cfrom, cto, cost) VALUES(0, 'x','y', 10);
  INSERT INTO f3_rules(ruleset, cfrom, cto, cost) VALUES(1, 'a','b', 10);
  CREATE VIRTUAL TABLE aux.f3 USING fuzzer(f3_rules);
  SELECT word FROM f3 WHERE word MATCH 'ax'

