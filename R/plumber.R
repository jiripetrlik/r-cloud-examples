library("quantmod")

### Basic examples

#' @get /
#' @html
function() {
  return("<html><body>Hello world!!!</body></html>")
}

#' @get /calculator
function(operand1, operand2, f) {
  op1 <- as.numeric(operand1)
  op2 <- as.numeric(operand2)
  
  if (f == "add") {
    return(op1 + op2)
  } else if (f == "sub") {
    return(op1 - op2)
  } else if (f == "mul") {
    return(op1 * op2)
  } else if (f == "div") {
    return(op1 / op2)
  } else {
    return("Unknown operation")
  }
}

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
