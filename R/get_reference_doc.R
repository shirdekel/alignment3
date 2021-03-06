##' @title Extract text from Qualtrics .docx export.
##'
##' Needed because the first row of the dataframe doesn't contain information about within-subjects conditions.
##'
##' @return
##' @author Shir Dekel
##' @export
get_reference_doc <- function() {

  reference_doc <-
    project_path(file.path("inst", "apples_and_oranges_4_v2.docx")) %>%
    readtext::readtext() %>%
    .[["text"]]

  return(reference_doc)
}
