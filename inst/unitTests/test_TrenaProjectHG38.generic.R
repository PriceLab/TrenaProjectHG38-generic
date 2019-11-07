library(TrenaProjectHG38.generic)
library(RUnit)
library(trenaSGM)
#------------------------------------------------------------------------------------------------------------------------
if(!exists("tpe")) {
   message(sprintf("--- creating instance of TrenaProjectHG38.generic"))
   tp <- TrenaProjectHG38.generic();
   }
#------------------------------------------------------------------------------------------------------------------------
runTests <- function()
{
   test_constructor()

} # runTests
#------------------------------------------------------------------------------------------------------------------------
test_constructor <- function()
{
   message(sprintf("--- test_constructor"))

   checkTrue(all(c("TrenaProjectHG38.generic", "TrenaProjectHG38") %in% is(tp)))

} # test_constructor
#------------------------------------------------------------------------------------------------------------------------
test_enhancers <- function()
{
   message(sprintf("--- test_enhancers"))
   tbl.enhancers <- getEnhancers(tp, "GATA2")
   checkEquals(dim(tbl.enhancers), c(15, 16))
   tbl.ghElite <- subset(tbl.enhancers, elite)
   checkEquals(dim(tbl.ghElite), c(4, 16))

} # test_constructor
#------------------------------------------------------------------------------------------------------------------------
if(!interactive())
   runTests()
