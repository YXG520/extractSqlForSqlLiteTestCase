

    error "out of memory"
  

  ATTACH 'test2.db' AS two;
  CREATE TABLE two.t1(x);
  ATTACH 'test3.db' AS three;
  CREATE TABLE three.t1(x);
  ATTACH 'test4.db' AS four;
  CREATE TABLE four.t1(x);

