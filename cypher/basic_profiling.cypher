// count_nodes
MATCH (n) 
RETURN COUNT(n) as Total_Nodes;


// count_relationships
MATCH ()-[r]->() 
RETURN COUNT(r) as Total_Relationships;

// alternative_command to count the relationships
MATCH ()-->() RETURN count(*);

// List functions
SHOW FUNCTIONS;

// List procedures
SHOW PROCEDURES;
