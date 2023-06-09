

  SELECT *
  FROM (
      SELECT 'apple' fruit
      UNION ALL SELECT 'banana'
  ) a
  JOIN (
      SELECT 'apple' fruit
      UNION ALL SELECT 'banana'
  ) b ON a.fruit=b.fruit
  LEFT JOIN (
      SELECT 1 isyellow
  ) c ON b.fruit='banana';



  SELECT *
    FROM (SELECT 'apple' fruit UNION ALL SELECT 'banana')
         LEFT JOIN (SELECT 1) ON fruit='banana';

