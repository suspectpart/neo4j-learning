CREATE (kl:Node {name: 'Universitätsmedizin Göttingen'});
CREATE (r1:Node {name: 'Ressort 1: Forschung und Lehre', head: 'Prof. Dr. Heyo K. Kroemer'});
CREATE (r2:Node {name: 'Ressort 2: Krankenversorgung', head: 'Dr. Martin Siess'});
CREATE (r3:Node {name: 'Ressort 3: Wirtschaftsführung und Administration', head: 'Dr. Sebastian Freytag'});
CREATE (r1)-[:DepartmentOf]->(kl);
CREATE (r2)-[:DepartmentOf]->(kl);
CREATE (r3)-[:DepartmentOf]->(kl);

CREATE (r21:Node {name: 'Pflegedirektion'});
CREATE (r21)-[:DepartmentOf]->(r2);
CREATE (r22:Node {name: 'Stabsstellen'});
CREATE (r22)-[:DepartmentOf]->(r2);
CREATE (r23:Node {name: 'Kommissionen'});
CREATE (r23)-[:DepartmentOf]->(r2);
CREATE (r24:Node {name: 'Beauftragte'});
CREATE (r24)-[:DepartmentOf]->(r2);
CREATE (r25:Node {name: 'Geschäftsführung Kliniken'});
CREATE (r25)-[:DepartmentOf]->(r2);
CREATE (r26:Node {name: 'Zentrale Einrichtungen der Krankenversorgung'});
CREATE (r26)-[:DepartmentOf]->(r2);

CREATE (r211:Node {name: 'Pflegedienst der Univeristätsmedizin Göttingen'});
CREATE (r211)-[:DepartmentOf]->(r21);
CREATE (r212:Node {name: 'Pflegefunktionsdienste (Diagnostik, Poliklinik, OP)'});
CREATE (r212)-[:DepartmentOf]->(r21);
CREATE (r213:Node {name: 'Patientenmanagement'});
CREATE (r213)-[:DepartmentOf]->(r21);