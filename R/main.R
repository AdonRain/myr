## Personal R Tool Kit

#' First line is title
#'
#' This is a brief description.
#'
#' Anything else after the description goes to the Details section.

myr_library <- function(package) {
  new.package <- package[!(package %in% installed.packages()[, "Package"])]

  if (length(new.package)){
    install.packages(new.package, dependencies = TRUE)
  }

  sapply(package, require, character.only = TRUE)
}
