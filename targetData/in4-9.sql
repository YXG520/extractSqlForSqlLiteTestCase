

  CREATE TABLE node(node_id INTEGER PRIMARY KEY);
  CREATE TABLE edge(node_from INT, node_to INT);
  CREATE TABLE sub_nodes(node_id INTEGER PRIMARY KEY);
  CREATE INDEX edge_from_to ON edge(node_from,node_to);
  CREATE INDEX edge_to_from ON edge(node_to,node_from);
  ANALYZE;
  DELETE FROM sqlite_stat1;
  INSERT INTO sqlite_stat1 VALUES
    ('sub_nodes',NULL,'1000000'),
    ('edge','edge_to_from','20000000 2 2'),
    ('edge','edge_from_to','20000000 2 2'),
    ('node',NULL,'10000000');
  ANALYZE sqlite_schema;


S
Q
