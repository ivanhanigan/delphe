\name{shp2pgis}
\alias{shp2pgis}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
shp2pgis
}
\description{
shp2pgis
}
\usage{
shp2pgis(infile,d='postgis',u='postgres',host='localhost',srid=4283,schema='public',
                     pgutils = 'C:/pgutils/')
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{infile}{
the name of the shapefile (without any extension)
}
  \item{d}{
the name of the database
}
  \item{u}{
the name of the user
}
  \item{u}{
the name of the user
}
  \item{srid}{
the projection
}
  \item{schema}{

}
  \item{pgutils}{
where are your postgres utilities if not on path (defaults to windows)
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
\author{
Joe Guillaume, ivanhanigan
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{

# ABS spatial units are available at http://www.abs.gov.au/AUSSTATS/abs@.nsf/DetailsPage/1259.0.30.0022006?OpenDocument
# the following file is 44.2Mb

download.file("http://www.abs.gov.au/AUSSTATS/subscriber.nsf/log?openagent&1259030002_sla06aaust_shape.zip&1259.0.30.002&Data\%20Cubes&18E90A962EFD4D7ECA25795D00244F5A&0&2006&06.12.2011&Previous", "SLA06.zip", mode = "wb")
unzip('SLA06.zip',junkpaths=T)
shp2pgis(infile='SLA06aAUST', d='ewedb',u='gislibrary',host='115.146.84.209', schema='abs_sla',os='linux')

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
