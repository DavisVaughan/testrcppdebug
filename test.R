library(Rcpp)
sourceCpp(file = "test.cpp", cacheDir = getwd())

max_even <- function(x){

  browser()
  if (!all.equal(x, as.integer(x))){
    stop("All numbers must be integers")
  }

  if (length(x) < 1){
    stop("Must have at least one element")
  }
  # GET LARGEST NUMBER IN C
  max <- findMax(x)
  return(max %% 2 == 0)
}

max_even(c(1, 4, 1, 352, 31, 3, 1, 61))
