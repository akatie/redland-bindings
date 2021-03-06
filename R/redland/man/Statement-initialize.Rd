% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Statement.R
\docType{methods}
\name{initialize,Statement-method}
\alias{Statement-initialize}
\alias{initialize,Statement-method}
\title{Construct a Statement object.}
\usage{
\S4method{initialize}{Statement}(.Object, world, subject, predicate, object,
  subjectType = as.character(NA), objectType = as.character(NA),
  datatype_uri = as.character(NA))
}
\arguments{
\item{.Object}{the Statement object}

\item{world}{a World object}

\item{subject}{a Node object}

\item{predicate}{a Node object}

\item{object}{a Node object}

\item{subjectType}{the Node type of the subject, i.e. "blank", "uri"}

\item{objectType}{the Node type of the object, i.e. "blank", "uri", "literal"}

\item{datatype_uri}{the datatype URI to associate with a object literal value}
}
\value{
the Statement object
}
\description{
Construct a Statement object.
}

