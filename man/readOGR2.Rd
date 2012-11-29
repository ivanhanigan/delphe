\name{readOGR2}
\alias{readOGR2}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Read a PostGIS table via OGR.
%%  ~~function to do ... ~~
}
\description{Reads spatial data from a postgres server, without exposing passwords like readOGR1.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
readOGR2(hostip = NA, user = NA, db = NA, layer = NA, p = NA)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{hostip}{
%%     ~~Describe \code{hostip} here~~
}
  \item{user}{
%%     ~~Describe \code{user} here~~
}
  \item{db}{
%%     ~~Describe \code{db} here~~
}
  \item{layer}{
%%     ~~Describe \code{layer} here~~
}
  \item{p}{
%%     ~~Describe \code{p} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{ivanhanigan plus the readOGR1 author
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{# shp <- readOGR2(thehostip, theUserName, thedatabaseName, thedata)
# enter the password at the prompt.
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
