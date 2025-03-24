// Create unique property constraint
// Replace:
//   'LabelName' with node label
//   'propertyKey' with property that should be unique
CREATE CONSTRAINT UNIQUE_CONSTRAINT_FOR_propertyKey
FOR (n:LabelName)
REQUIRE n.propertyKey IS UNIQUE