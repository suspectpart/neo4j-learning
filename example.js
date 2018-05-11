const neo4j = require('neo4j-driver').v1

const driver = neo4j.driver("bolt://localhost", neo4j.auth.none)
const session = driver.session()

// get all persons working in all federations
const query = 'match(p:Person)-[:WorksAt]-()-[*0..]->(dep) where dep.name = "Klinikverband Baden-Württemberg" or dep.name="Klinikverband Niedersachsen" return p'

session.run(query).subscribe({
    onNext: function (record) {
        console.log(record.get(0));
    },
    onCompleted: function () {
        session.close();
        driver.close();
    },
    onError: function (error) {
        console.log(error);
    }
})