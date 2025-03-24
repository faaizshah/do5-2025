// apoc_load_json

// WITH 'https://raw.githubusercontent.com/neo4j/apoc/5.0/src/test/resources/person.json' AS url
// CALL apoc.load.json(url) YIELD value as person;

CALL apoc.load.json("file:///sample_data.json") YIELD value
