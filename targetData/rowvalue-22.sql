

  SELECT (SELECT 3,4 UNION SELECT 5,6 ORDER BY 1) IN (SELECT 3,4);
  SELECT (SELECT 3,4 UNION SELECT 5,6 ORDER BY 1) IN (SELECT 5,6);
  SELECT (SELECT 5,6 UNION SELECT 3,4 ORDER BY 1) IN (SELECT 3,4);
  SELECT (SELECT 5,6 UNION SELECT 3,4 ORDER BY 1) IN (SELECT 5,6);
  SELECT (SELECT 3,4 UNION SELECT 5,6 ORDER BY 1 DESC) IN (SELECT 3,4);
  SELECT (SELECT 3,4 UNION SELECT 5,6 ORDER BY 1 DESC) IN (SELECT 5,6);
  SELECT (SELECT 5,6 UNION SELECT 3,4 ORDER BY 1 DESC) IN (SELECT 3,4);
  SELECT (SELECT 5,6 UNION SELECT 3,4 ORDER BY 1 DESC) IN (SELECT 5,6);

