#'@title A standard error
#'
#'@description The standard error (SE) of a statistic is the standard deviation of its sampling distribution.
#'@param x is a numeric value, could be a  a vector or data.frame
#'@export se
#'@keywords se
#'@return A standard error
#' @import stats
#'@examples
#'x<-rnorm(25,2,3)
#'se(x)
#'


se<-function (x)
{
  dig = getOption("digits")
  options(digits = 3)
  on.exit({
    options(digits = dig)
  })
  n <- length(x)
  Stdev <- sd(x, na.rm = TRUE)
  xse = Stdev/sqrt(n)
  SE <- round(xse, 3)
  Ma<-round(mean(x, na.rm = TRUE), 3)
  print(SE)
  SE3 <-message(paste0("mean= ", Ma, "\u00b1", SE, " =standard error"))
  return(xse)
}
