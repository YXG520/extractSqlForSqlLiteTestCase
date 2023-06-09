

    SELECT random() is not null;
  


    SELECT typeof(random());
  


    SELECT randomblob(32) is not null;
  


    SELECT typeof(randomblob(32));
  


    SELECT length(randomblob(32)), length(randomblob(-5)),
           length(randomblob(2000))
  

SELECT hex(x'00112233445566778899aAbBcCdDeEfF')

SELECT hex(replace('abcdefg','ef','12'))

SELECT hex(replace('abcdefg','','12'))

SELECT hex(replace('aabcdefg','a','aaa'))

SELECT hex(replace('abcdefg','ef','12'))

SELECT hex(replace('abcdefg','','12'))

SELECT hex(replace('aabcdefg','a','aaa'))


  WITH RECURSIVE c(x) AS (
     VALUES(1)
     UNION ALL
     SELECT x+1 FROM c WHERE x<1040
  )
  SELECT 
    count(*),
    sum(length(replace(printf('abc%.*cxyz',x,'m'),'m','nnnn'))-(6+x*4))
  FROM c;

