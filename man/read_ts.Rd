% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_ts.R
\name{read_ts}
\alias{read_ts}
\title{Import time series data from a file.}
\usage{
read_ts(file, format = c("csv", "xlsx", "json", "zip"), sep = ",",
  skip = 0)
}
\arguments{
\item{file}{Path to the file to be read}

\item{format}{Which file format is the data stored in? If no format is supplied, read_ts will attempt to guess
from the file extension.}

\item{sep}{character seperator for csv files. defaults to ','.}

\item{skip}{numeric See data.table's fread.}
}
\value{
A named list of ts objects
}
\description{
If importing from a zip file, the archive should contain a single file with the extension .csv, .xlsx or .json.
}
