

    CREATE TABLE tablet8(
       a integer primary key,
       tm text DEFAULT CURRENT_TIME,
       dt text DEFAULT CURRENT_DATE,
       dttm text DEFAULT CURRENT_TIMESTAMP
    );
    SELECT * FROM tablet8;
  


      INSERT INTO tablet8(a) VALUES($i);
      SELECT tm, dt, dttm FROM tablet8 WHERE a=$i;
    
