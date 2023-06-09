

    INSERT INTO excluded VALUES('a', 1, 1, 1);
    INSERT INTO excluded VALUES('b', 2, 2, 2);
  


    INSERT INTO excluded VALUES('hello', 1, 1, NULL) ON CONFLICT(x, "a b")
      DO UPDATE SET w=excluded.w;
    SELECT * FROM excluded;
  


    INSERT INTO excluded AS x1 VALUES('hello', 1, 1, NULL) ON CONFLICT(x, [a b])
      DO UPDATE SET w=excluded.w;
    SELECT * FROM excluded;
  


    INSERT INTO excluded AS x1 VALUES('hello', 1, 1, NULL) ON CONFLICT(x, [a b])
      DO UPDATE SET w=w||w WHERE excluded.w!='hello';
    SELECT * FROM excluded;
  


    INSERT INTO excluded AS x1 VALUES('hello', 1, 1, NULL) ON CONFLICT(x, [a b])
      DO UPDATE SET w=w||w WHERE excluded.x=1;
    SELECT * FROM excluded;
  


    INSERT INTO excluded AS x1 VALUES('hello', 1, 1, NULL) 
      ON CONFLICT(x, [a b]) WHERE y=1
      DO UPDATE SET w=w||w WHERE excluded.x=1;
  
