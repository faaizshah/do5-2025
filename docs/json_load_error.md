#### APOC Load Json Error 

If we try to execute following command to load a JSON file using APOC

```cypher
CALL apoc.load.json("file:///test_data.json") YIELD value
```
We see the following error:

![apoc-load-json-error](./images/apoc-load-json-error.png)

To resolve this, we need to add in the `conf` directory of the installation directory

![apoc-conf-directory](./images/apoc-conf-directory.png)

Create a file with name `apoc.conf`

![apoc-conf-file](./images/apoc-conf-file.png)



The contents of the file will be 

```cypher
apoc.import.file.enabled=true
```

The restart the database

And run the cypher command again

```cypher
CALL apoc.load.json("file:///test_data.json") YIELD value
```

And you will see the output as shown below.

![apoc-json-output](./images/apoc-json-output.png)
