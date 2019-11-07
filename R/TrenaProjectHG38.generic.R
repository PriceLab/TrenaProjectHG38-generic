#----------------------------------------------------------------------------------------------------
#' @import methods
#' @import TrenaProject
#' @importFrom AnnotationDbi select
#' @import org.Hs.eg.db
#'
#' @title TrenaProjectHG38.generic-class
#'
#' @name TrenaProjectHG38.generic-class
#' @rdname TrenaProjectHG38.generic-class
#' @aliases TrenaProjectHG38.generic
#' @exportClass TrenaProjectHG38.generic
#'

.TrenaProjectHG38.generic <- setClass("TrenaProjectHG38.generic",
                                  contains="TrenaProjectHG38")

#----------------------------------------------------------------------------------------------------
#' Define an object of class TrenaProjectHG38.generic
#'
#' @description
#' Expression, variant and covariate data for the genes of interest (perhaps unbounded) for pre-term birth studies
#'
#' @rdname TrenaProjectHG38.generic-class
#'
#' @export
#'
#' @return An object of the TrenaProjectHG38.generic class
#'

TrenaProjectHG38.generic <- function(quiet=TRUE)

{
   footprintDatabaseNames <- NA_character_;
   footprintDatabaseHost <- NA_character_;
   footprintDatabasePort <- NA_integer_;
   dataDirectory <- system.file(package="TrenaProjectHG38.generic", "extdata")
   covariatesFile <- NA_character_;

   stopifnot(file.exists(dataDirectory))

   .TrenaProjectHG38.generic(TrenaProjectHG38(projectName="TrenaProjectHG38.generic",
                                                supportedGenes=NA_character_,
                                                footprintDatabaseHost=footprintDatabaseHost,
                                                footprintDatabasePort=footprintDatabasePort,
                                                footprintDatabaseNames=footprintDatabaseNames,
                                                packageDataDirectory=dataDirectory,
                                                quiet=quiet
                                                ))

} # TrenaProjectHG38.generic, the constructor
#----------------------------------------------------------------------------------------------------
