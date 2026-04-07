#' Visualization functions to your BEFdata portal
#'
#' Visualize the keywords contained in your BEFdata portal vai a nice wordcloud.
#' @param color_pal Is a color palette you can create for example with the color brewer
#' 	  package. See in the examples below. This defaults to brewer.pal(8,"Dark2").
#' @param min_freq I passed to the wordcloud function and delimits the minimum freqency
#'	  the keyword needs to appear in the cloud. This defaults to 1.
#' @return The function returns a wordcloud based on the keywords of the BEFdata portal.
#' @examples \dontrun{
#' 	       require(RColorBrewer)
#'             my_palette = brewer.pal(8,"Dark2")
#' 	       bef.portal.visualize.keywords()
#'           }
#' @import wordcloud
#' @import RColorBrewer
#' @export bef.portal.visualize.keywords bef.visualize.keywords
#' @aliases bef.visualize.keywords

bef.portal.visualize.keywords <-  bef.visualize.keywords <- function(color_pal = brewer.pal(8,"Dark2"), min_freq = 1) {
  keyword_table = data.frame(bef.portal.get.keywords(), stringsAsFactors=FALSE)
  wordcloud(keyword_table$name ,keyword_table$count, scale = c(8,.2), min.freq = min_freq, max.words=Inf, random.order=FALSE, rot.per=.15, colors = color_pal)
}
