# ## Personal R Tool Kit
#
# #' First line is title
# #'
# #' This is a brief description.
# #'
# #' Anything else after the description goes to the Details section.
#
# #'
# #' @param x a numeric vector giving the values of the random variable.
# #' @param probs optional, a numeric vector giving the probabilities
# #'   corresponding to each x value. If not specific, assumes all outcomes
# #'   are equally likely
# #' @export
# #' @return An S3 object of class rv.
# #' @examples
#
# myr_library <- function(package) {
#   new.package <- package[!(package %in% installed.packages()[, "Package"])]
#
#   if (length(new.package)){
#     install.packages(new.package, dependencies = TRUE)
#   }
#
#   sapply(package, require, character.only = TRUE)
# }

#' Compute the probability that an event occurs.
#'
#' @param x an event. An event is a special type of discrete random variable
#'   that only has two outcomes: \code{TRUE} or \code{FALSE}. It is usually
#'   created by applying a comparison operator to a random variable.
#' @return a probability (numeric vector of length 1) between 0 and 1.
#' @export
#' @examples
#' wheel <- rv(1:20)
#' P(wheel > 10)
#' P(wheel %% 2 == 0)
P <- function(x) {
  stopifnot(is.logical(x), is.rv(x))
  sum(probs(x)[x])
}
