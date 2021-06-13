

# Script to load packages

# load packages

pkg<- c("data.table","tidyverse","lubridate","ggplot2",
        "caret","zoo","IRanges",
        "party","RPostgreSQL","dyn","ggfortify",
        "TSclust","dtwclust","rpart","rpart.plot",
        "pracma","survival","ggfortify",
        "corrplot","MTS","forecast","GGally",
        "matrixStats","gridExtra","stargazer",
        "boot","EnvStats", "tidyr", "beepr","purrr", "broom", "gt")

installed<-installed.packages()

new.pkg<- pkg[pkg%in%installed ==F]

if(length(new.pkg)>0){
    install.packages(new.pkg)
    }

lapply(pkg, library,  character.only = TRUE)
