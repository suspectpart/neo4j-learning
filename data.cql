CREATE 
(vnd:Federation {name: 'Klinikverband Niedersachsen'}),
(vbw:Federation {name: 'Klinikverband Baden-Württemberg'}),
(hn:OU {name: 'Forschungsmedizin Hannover'}),
(os:OU {name: 'Universitätsmedizin Osnabrück'}),
(kl:OU {name: 'Universitätsmedizin Göttingen'}),
(hn)-[:MemberOf]->(vnd),
(os)-[:MemberOf]->(vnd),
(kl)-[:MemberOf]->(vnd),
(r1:OU {name: 'Ressort 1: Forschung und Lehre'}),
(r2:OU {name: 'Ressort 2: Krankenversorgung'}),
(r3:OU {name: 'Ressort 3: Wirtschaftsführung und Administration', head: 'Dr. Sebastian Freytag'}),
(r1)-[:DepartmentOf]->(kl),
(r2)-[:DepartmentOf]->(kl),
(r3)-[:DepartmentOf]->(kl),

(r21:OU {name: 'Pflegedirektion'}),
(r21)-[:DepartmentOf]->(r2),
(r22:OU {name: 'Stabsstellen'}),
(r22)-[:DepartmentOf]->(r2),
(r23:OU {name: 'Kommissionen'}),
(r23)-[:DepartmentOf]->(r2),
(r24:OU {name: 'Beauftragte'}),
(r24)-[:DepartmentOf]->(r2),
(r25:OU {name: 'Geschäftsführung Kliniken'}),
(r25)-[:DepartmentOf]->(r2),
(r26:OU {name: 'Zentrale Einrichtungen der Krankenversorgung'}),
(r26)-[:DepartmentOf]->(r2),

(r211:OU {name: 'Pflegedienst der Univeristätsmedizin Göttingen'}),
(r211)-[:DepartmentOf]->(r21),
(r212:OU {name: 'Pflegefunktionsdienste (Diagnostik, Poliklinik, OP)'}),
(r212)-[:DepartmentOf]->(r21),
(r213:OU {name: 'Patientenmanagement'}),
(r213)-[:DepartmentOf]->(r21),

(p1:Person {name: 'Lukas Kumbrier'}),
(p2:Person {name: 'Heinz Schulz'}),
(p3:Person {name: 'Kimberly DotCom'}),
(p4:Person {name: 'Karl-Heinz Schulte-Brömmelkamp'}),
(p5:Person {name: 'Betram Baden'}),
(p6:Person {name: 'Prof. Dr. Heyo K. Kroemer'}),
(p7:Person {name: 'Dr. Martin Siess'}),

(p1)-[:WorksAt]->(r213),
(p2)-[:WorksAt]->(r213),
(p3)-[:WorksAt]->(r211),
(p4)-[:WorksAt]->(r22),
(p5)-[:WorksAt{role: 'Assistant'}]->(vbw),
(p6)-[:WorksAt{role: 'Head'}]->(r1),
(p7)-[:WorksAt{role: 'Head'}]->(r2);
