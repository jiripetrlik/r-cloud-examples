library("quantmod")

### Finance examples

#' @get /get-finance-data
function(symbol, time) {
  data <- getSymbols(symbol, auto.assign = F)
  
  if (missing(time)) {
    return(as.data.frame(data[nrow(data)]))
  } else {
    return(as.data.frame(data[time]))
  }
}

#' @get /plot-finance-data
#' @png(width = 800, height = 600)
function(symbol, lastNDays = 180, TA = "addMACD()") {
  data <- getSymbols(symbol, auto.assign = F)
  chartSeries(tail(data, lastNDays), TA = TA)
}
