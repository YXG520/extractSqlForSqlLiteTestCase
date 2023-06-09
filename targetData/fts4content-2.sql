

  CREATE TABLE t2(x);
  INSERT INTO t2 VALUES('O S W W F U C R Q I C N P Z Y Y E Y Y E');  -- 1
  INSERT INTO t2 VALUES('Y X U V L B E H Y J C Y A I A P V F V K');  -- 2
  INSERT INTO t2 VALUES('P W I N J H I I N I F B K D U Q B Z S F');  -- 3
  INSERT INTO t2 VALUES('N R O R H J R H G M D I U U B O M P A U');  -- 4
  INSERT INTO t2 VALUES('Y O V O G T P N G T N F I V B U M J M G');  -- 5
  INSERT INTO t2 VALUES('J O B N K N E C H Z R K J O U G M K L S');  -- 6
  INSERT INTO t2 VALUES('S Z S R I Q U A P W R X H K C Z U L S P');  -- 7
  INSERT INTO t2 VALUES('J C H N R C K R V N M O F Z M Z A I H W');  -- 8
  INSERT INTO t2 VALUES('O Y G I S J U U W O D Z F J K N R P R L');  -- 9
  INSERT INTO t2 VALUES('B G L K U R U P V X Z I H V R W C Q A S');  -- 10
  INSERT INTO t2 VALUES('T F T J F F Y V F W N X K Q A Y L X W G');  -- 11
  INSERT INTO t2 VALUES('C J U H B Q X L C M M Y E G V F W V Z C');  -- 12
  INSERT INTO t2 VALUES('B W L T F S G X D P H N G M R I O A X I');  -- 13
  INSERT INTO t2 VALUES('N G Y O K Q K Z N M H U J E D H U W R K');  -- 14
  INSERT INTO t2 VALUES('U D T R U Y F J D S J X E H Q G V A S Z');  -- 15
  INSERT INTO t2 VALUES('M I W P J S H R J D Q I C G P C T P H R');  -- 16
  INSERT INTO t2 VALUES('J M N I S L X Q C A B F C B Y D H V R J');  -- 17
  INSERT INTO t2 VALUES('F V Z W J Q L P X Y E W B U Q N H X K T');  -- 18
  INSERT INTO t2 VALUES('R F S R Y O F Q E I E G H C B H R X Y N');  -- 19
  INSERT INTO t2 VALUES('U Q Q Q T E P D M F X P J G H X C Q D L');  -- 20




    SELECT rowid FROM ft2 WHERE ft2 MATCH $match
  



    SELECT * FROM ft2 WHERE ft2 MATCH $match
  


    SELECT snippet(ft2, '[', ']', '..', -1, 6) FROM ft2 WHERE ft2 MATCH $match
  


    SELECT offsets(ft2) FROM ft2 WHERE ft2 MATCH $match
  
