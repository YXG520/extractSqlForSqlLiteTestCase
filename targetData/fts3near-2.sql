

    SELECT offsets(t1) FROM t1 WHERE content MATCH 'A NEAR/0 B'
  


    SELECT offsets(t1) FROM t1 WHERE content MATCH 'B NEAR/0 A'
  


    SELECT offsets(t1) FROM t1 WHERE content MATCH '"C D" NEAR/0 A'
  


    SELECT offsets(t1) FROM t1 WHERE content MATCH 'A NEAR/0 "C D"'
  


    SELECT offsets(t1) FROM t1 WHERE content MATCH 'A NEAR A'
  


    INSERT INTO t1 VALUES('A A A');
    SELECT offsets(t1) FROM t1 WHERE content MATCH 'A NEAR/2 A';
  


    DELETE FROM t1;
    INSERT INTO t1 VALUES('A A A A');
    SELECT offsets(t1) FROM t1 WHERE content MATCH 'A NEAR A NEAR A';
  

  DELETE FROM t1;
  INSERT INTO t1(content) VALUES(
    'one two three two four six three six nine four eight twelve'
  );

