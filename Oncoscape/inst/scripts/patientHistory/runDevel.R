library(OncoDev14)
scriptDir <- "patientHistory"
userID <- "test@nowhere.org"
current.datasets <- c("DEMOdz;TCGAgbm")
port <- 7541
onco <- OncoDev14(port=port, scriptDir=scriptDir, userID=userID, datasetNames=current.datasets)

if(Sys.info()[["nodename"]] != "lopez") 
   browseURL(sprintf("http://localhost:%d", port))

run(onco)
