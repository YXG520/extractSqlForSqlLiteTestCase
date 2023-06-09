

    CREATE VIRTUAL TABLE abc USING csv(filename='csv.data', header=true);
  


    SELECT count(*) FROM abc
  
