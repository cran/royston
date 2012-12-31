\name{royston.test}
\alias{royston.test}
\title{Royston's Multivariate Normality Test}
\description{A function to generate the Shapiro-Wilk's W statistic needed to feed the Royston's H test for multivariate normality}
\usage{royston.test(a)}
\arguments{\item{a}{A numeric matrix or data frame}}
\value{
\item{statistic}{the value of Royston's H statistic at significance level 0.05}
\item{p.value}{an approximate p-value for the test with respect to equivalent degrees of freedom (edf)}
}
\details{If kurtosis of the data greater than 3 then Shapiro-Francia test is better for leptokurtic samples
else Shapiro-Wilk test is better for platykurtic samples.}
\references{
Johnson, R.A. and Wichern, D. W. (1992). Applied Multivariate Statistical Analysis. 3rd. ed. New-Jersey:Prentice Hall.

Mecklin, C.J. and Mundfrom, D.J. (2005). A Monte Carlo comparison of the Type I and Type II error rates of tests of multivariate normality. Journal of Statistical Computation and Simulation, 75:93-107.

Royston, J.P. (1982). An Extension of Shapiro and Wilks W Test for Normality to Large Samples. Applied Statistics, 31(2):115124.

Royston, J.P. (1983). Some Techniques for Assessing Multivariate Normality Based on the Shapiro-Wilk W. Applied Statistics, 32(2).

Royston, J.P. (1992). Approximating the Shapiro-Wilk W-Test for non-normality. Statistics and Computing, 2:117-119.121133.

Royston, J.P. (1995). Remark AS R94: A remark on Algorithm AS 181: The W test for normality. Applied Statistics, 44:547-551.

Shapiro, S. and Wilk, M. (1965). An analysis of variance test for  normality. Biometrika, 52:591611.

Trujillo-Ortiz, A., R. Hernandez-Walls, K. Barba-Rojo and L. Cupul-Magana. (2007). Roystest:Royston's Multivariate Normality Test. A MATLAB file. URL http://www.mathworks.com/matlabcentral/fileexchange/17811}
\author{Selcuk Korkmaz}
\seealso{\code{\link[stats]{shapiro.test}} \code{\link[nortest]{sf.test}} \code{\link[moments]{kurtosis}} \code{\link[stats]{mahalanobis}} \code{\link[stats]{qqplot}} \code{\link[stats]{qchisq}}}
\examples{
a=iris[1:50,1:4] # Iris data only for setosa and four variables
royston.test(a)  # Data analyzed have a non-normal distribution.

#Variable 4 (petal width) is markedly non-normal. So when take off that variable;

dev.new()
a=iris[1:50,1:3] # Iris data only for setosa and three variables
royston.test(a)  # Data analyzed have a normal distribution.
}

