


  EXPLAIN QUERY PLAN SELECT * FROM terms WHERE term='braid'



  EXPLAIN QUERY PLAN SELECT * FROM terms WHERE +term='braid'


 SELECT * FROM terms_v WHERE rec('cnt', term) AND term='braid' 

 SELECT * FROM terms_v WHERE rec('cnt', term) AND +term='braid' 

 SELECT * FROM terms_v WHERE rec('cnt', term) AND term='breakfast' 

 SELECT * FROM terms_v WHERE rec('cnt', term) AND +term='breakfast' 

 SELECT * FROM terms_v WHERE term='braid' 
braid 1 1

 SELECT * FROM terms_v WHERE +term='braid'
braid 1 1

 SELECT * FROM terms_v WHERE term='breakfast'  


 SELECT * FROM terms_v WHERE +term='breakfast' 


 SELECT * FROM terms_v WHERE term='cba'  


 SELECT * FROM terms_v WHERE +term='cba' 


 SELECT * FROM terms_v WHERE term='abc'  


 SELECT * FROM terms_v WHERE +term='abc' 


 SELECT * FROM terms WHERE term=NULL 



  EXPLAIN QUERY PLAN SELECT * FROM terms WHERE term>'brain'



  EXPLAIN QUERY PLAN SELECT * FROM terms WHERE +term>'brain'



  EXPLAIN QUERY PLAN SELECT * FROM terms WHERE term<'brain'



  EXPLAIN QUERY PLAN SELECT * FROM terms WHERE +term<'brain'



  EXPLAIN QUERY PLAN SELECT * FROM terms WHERE term BETWEEN 'brags' AND 'brain'



  EXPLAIN QUERY PLAN SELECT * FROM terms WHERE +term BETWEEN 'brags' AND 'brain'


 SELECT * FROM terms WHERE rec('cnt', term) AND term>'brain' 

 SELECT * FROM terms WHERE rec('cnt', term) AND +term>'brain' 









 SELECT * FROM terms_v WHERE term>'brainstorms' 


 SELECT * FROM terms_v WHERE term>'brainstorms' 


 SELECT * FROM terms_v WHERE term>'cba' 


 SELECT * FROM terms_v WHERE term>'cba' 


 SELECT * FROM terms WHERE rec('cnt', term) AND term<'brain' 

 SELECT * FROM terms WHERE rec('cnt', term) AND +term<'brain' 










