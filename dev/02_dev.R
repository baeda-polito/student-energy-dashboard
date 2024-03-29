# Building a Prod-Ready, Robust Shiny Application.
#
# README: each step of the dev files is optional, and you don't have to
# fill every dev scripts before getting started.
# 01_start.R should be filled at start.
# 02_dev.R should be used to keep track of your development during the project.
# 03_deploy.R should be used once you need to deploy your app.
#
#
###################################
#### CURRENT FILE: DEV SCRIPT #####
###################################

# Engineering

## Dependencies ----
## Add one line by package you want to add as dependency
usethis::use_package("shiny")
usethis::use_package("shinyBS")
usethis::use_package("shinyFeedback")
usethis::use_package("shinydashboard")
usethis::use_package("shinycssloaders")
usethis::use_package("shinyWidgets")
usethis::use_package("shinyalert")
usethis::use_package("shinyjs")
usethis::use_package("grDevices")
usethis::use_package("pkgdown")           # automatic site package documentation
usethis::use_package("magrittr")          # pipe operator
usethis::use_package("simputation")       # NA imputation with cart
usethis::use_package("imputeTS")          # NA imputation
usethis::use_package("plyr")
usethis::use_package("purrr")
usethis::use_package("dplyr")             # data analytics useful functions
usethis::use_package("lubridate")         # work with dates and time
usethis::use_package("tidyr")
usethis::use_package("RColorBrewer")      # color palette
usethis::use_package("utils")
usethis::use_package("ggplot2")           # make plots
usethis::use_package("rpart")             # make classification tree
usethis::use_package("rpart.plot")        # plot classification tree
usethis::use_package("grid")              # plot classification tree
usethis::use_package("partykit")          # regression and classification tree plot and tools
usethis::use_package("MLmetrics")         # measure regression) classification and ranking performance.
usethis::use_package("stats")             # predict evaluation
usethis::use_package("knitr")             # to compile rmarkdown
usethis::use_package("rmarkdown")         # to compile rmarkdown
usethis::use_package("ggplot2")           # pretty plots
usethis::use_package("DT")                # table visualizations
usethis::use_package("data.table")        # table processing and visualization
usethis::use_package("rlang")             # to compile rmarkdown
# clustering algorithm
# usethis::use_package("LICORS")
usethis::use_package("amap")
usethis::use_package("NbClust")           # evaluation of number of clusters
usethis::use_package("scales")            # plot scales

## Add modules ----
## Create a module infrastructure in R/
golem::add_module(name = "modulo_prova") # Name of the module
# golem::add_module( name = "name_of_module2" ) # Name of the module

## Add helper functions ----
## Creates ftc_* and utils_*
golem::add_fct("helpers")
golem::add_utils("helpers")

## External resources
## Creates .js and .css files at inst/app/www
golem::add_js_file("script")
golem::add_js_handler("handlers")
golem::add_css_file("custom")

## Add internal datasets ----
## If you have data in your package
usethis::use_data_raw(name = "data", open = FALSE)

## Tests ----
## Add one line by test you want to create
# usethis::use_test( "app" )

# Documentation

## Vignette ----
usethis::use_vignette("preprocessing")
# usethis::use_vignette("clustering")
# usethis::use_vignette("classification")
devtools::build_vignettes()

## Code Coverage----
## Set the code coverage service ("codecov" or "coveralls")
# usethis::use_coverage()

# Create a summary readme for the testthat subdirectory
# covrpage::covrpage()

## CI ----
## Use this part of the script if you need to set up a CI
## service for your application
##
## (You'll need GitHub there)
# usethis::use_github()

# GitHub Actions
# usethis::use_github_action()
# Chose one of the three
# See https://usethis.r-lib.org/reference/use_github_action.html
# usethis::use_github_action_check_release()
# usethis::use_github_action_check_standard()
# usethis::use_github_action_check_full()
# # Add action for PR
# usethis::use_github_action_pr_commands()

usethis::use_pkgdown()


# Travis CI
# usethis::use_travis()
# usethis::use_travis_badge()

# AppVeyor
# usethis::use_appveyor()
# usethis::use_appveyor_badge()

# Circle CI
# usethis::use_circleci()
# usethis::use_circleci_badge()

# Jenkins
#usethis::use_jenkins()

# GitLab CI
#usethis::use_gitlab_ci()

# You're now set! ----
# go to dev/03_deploy.R
rstudioapi::navigateToFile("dev/03_deploy.R")
