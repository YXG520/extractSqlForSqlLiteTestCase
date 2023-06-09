

    CREATE TABLE "abc abc"(a, b, c);
    INSERT INTO "abc abc" VALUES(1, 2, 3);
    VACUUM;
  


    select * from "abc abc";
  


      DELETE FROM "abc abc";
      INSERT INTO "abc abc" VALUES(X'00112233', NULL, NULL);
      VACUUM;
    


      select count(*) from "abc abc" WHERE a = X'00112233';
    
