count_pairs <- function(n, m){
  sum((1:n%x%1:n)%%((rep(1:n, each = n))+(rep(1:n, times = n))) == m) # repeated use of rep() function with each and times arguments ----
}

