\name{classify}
\alias{classify}
\alias{testAllDir}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Function to classify accelerometer and/or GPS data
}
\description{
Classifies data into behavior categories using a pre-computed two-level model.
}
\usage{
classify(accelerometers=NULL, GPS=NULL, modelName, saveDir, names=NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{accelerometers}{
(Optional) Path to a directory (or list of directories) containing actigraph accelerometer data files. Accelerometer data files should be csv files output in "raw" format by ActiLife (without timestamps), and named by the participant identifier, \emph{e.g.}, Participant01.csv.

Or, path to a directory (or list of directories) containing previously computed accelerometer features, \emph{i.e.}, computed by the function \emph{sensorsToFeatures}.
}
  \item{GPS}{
(Optional) Path to a PALMS-processed GPS data file (or a directory containing GPS data files). GPS data files should be in csv format with the following fields: \emph{identifier, dateTime, speed, ele, elevationDelta, lat, lon, nsatView, snrView}. \emph{identifier} should be the participant identifier, \emph{e.g.} Participant01. If \emph{GPS} is a path to a directory, each file in the directory should correspond to a participant, and the file name should be the participant identifier, \emph{e.g.}, Participant01.csv.

Or, path to a directory containing previously computed GPS features, \emph{i.e.}, computed by the function \emph{sensorsToFeatures}.
}
  \item{modelName}{Path to a pre-trained TLBC model. Either a model you trained yourself, \emph{i.e.}, the argument \emph{modelName} in the function \emph{trainModel}, or a pre-trained model that has been trained on one of three UCSD datasets, \href{http://ieng9.ucsd.edu/~kellis/TLBC.html}{available for download}. 

}
  \item{saveDir}{
Path to a directory where predictions will be saved. Predictions will be saved in files named <\emph{identifier}>.csv with two fields: \emph{timestamp, prediction}.
}
  \item{names}{
(Optional) List of participant identifiers to use.
}
}
\author{
Katherine Ellis
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%%
\examples{
\dontrun{

# use a pre-trained model to classify hip accelerometer data
myAccel="~/myStudy/HipGT3X+"
ovrWgtModel="OverweightWomenHipGT3X+.RData"
myPredictions="~/myStudy/predictions"
classify(accelerometers=myAccel, modelName=ovrWgtModel, saveDir=myPredictions)
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
