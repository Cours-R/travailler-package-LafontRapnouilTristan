#' triple
#'
#' @param x a numeric vector
#' @param ... further arguments passed to the generic method.
#'
#' @return A vector the same length as `x` containing the returning values
#' @export
#'
#' @examples
#' triple(2)
#' triple(1:4)
triple <- function(x, ...) {
  UseMethod("triple")
}

#' triple.integer
#'
#' compute the triple of an integer
#'
#' @param x a vector of integers
#' @param ... further arguments passed to the generic method.
#'
#' @return A vector the same length as `x` containing the returning values
#' @export
#'
#' @examples
#' triple.integer(1:4)
triple.integer <- function(x, ...) {
  return(x * 3L)
}

#' triple.numeric
#'
#' compute the triple of a real number
#'
#' @param x a numeric vector
#' @param ... further arguments passed to the generic method.
#'
#' @return A vector the same length as `x` containing the returning values
#' @export
#'
#' @examples
#' triple.numeric(1:4)
triple.numeric <- function(x, ...) {
  return(x * 3)
}
