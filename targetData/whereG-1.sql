

  CREATE TABLE composer(
    cid INTEGER PRIMARY KEY,
    cname TEXT
  );
  CREATE TABLE album(
    aid INTEGER PRIMARY KEY,
    aname TEXT
  );
  CREATE TABLE track(
    tid INTEGER PRIMARY KEY,
    cid INTEGER REFERENCES composer,
    aid INTEGER REFERENCES album,
    title TEXT
  );
  CREATE INDEX track_i1 ON track(cid);
  CREATE INDEX track_i2 ON track(aid);
  INSERT INTO composer VALUES(1, 'W. A. Mozart');
  INSERT INTO composer VALUES(2, 'Beethoven');
  INSERT INTO composer VALUES(3, 'Thomas Tallis');
  INSERT INTO composer VALUES(4, 'Joseph Hayden');
  INSERT INTO composer VALUES(5, 'Thomas Weelkes');
  INSERT INTO composer VALUES(6, 'J. S. Bach');
  INSERT INTO composer VALUES(7, 'Orlando Gibbons');
  INSERT INTO composer VALUES(8, 'Josquin des Prés');
  INSERT INTO composer VALUES(9, 'Byrd');
  INSERT INTO composer VALUES(10, 'Francis Poulenc');
  INSERT INTO composer VALUES(11, 'Mendelsshon');
  INSERT INTO composer VALUES(12, 'Zoltán Kodály');
  INSERT INTO composer VALUES(13, 'Handel');
  INSERT INTO album VALUES(100, 'Kodály: Missa Brevis');
  INSERT INTO album VALUES(101, 'Messiah');
  INSERT INTO album VALUES(102, 'Missa Brevis in D-, K.65');
  INSERT INTO album VALUES(103, 'The complete English anthems');
  INSERT INTO album VALUES(104, 'Mass in B Minor, BWV 232');
  INSERT INTO track VALUES(10005, 12, 100, 'Sanctus');
  INSERT INTO track VALUES(10007, 12, 100, 'Agnus Dei');
  INSERT INTO track VALUES(10115, 13, 101, 'Surely He Hath Borne Our Griefs');
  INSERT INTO track VALUES(10129, 13, 101, 'Since By Man Came Death');
  INSERT INTO track VALUES(10206, 1, 102, 'Agnus Dei');
  INSERT INTO track VALUES(10301, 3, 103, 'If Ye Love Me');
  INSERT INTO track VALUES(10402, 6, 104, 'Domine Deus');
  INSERT INTO track VALUES(10403, 6, 104, 'Qui tollis');


S


  SELECT DISTINCT aname
    FROM album, composer, track
   WHERE unlikely(cname LIKE '%bach%')
     AND composer.cid=track.cid
     AND album.aid=track.aid;


S


  SELECT DISTINCT aname
    FROM album, composer, track
   WHERE likelihood(cname LIKE '%bach%', 0.5)
     AND composer.cid=track.cid
     AND album.aid=track.aid;


S


  SELECT DISTINCT aname
    FROM album, composer, track
   WHERE cname LIKE '%bach%'
     AND composer.cid=track.cid
     AND album.aid=track.aid;


S


  SELECT DISTINCT aname
    FROM album, composer, track
   WHERE cname LIKE '%bach%'
     AND unlikely(composer.cid=track.cid)
     AND unlikely(album.aid=track.aid);

