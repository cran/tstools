% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_swissdata.R
\name{read_swissdata}
\alias{read_swissdata}
\title{Read data generated by the Swissdata project}
\usage{
read_swissdata(path, key_columns, filter = NULL)
}
\arguments{
\item{path}{character full path to dataset.}

\item{key_columns}{character vector specifying all columns that should be
part of the key.}

\item{filter}{function A function that is applied to the raw data.data table after it is read. Useful for
filtering out undesired data.}
}
\description{
Read data from swissdata compliant .csv files and 
turn them into a list of time series.
}
\details{
The order of dimensions in key_columns determines their order in the key
The resulting ts_key will be of the form <swissdata-set-name>.<instance of key_columns[1]>...
}
\examples{
ds_location <- system.file("example_data/ch.seco.css.csv",package = "tstools")
tslist <- read_swissdata(ds_location,"idx_type")
tsplot(tslist[1])
}
