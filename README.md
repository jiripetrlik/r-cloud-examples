# R Cloud Examples

The aim of this project is to provide [Docker](https://www.docker.com)
images for running [RProject](https://www.r-project.org) and 
[Plumber](https://www.rplumber.io). Plumber is a library for running
REST web services in R. Project also contains few simple
examples of R REST web services.

## Images

### RProject image

[RProject image](https://hub.docker.com/r/jiripetrlik/rproject)
is based on Ubuntu and contains the last stable version
of R. Image is freely available on Docker hub and serves as
a base image for the Plumber image.

### Plumber image

[Plumber image](https://hub.docker.com/r/jiripetrlik/rproject-plumber)
allows user to simply run REST web service in R using
Plumber library. Default location of a web service definition
is `/app/default-app.R` which is a very simple "Hello world"
web service. This webservice can be simply overwritten or
its location can be changed using `APPLICATION`
environment variable.

## Examples

TODO
