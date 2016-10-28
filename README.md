# marcinlib
Rcpp package for various functions related to scRNA-Seq

Writing a [Rcpp package](http://dirk.eddelbuettel.com/code/rcpp/Rcpp-package.pdf) and Hadley's [guide for writing R packages](http://r-pkgs.had.co.nz/) are useful resources for package development. Specially, taking a look at the [Rcpp](http://adv-r.had.co.nz/Rcpp.html) chapter of the book is nice. 

## Install
```
devtools::install_github("buenrostrolab/marcinlib")
```

## Build/compile
- Consider bumping the version number in DESCRIPTION
- Run `Rcpp::compileAttributes()` to compile Cpp functions
- Run `roxygen2::roxygenise()` to generate `man` pages
- `Build` and `Check` package in RStudio

## Interfacing with github
- `git pull` before starting on edits
- Make edits
- `git add -A` adds all changes
- `git commit -m "message here"` has your commit message (describing how you changed the code)
- `git push` syncs your local version to the version on github

