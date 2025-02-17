% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/validate_rmd.R
\name{stop_if_not}
\alias{stop_if_not}
\title{A specialized version of \code{stopifnot()} for \strong{pointblank}: \code{stop_if_not()}}
\usage{
stop_if_not(...)
}
\arguments{
\item{...}{R expressions that should each evaluate to (a logical vector of
all) \code{TRUE}.}
}
\value{
\code{NULL} if all statements in \code{...} are \code{TRUE}.
}
\description{
This variation of \code{stopifnot()} works well as a standalone replacement for
\code{stopifnot()} but is also customized for use in validation checks in R
Markdown documents where \strong{pointblank} is loaded and \code{\link[=validate_rmd]{validate_rmd()}} is
invoked. Using \code{stop_if_not()} in a code chunk where the \code{validate = TRUE}
option is set will yield the correct reporting of successes and failures
whereas \code{stopifnot()} does not.
}
\section{Function ID}{

13-5
}

\examples{
# This checks whether the number of
# rows in `small_table` is greater
# than `10`
stop_if_not(nrow(small_table) > 10)

# This will stop for sure: there
# isn't a `time` column in `small_table`
# (but there are the `date_time` and
# `date` columns)
# stop_if_not("time" \%in\% colnames(small_table))

# You're not bound to using tabular
# data here, any statements that
# evaluate to logical vectors will work
stop_if_not(1 < 20:25 - 18)

}
\seealso{
Other Utility and Helper Functions: 
\code{\link{affix_datetime}()},
\code{\link{affix_date}()},
\code{\link{col_schema}()},
\code{\link{from_github}()},
\code{\link{has_columns}()}
}
\concept{Utility and Helper Functions}
