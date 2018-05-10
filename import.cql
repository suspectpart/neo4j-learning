USING PERIODIC COMMIT 500
LOAD CSV from 'file:///nodes.csv' as line
CREATE (a: Node {name: line[1]});