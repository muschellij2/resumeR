#'@title Harmonic mean
#'
#'@description get a Harmonic mean
#'@param x is a numeric value, could be a  a vector or data.frame
#'@param na.rm remove missing values before computing
#' @param zero is any value of zero. If \code{FALSE}, zeros will
#' be removed
#'@export h_mean
#'@keywords h_mean
#'@return a geometric mean
#'@export h_mean
#'
#'@examples
#'x<-rnorm(25,2,3)
#'h_mean(x)

h_mean <- function (x, na.rm = TRUE, zero = TRUE)
{
  if (!zero) {
    x[x == 0] <- NA
  }
  if (is.null(nrow(x))) {
    1/mean(1/x, na.rm = na.rm)
  }
  else {
    1/(colMeans(1/x, na.rm = na.rm))
  }
}
