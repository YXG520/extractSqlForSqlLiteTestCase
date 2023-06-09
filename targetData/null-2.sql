

    select ifnull(case when b<>0 then 1 else 0 end, 99) from t1;
  


    select ifnull(case when not b<>0 then 1 else 0 end, 99) from t1;
  


    select ifnull(case when b<>0 and c<>0 then 1 else 0 end, 99) from t1;
  


    select ifnull(case when not (b<>0 and c<>0) then 1 else 0 end, 99) from t1;
  


    select ifnull(case when b<>0 or c<>0 then 1 else 0 end, 99) from t1;
  


    select ifnull(case when not (b<>0 or c<>0) then 1 else 0 end, 99) from t1;
  


    select ifnull(case b when c then 1 else 0 end, 99) from t1;
  


    select ifnull(case c when b then 1 else 0 end, 99) from t1;
  
