# TODO: add validity on plotType and varType and varList

#' healthvis socket class definition
#' 
#' @exportClass HVServer
HVServer = setRefClass("HVServer",
                       fields=list(
                         port="integer",
                         websocket="ANY",
                         server="ANY",
                         interrupted="logical",
                         msgCallback="function"))
                         
#' healthvis class definition
#' 
#' @exportClass healthvis
setClass("healthvis", representation=representation(
  plotType="character",
  plotTitle="character",
  varType="character",
  varList="list",
  url="character",
  serverID="character",
  d3Params="character",
  server="HVServer")
)

