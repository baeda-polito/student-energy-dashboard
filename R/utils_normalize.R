#' Normalizes with z score
#' @param x Input variable
#' @param na.rm If TRUE missing values are removed before calculation
#' @return If x is a numeric variable return (x - mean(x)) / sd(x)
#' @examples 
#' x <- data$Total_Power
#' x_zscore <- zscore(x)
#' head(x)
#' @export
zscore <- function(x, na.rm = TRUE) {
  if (is.numeric(x)) {
    x_sd <- sd(x, na.rm = na.rm)
    x <- x - mean(x, na.rm = na.rm)
    if (isTRUE(x_sd > 0)) {
      x / x_sd
    } else {
      x
    }
  } else { # not numeric
    x
  }
}
#' Normalizes with min-max
#' @param x Input variable
#' @param na.rm If TRUE missing values are removed before calculation
#' @return If x is a numeric variable return (x - min(x)) / (max(x) - min(x))
#' @examples 
#' x <- data$Total_Power
#' x_minmax <- minmax_scaling(x)
#' head(x)
#' @export
minmax_scaling <- function(x, na.rm = TRUE) {
  if (is.numeric(x)) {
    (x- min(x, na.rm = na.rm))/(max(x, na.rm = na.rm) - min(x, na.rm = na.rm))
  } else {
    x
  }
  
}

#' Normalizes with max
#' @param x Input variable
#' @param na.rm If TRUE missing values are removed before calculation
#' @return If x is a numeric variable return x/max(x)
#' @examples 
#' x <- data$Total_Power
#' x_max <- max_scaling(x)
#' head(x)
#' @export
max_scaling <- function(x, na.rm = TRUE) {
  if (is.numeric(x)) {
    x/max(x, na.rm = na.rm)
  } else {
    x
  }
}
