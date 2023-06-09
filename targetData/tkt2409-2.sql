

        BEGIN;
        INSERT INTO t1 VALUES($::zShort, $::zLong);
      


    ROLLBACK;
    BEGIN;
    INSERT INTO t1 VALUES($::zShort, $::zLong);
    COMMIT;
  


    COMMIT;
  
