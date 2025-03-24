// Create an index
// Replace:
//   'LabelName' with label to index
//   'propertyName' with property to be indexed
CREATE INDEX  INDEX_FOR_propertyName
FOR (n:LabelName)
ON (n.propertyName)
