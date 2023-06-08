CREATE VIRTUAL TABLE t1 USING fts2(content, tokenize blah);
  
SELECT fts2_tokenizer('blah', fts2_tokenizer('simple')) IS NULL;
  
SELECT fts2_tokenizer('blah') == fts2_tokenizer('simple');
  
CREATE VIRTUAL TABLE t1 USING fts2(content, tokenize blah);
  
INSERT INTO t1(content) VALUES('There was movement at the station');
    INSERT INTO t1(content) VALUES('For the word has passed around');
    INSERT INTO t1(content) VALUES('That the colt from ol regret had got away');
    SELECT content FROM t1 WHERE content MATCH 'movement'
  
SELECT fts2_tokenizer('nosuchtokenizer');
  
SELECT fts2_tokenizer_test('simple', 'I don''t see how');
  
SELECT fts2_tokenizer_test('porter', 'I don''t see how');
  
SELECT fts2_tokenizer_test('icu', 'I don''t see how');
    
SELECT fts2_tokenizer_internal_test() 
