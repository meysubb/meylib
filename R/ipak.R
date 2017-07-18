#' Function to load or install package
#'
#' This function will load packages and install them if missing. 
#' It can handle a vector of package names as well. 
#' @param pkgs packages to load
#' @keywords Load/Install Packages
#' @export
#' @examples
#' ipak()

ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg)) 
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}