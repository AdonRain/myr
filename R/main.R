## Personal R Tool Kit

#' First line is title
#'
#' This is a brief description.
#'
#' Anything else after the description goes to the Details section.

#'
#' @param x a numeric vector giving the values of the random variable.
#' @param probs optional, a numeric vector giving the probabilities
#'   corresponding to each x value. If not specific, assumes all outcomes
#'   are equally likely
#' @export
#' @return An S3 object of class rv.
#' @examples

myr_library <- function(package) {
  new.package <- package[!(package %in% installed.packages()[, "Package"])]

  if (length(new.package)){
    install.packages(new.package, dependencies = TRUE)
  }

  sapply(package, require, character.only = TRUE)
}
