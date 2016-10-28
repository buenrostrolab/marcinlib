#' Remove 'chr' from GRanges seqnames
#'
#' \code{rmchr} takes a loops object or GRanges object and 
#' simply removes the 'chr' from seqnames, if is present
#'
#' Often times, performing functions on GRanges objects can go awry 
#' if the seqnames are systematically different. A common example of
#' this is when some GRanges objects has the format of 'chr1' 
#' while the other has '1'. We can remove 'chr' from the first object 
#'
#' @param dlo A loops object or GRanges object
#'
#' @return An identical loops/GRanges object except 'chr' removed
#'
#' @examples
#' library(GenomicRanges)
#' regA <- GRanges(c('1'),IRanges(c(36200000),c(36300000)))
#' addchr(regA)
#' regA
#' rmchr(regA)
#' regA

#' @import GenomicRanges
#' 
#' @export
setGeneric(name = "rmchr", def = function(dlo) standardGeneric("rmchr"))

#' @rdname rmchr
setMethod(f = "rmchr", signature = c("GRanges"), definition = function(dlo) {
    seqlevels(dlo) <- gsub("^chr(.*)$", "\\1", seqlevels(dlo))
    return(dlo)
})
