

A
B
C
D
E
F




    CREATE TABLE nameFtsFuzzySearchTable(
      word, distance, langid, score, top, scope
    );
  

    SELECT
      substr(word,1,length(?1)-1) AS term,
      distance,
      langid,
      score
    FROM
      nameFtsFuzzySearchTable
    WHERE
      word MATCH (?1) AND abs(?1) = abs(term)
      AND top = ?2 AND distance > ?3 AND scope = ?4 AND langid = ?
    GROUP BY term, langid 
    HAVING (1.0 - ((distance / 100.0) / CAST( length(?1) - 1 AS REAL ))) >= ?
  

A
B
C
D
E
F

