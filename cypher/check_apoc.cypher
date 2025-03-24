// check_apoc_version

RETURN apoc.version() AS output;

// apoc_help

call apoc.help("load");