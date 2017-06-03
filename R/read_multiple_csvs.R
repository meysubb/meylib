#' Function to read multiple csvs
#'
#' This function will load all csvs (or file pattern ending) in path, or based on 
#' file lists provided. 
#' @param file_lists List of files to read into environment. Defaults to csvs in directory.
#' @keywords Read multiple files
#' @export
#' @examples
#' read_multiple_files()

read_multiple_files <- function(file_lists=NULL,pattern=".csv"){
  if(file_lists == NULL){
    file_lists <- list.files(pattern="*",pattern)
  }
  file_names <- gsub(pattern,"",file_lists)
  my.data <- lapply(file_lists, read.csv,sep="\t", header=TRUE, row.names=NULL, na.strings="?")
  names(my.data) <- file_names
  list2env(my.data,.GlobalEnv)
}

