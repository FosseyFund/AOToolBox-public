install.load <- function(package.name)
{
if (!require(package.name, character.only=T)) install.packages(package.name)
library(package.name, character.only=T)
}
install.load("rjson")
install.load("visNetwork")
install.load("shiny")
install.load("rhandsontable")
install.load("markdown")
install.load("RPostgreSQL")
install.load("gtools")
install.load("devtools")
##install.load("shinythemes")

if (!require("D3TableFilter", character.only=T)) devtools::install_github("ThomasSiegmund/D3TableFilter")
library(D3TableFilter)
library(shiny)
source("jsonOutputConversion.R")
source("postgres_upload.R")
source("postgres_connection.R")
options(shiny.maxRequestSize=20*1024^2)

library(htmlwidgets)
library(D3TableFilter)
 timeToChar <- function(x){
  		temp <- format(x)
  		temp[grepl("NA", temp)] <- NA
  		return(temp)
}
