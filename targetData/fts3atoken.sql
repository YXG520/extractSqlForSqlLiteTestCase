CREATE VIRTUAL TABLE t1 USING fts3(content, tokenize blah);
  
SELECT fts3_tokenizer('blah', fts3_tokenizer('simple')) IS NULL;
  
SELECT fts3_tokenizer('blah') == fts3_tokenizer('simple');
  
CREATE VIRTUAL TABLE t1 USING fts3(content, tokenize blah);
  
INSERT INTO t1(content) VALUES('There was movement at the station');
    INSERT INTO t1(content) VALUES('For the word has passed around');
    INSERT INTO t1(content) VALUES('That the colt from ol regret had got');
    SELECT content FROM t1 WHERE content MATCH 'movement'
  
SELECT fts3_tokenizer('blah', fts3_tokenizer('simple')) IS NULL;

SELECT fts3_tokenizer('blah2', $simple) IS NULL;
  
SELECT fts3_tokenizer($blah2name) == fts3_tokenizer($simplename),
           typeof(fts3_tokenizer($blah2name)),
           typeof(fts3_tokenizer('blah2')),
           typeof(fts3_tokenizer($simplename)),
           typeof(fts3_tokenizer('simple'));
  
SELECT fts3_tokenizer('blah2') == fts3_tokenizer('simple'),
           typeof(fts3_tokenizer($blah2name)),
           typeof(fts3_tokenizer('blah2')),
           typeof(fts3_tokenizer($simplename)),
           typeof(fts3_tokenizer('simple'));
  
CREATE VIEW v110(x) AS
      SELECT fts3_tokenizer('tok110', fts3_tokenizer('simple')) IS NULL;

SELECT * FROM v110;

CREATE TABLE t110(a,b);
  CREATE TRIGGER r110 AFTER INSERT ON t110 BEGIN
      SELECT fts3_tokenizer('tok110', fts3_tokenizer('simple')) IS NULL;
  END;

INSERT INTO t110(a,b) VALUES(1,2);

SELECT * FROM t110;

SELECT fts3_tokenizer('nosuchtokenizer');
  
SELECT fts3_tokenizer_test('simple', 'I don''t see how');
  
SELECT fts3_tokenizer_test('porter', 'I don''t see how');
  
SELECT fts3_tokenizer_test('icu', 'I don''t see how');
    
CREATE VIRTUAL TABLE x1 USING fts3(name,TOKENIZE icu en_US);
    insert into x1 (name) values (NULL);
    insert into x1 (name) values (NULL);
    delete from x1;
  
INSERT INTO x1 VALUES($str) 
SELECT fts3_tokenizer_internal_test() 
CREATE VIRTUAL TABLE t3 USING fts4(tokenize="");

CREATE VIRTUAL TABLE t3 USING fts4(tokenize=);

CREATE VIRTUAL TABLE t3 USING fts4(tokenize="   ");

SELECT fts3_tokenizer(NULL);

SELECT fts3_tokenizer(NULL, X'1234567812345678');

SELECT fts3_tokenizer(NULL, X'12345678');

