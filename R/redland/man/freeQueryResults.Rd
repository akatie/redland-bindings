% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/QueryResults.R
\docType{methods}
\name{freeQueryResults}
\alias{freeQueryResults}
\alias{freeQueryResults,QueryResults-method}
\title{Free memory used by a librdf query results}
\usage{
freeQueryResults(.Object)

\S4method{freeQueryResults}{QueryResults}(.Object)
}
\arguments{
\item{.Object}{a QueryResults object}
}
\description{
After this method is called, the QueryResults object is no longer usable and should
be deleted with \code{"rm(query)"}.
}
\examples{
world <- new("World")
storage <- new("Storage", world, "hashes", name="", options="hash-type='memory'")
model <- new("Model", world, storage, options="")
stmt <- new("Statement", world=world, 
  subject="https://orcid.org/0000-0002-2192-403X",
  predicate="http://www.w3.org/ns/prov#Agent",
  object="slaughter", 
  objectType="literal", datatype_uri="http://www.w3.org/2001/XMLSchema#string")
status <- addStatement(model, stmt)
queryString <- paste("PREFIX orcid: <https://orcid.org/>",
                     "PREFIX dataone: <https://cn.dataone.org/cn/v1/resolve/>",
                     "PREFIX prov: <http://www.w3.org/ns/prov#>",
                     "SELECT ?a ?c WHERE { ?a prov:Agent ?c . }", sep=" ")
query <- new("Query", world, queryString, base_uri=NULL, 
  query_language="sparql", query_uri=NULL)
queryResult <- executeQuery(query, model)
result <- getNextResult(queryResult)

# When the queryResult is no longer needed, the resources it had allocated can be freed.
freeQueryResults(queryResult)
rm(queryResult)
}

