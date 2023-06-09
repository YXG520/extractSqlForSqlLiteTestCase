

  CREATE VIRTUAL TABLE ft1 USING fts3(a, b)



  CREATE VIRTUAL TABLE ft2 USING fts3([a], [b]);



  CREATE VIRTUAL TABLE ft3 USING fts3('a', "b");



  CREATE VIRTUAL TABLE ft4 USING fts3(`a`, 'fred''s column');


C


  CREATE VIRTUAL TABLE ft6 USING fts3(a, b, tokenize porter)



  CREATE VIRTUAL TABLE ft7 USING fts4(a, b, notindexed=b)

 ATTACH 'test2.db' AS aux 

#  CREATE VIRTUAL TABLE aux.ft7 USING fts3(a, b, c);
#

#  CREATE VIRTUAL TABLE aux.ft7 USING fts3(a, b, c);
#
