

    create table a(id integer primary key);
    create table b(id integer primary key, a_id integer);
    create table c(id integer primary key, b_id integer);
  
    insert into a values (1);
    insert into a values (2);
  
    insert into b values (3, 1);
    insert into b values (4, 1);
    insert into b values (5, 1);
    insert into b values (6, 1);
    insert into b values (9, 2);
  
    insert into c values (4, 3);
    insert into c values (5, 5);
    insert into c values (6, 4);
    insert into c values (7, 6);
    insert into c values (8, 9);
  
    select * FROM a, b, c WHERE a.id=2 AND b.a_id = a.id AND b.id=c.b_id;
  


    select * FROM a, c, b WHERE a.id=2 AND b.a_id = a.id AND b.id=c.b_id;
  


    select * FROM b, a, c WHERE a.id=2 AND b.a_id = a.id AND b.id=c.b_id;
  


    select * FROM b, c, a WHERE a.id=2 AND b.a_id = a.id AND b.id=c.b_id;
  


    select * FROM c, a, b WHERE a.id=2 AND b.a_id = a.id AND b.id=c.b_id;
  


    select * FROM c, b, a WHERE a.id=2 AND b.a_id = a.id AND b.id=c.b_id;
  
