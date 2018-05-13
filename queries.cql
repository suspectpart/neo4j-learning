// print everything
match(n) return n

// get whole subtree of the Pflegedirektion (all Departments and Employees)
match(n)-[*1..4]->(dep) where dep.name = "Pflegedirektion" return dep, n

// get all Employees and OUs of the Klinikverband Niedersachsen, knowing the depth
match(n)-[*1..5]->(dep) where dep.name = "Klinikverband Niedersachsen" return dep, n

// get all Heads of the Klinikverband Niedersachsen
match(p:Person)-[:WorksAt {role: 'Head'}]-()-[*0..5]->(dep) where dep.name = "Klinikverband Niedersachsen" return p

// get number of Employees in Klinikverband Niedersachsen
match(p:Person)-[:WorksAt]-()-[*0..5]->(dep) where dep.name = "Klinikverband Niedersachsen" return count(p)

// get the only Employee of the Klinikverband Baden-Württemberg i.G.
match(p:Person)-[:WorksAt]-()-[*0..5]->(dep) where dep.name = "Klinikverband Baden-Württemberg" return p

// get Employees of both Klinikverbände
match(p:Person)-[:WorksAt]-()-[*0..]->(dep) where dep.name = "Klinikverband Baden-Württemberg" or dep.name='Klinikverband Niedersachsen' return p

// nested trees with apoc
MATCH p=(n)<-[:DepartmentOf*0..5]-(root)
WITH COLLECT(p) as ps
CALL apoc.convert.toTree(ps) yield value
return value;
