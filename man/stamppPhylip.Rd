\name{stamppPhylip}
\alias{stamppPhylip}
\title{
Export to Phylip Format
}
\description{
Converts the genetic distance matrix generated with stamppNeisD into Phylip format and exports it as a text file.
}
\usage{
stamppPhylip(distance.mat, file = "")
}
\arguments{
  \item{distance.mat}{
the matrix containing the genetic distances generated from stamppNeisD to be converted into Phylip format
}
  \item{file}{
the file path and name to save the Phylip format matrix as
}
}
\details{
The exported Phylip formated text file can be easily imported into sofware packages such as DARWin (Perrier & Jacquemound-Collet 2006) to be used to generate neighbour joining trees. 
}
\references{
Perrier X, Jacquemound-Collet JP (2006) DARWin - Dissimilarity Analysis and Representation for Windows. Agricultural Research for Development
}
\author{
LW Pembleton
}
\examples{
# import genotype data and convert to allele frequecies 
data(potato.mini, package="StAMPP")
potato.freq <- stamppConvert(potato.mini, "r")

# Calculate genetic distance between populations
potato.D.pop <- stamppNeisD(potato.freq, TRUE)

# Export the genetic distance matrix in Phylip format
stamppPhylip(potato.D.pop, file="potato_distance.txt")
}