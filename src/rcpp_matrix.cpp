#include <Rcpp.h>
using namespace Rcpp;

//' @title
//' meanC()
//' @description
//' Computes mean of numeric vector
//'
//' @param x Vector
//'
//' @details
//' \code{meanC} computes the mean of a vector using Rcpp
//'
//' @return
//' Returns a mean associated with a numeric vector. 
//'
//' @export
// [[Rcpp::export]]
double meanC(NumericVector x) {
  int n = x.size();
  double total = 0;

  for(int i = 0; i < n; ++i) {
    total += x[i];
  }
  return total / n;
}