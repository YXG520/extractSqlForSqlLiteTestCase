# The async logic is not built into this system
  puts "Skipping async3 tests: not compiled with required features"
  finish_test
  return

CREATE TABLE abc(a, b, c);
    BEGIN;
    INSERT INTO abc VALUES(1, 2, 3);
  
SELECT * FROM abc
INSERT INTO abc VALUES(4, 5, 6)
