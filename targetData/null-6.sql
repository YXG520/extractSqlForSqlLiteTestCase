

      select b from t1 union select c from t1 order by b;
    


      select b from t1 union select c from t1 order by 1;
    


      select b from t1 union select c from t1 order by t1.b;
    


      select b from t1 union select c from t1 order by main.t1.b;
    


      select b from t1 union select c from t1 order by t1.a;
    


      select b from t1 union select c from t1 order by main.t1.a;
    
