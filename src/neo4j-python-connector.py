import os
from neo4j import GraphDatabase
from dotenv import load_dotenv

load_dotenv()

# neo4j_uri = os.getenv("AURA_URI")
# neo4j_user = os.getenv("AURA_USER")
# neo4j_password = os.getenv("AURA_PASSWORD")



neo4j_uri = os.getenv("NEO4J_URI")
neo4j_user = os.getenv("NEO4J_USER")
neo4j_password = os.getenv("NEO4J_PASSWORD")

 
URI =  neo4j_uri
AUTH = (neo4j_user, neo4j_password)

with GraphDatabase.driver(URI, auth=AUTH) as driver:
    driver.verify_connectivity()

    records, summary, keys = driver.execute_query( # (1)
        "RETURN COUNT {()} AS count"
    )

    # Get the first record
    first = records[0]      # (2)

    # Print the count entry
    print(first["count"])   # (3)

    driver.close()