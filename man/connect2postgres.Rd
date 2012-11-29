\name{connect2postgres}
\alias{connect2postgres}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Connect to postgres 
%%  ~~function to do ... ~~
}
\description{Connect to a postgres database server
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
connect2postgres(hostip = NA, db = NA, user = NA, p = NA, os = "linux", pgutils = c("/home/ivan/tools/jdbc", "c:/pgutils"))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{hostip}{IP
%%     ~~Describe \code{hostip} here~~
}
  \item{db}{databasename
%%     ~~Describe \code{db} here~~
}
  \item{user}{
%%     ~~Describe \code{user} here~~
}
  \item{p}{password
%%     ~~Describe \code{p} here~~
}
  \item{os}{Linux works better
%%     ~~Describe \code{os} here~~
}
  \item{pgutils}{if under windoze, where do you want downloads of postgres utils
%%     ~~Describe \code{pgutils} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{Database connection object.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{ivanhanigan
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
