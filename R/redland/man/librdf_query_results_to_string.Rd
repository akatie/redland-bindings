% Generated by redland-bindings R program "createLibrdfDocs.R": do not edit by hand
\name{librdf_query_results_to_string}
\alias{librdf_query_results_to_string}
\title{Turn a query results into a string.}
\usage{
librdf_query_results_to_string ( query_results,
	format_uri,
	base_uri )
}
\arguments{

\item{query_results}{librdf_query_results object ("_p_librdf_query_results")}

\item{format_uri}{URI of syntax to format to ("_p_librdf_uri_s")}

\item{base_uri}{Base URI of output formatted syntax (or NULL) ("_p_librdf_uri_s")}

}
\value{
character
}
\description{
Turn a query results into a string.
}
\references{
\url{http://librdf.org/docs}
}
\seealso{
This R function is a wrapper function that directly calls the the Redland RDF C libraries. 
For more information about Redland RDF, view the online documentation indicated in the 'References' section.
}
