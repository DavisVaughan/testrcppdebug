#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
int findMax(NumericVector x) {
  int n = x.size();
  int max = x[0];

  for(int i = 1; i < n; ++i) {
    if (max < x[i]){
      max = x[i];
    }
    if (i == 5){
      throw std::invalid_argument("error!");
    }
  }
  return max;
}
