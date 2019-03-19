library(plumber)

environment_variables <- Sys.getenv()
application <- environment_variables["APPLICATION"]

r <- plumb(application)
r$run(host="0.0.0.0", port=80)
