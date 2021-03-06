% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tm_layers.R
\name{tm_text}
\alias{tm_text}
\title{Add text labels}
\usage{
tm_text(text, size = 1, col = NA, root = 3, size.lim = NA,
  sizes.legend = NULL, sizes.legend.labels = NULL,
  sizes.legend.text = "Abc", n = 5, style = ifelse(is.null(breaks),
  "pretty", "fixed"), breaks = NULL, interval.closure = "left",
  palette = NULL, labels = NULL, labels.text = NA,
  auto.palette.mapping = TRUE, contrast = NA, max.categories = 12,
  colorNA = NA, textNA = "Missing", showNA = NA, fontface = NA,
  fontfamily = NA, alpha = NA, case = NA, shadow = FALSE,
  bg.color = NA, bg.alpha = NA, size.lowerbound = 0.4,
  print.tiny = FALSE, scale = 1, auto.placement = FALSE,
  remove.overlap = FALSE, along.lines = FALSE, overwrite.lines = FALSE,
  just = c("center", "center"), xmod = 0, ymod = 0, title.size = NA,
  title.col = NA, legend.size.show = TRUE, legend.col.show = TRUE,
  legend.format = list(), legend.size.is.portrait = FALSE,
  legend.col.is.portrait = TRUE, legend.size.reverse = FALSE,
  legend.col.reverse = FALSE, legend.hist = FALSE, legend.hist.title = NA,
  legend.size.z = NA, legend.col.z = NA, legend.hist.z = NA)
}
\arguments{
\item{text}{name of the variable in the shape object that contains the text labels}

\item{size}{relative size of the text labels (see note). Eiter one number, a name of a numeric variable in the shape data that is used to scale the sizes proportionally, or the value \code{"AREA"}, where the text size is proportional to the area size of the polygons.}

\item{col}{color of the text labels. Either a color value or a data variable name. If multiple values are specified, small multiples are drawn (see details).}

\item{root}{root number to which the font sizes are scaled. Only applicable if \code{size} is a variable name or \code{"AREA"}. If \code{root=2}, the square root is taken, if \code{root=3}, the cube root etc.}

\item{size.lim}{vector of two limit values of the \code{size} variable. Only text labels are drawn whose value is greater than or equal to the first value. Text labels whose values exceed the second value are drawn at the size of the second value. Only applicable when \code{size} is the name of a numeric variable of \code{shp}. See also \code{size.lowerbound} which is a threshold of the relative font size.}

\item{sizes.legend}{vector of text sizes that are shown in the legend. By default, this is determined automatically.}

\item{sizes.legend.labels}{vector of labels for that correspond to \code{sizes.legend}.}

\item{sizes.legend.text}{vector of example text to show in the legend next to sizes.legend.labels. By default "Abc". When \code{NA}, examples from the data variable whose sizes are close to the sizes.legend are taken and \code{"NA"} for classes where no match is found.}

\item{n}{preferred number of color scale classes. Only applicable when \code{col} is a numeric variable name.}

\item{style}{method to process the color scale when \code{col} is a numeric variable. Discrete options are \code{"cat"}, \code{"fixed"}, \code{"sd"}, \code{"equal"}, \code{"pretty"}, \code{"quantile"}, \code{"kmeans"}, \code{"hclust"}, \code{"bclust"}, \code{"fisher"}, and \code{"jenks"}. A numeric variable is processed as a categorial variable when using \code{"cat"}, i.e. each unique value will correspond to a distinct category. For the other discrete options, see the details in \code{\link[classInt:classIntervals]{classIntervals}}. Continuous options are \code{"cont"} and \code{"order"}. The former maps the values of \code{col} to a smooth gradient, whereas the latter maps the order of values of \code{col} to a smooth gradient. They are the continuous variants of respectively the discrete methods "equal" and quantile".}

\item{breaks}{in case \code{style=="fixed"}, breaks should be specified. The \code{breaks} argument can also be used when \code{style="cont"}. In that case, the breaks are mapped evenly to the sequential or divering color palette.}

\item{interval.closure}{value that determines whether where the intervals are closed: \code{"left"} or \code{"right"}. Only applicable if \code{col} is a numerc variable.}

\item{palette}{a palette name or a vector of colors. See \code{tmaptools::palette_explorer()} for the named palettes. Use a \code{"-"} as prefix to reverse the palette. The default palette is taken from \code{\link{tm_layout}}'s argument \code{aes.palette}, which typically depends on the style. The type of palette from \code{aes.palette} is automatically determined, but can be overwritten: use \code{"seq"} for sequential, \code{"div"} for diverging, and \code{"cat"} for categorical.}

\item{labels}{labels of the color classes, applicable if \code{col} is a data variable name}

\item{labels.text}{Example text to show in the legend next to the \code{labels}. When \code{NA} (default), examples from the data variable are taken and \code{"NA"} for classes where they don't exist.}

\item{auto.palette.mapping}{When diverging colour palettes are used (i.e. "RdBu") this method automatically maps colors to values such that the middle colors (mostly white or yellow) are assigned to values of 0, and the two sides of the color palette are assigned to negative respectively positive values. When categorical color palettes are used, this method stretches the palette if there are more levels than colors.}

\item{contrast}{vector of two numbers that determine the range that is used for sequential and diverging palettes (applicable when \code{auto.palette.mapping=TRUE}). Both numbers should be between 0 and 1. The first number determines where the palette begins, and the second number where it ends. For sequential palettes, 0 means the brightest color, and 1 the darkest color. For diverging palettes, 0 means the middle color, and 1 both extremes. If only one number is provided, this number is interpreted as the endpoint (with 0 taken as the start).}

\item{max.categories}{in case \code{col} is the name of a categorical variable, this value determines how many categories (levels) it can have maximally. If the number of levels is higher than \code{max.categories} and \code{auto.palette.mapping} is \code{FALSE}, then levels are combined.}

\item{colorNA}{colour for missing values. Use \code{NULL} for transparency.}

\item{textNA}{text used for missing values.}

\item{showNA}{logical that determines whether missing values are named in the legend. By default (\code{NA}), this depends on the presence of missing values.}

\item{fontface}{font face of the text labels. By default, determined by the fontface argument of \code{\link{tm_layout}}.}

\item{fontfamily}{font family of the text labels. By default, determined by the fontfamily argument of \code{\link{tm_layout}}.}

\item{alpha}{transparency number between 0 (totally transparent) and 1 (not transparent). By default, the alpha value of the \code{fontcolor} is used (normally 1).}

\item{case}{case of the font. Use "upper" to generate upper-case text, "lower" to generate lower-case text, and \code{NA} to leave the text as is.}

\item{shadow}{logical that determines whether a shadow is depicted behind the text. The color of the shadow is either white or yellow, depending of the \code{fontcolor}.}

\item{bg.color}{background color of the text labels. By default, \code{bg.color=NA}, so no background is drawn.}

\item{bg.alpha}{number between 0 and 1 that specifies the transparancy of the text background (0 is totally transparent, 1 is solid background).}

\item{size.lowerbound}{lowerbound for \code{size}. Only applicable when \code{size} is not a constant. If \code{print.tiny} is \code{TRUE}, then all text labels which relative text is smaller than \code{size.lowerbound} are depicted at relative size \code{size.lowerbound}. If \code{print.tiny} is \code{FALSE}, then text labels are only depicted if their relative sizes are at least \code{size.lowerbound} (in other words, tiny labels are omitted).}

\item{print.tiny}{boolean, see \code{size.lowerbound}}

\item{scale}{text size multiplier, useful in case \code{size} is variable or \code{"AREA"}.}

\item{auto.placement}{logical (or numeric) that determines whether the labels are placed automatically. If \code{TRUE}, the labels are placed next to the coordinate points with as little overlap as possible using the simulated annealing algorithm. Therefore, it is recommended for labeling spatial dots or symbols. If a numeric value is provided, this value acts as a parameter that specifies the distance between the coordinate points and the text labels in terms of text line heights.}

\item{remove.overlap}{logical that determines whether the overlapping labels are removed}

\item{along.lines}{logical that determines whether labels are rotated along the spatial lines. Only applicabel if a spatial lines shape is used.}

\item{overwrite.lines}{logical that determines whether the part of the lines below the text labels is removed. Only applicabel if a spatial lines shape is used.}

\item{just}{justification of the text relative to the point coordinates.  The first value specifies horizontal and the second value vertical justification. Possible values are: \code{"left"} , \code{"right"}, \code{"center"}, \code{"bottom"}, and \code{"top"}. Numeric values of 0 specify left alignment and 1 right alignment.}

\item{xmod}{horizontal position modification of the text (relatively): 0 means no modification, and 1 corresponds to the height of one line of text. Either a single number for all polygons, or a numeric variable in the shape data specifying a number for each polygon. Together with \code{ymod}, it determines position modification of the text labels. In most coordinate systems (projections), the origin is located at the bottom left, so negative \code{xmod} move the text to the left, and negative \code{ymod} values to the bottom.}

\item{ymod}{vertical position modification. See xmod.}

\item{title.size}{title of the legend element regarding the text sizes}

\item{title.col}{title of the legend element regarding the text colors}

\item{legend.size.show}{logical that determines whether the legend for the text sizes is shown}

\item{legend.col.show}{logical that determines whether the legend for the text colors is shown}

\item{legend.format}{list of formatting options for the legend numbers. Only applicable if \code{labels} is undefined. Parameters are:
\describe{
\item{fun}{Function to specify the labels. It should take a numeric vector, and should return a character vector of the same size. By default it is not specified. If specified, the list items \code{scientific}, \code{format}, and \code{digits} (see below) are not used.}
\item{scientific}{Should the labels be formatted scientically? If so, square brackets are used, and the \code{format} of the numbers is \code{"g"}. Otherwise, \code{format="f"}, and \code{text.separator}, \code{text.less.than}, and \code{text.or.more} are used. Also, the numbers are automatically  rounded to millions or billions if applicable.}
\item{format}{By default, \code{"f"}, i.e. the standard notation \code{xxx.xxx}, is used. If \code{scientific=TRUE} then \code{"g"}, which means that numbers are formatted scientically, i.e. \code{n.dddE+nn} if needed to save space.}
\item{digits}{Number of digits after the decimal point if \code{format="f"}, and the number of significant digits otherwise.}
\item{text.separator}{Character string to use to separate numbers in the legend (default: "to").}
\item{text.less.than}{Character value(s) to use to translate "Less than". When a character vector of length 2 is specified, one for each word, these words are aligned when \code{text.to.columns = TRUE}}
\item{text.or.more}{Character value(s) to use to translate "or more". When a character vector of length 2 is specified, one for each word, these words are aligned when \code{text.to.columns = TRUE}}
\item{text.align}{Value that determines how the numbers are aligned, \code{"left"}, \code{"center"} or \code{"right"}}. By default \code{"left"} for legends in portrait format (\code{legend.is.protrait = TRUE}), and \code{"center"} otherwise.
\item{text.to.columns}{Logical that determines whether the text is aligned to three columns (from, text.separator, to). By default \code{FALSE}.}
\item{...}{Other arguments passed on to \code{\link[base:formatC]{formatC}}}
}}

\item{legend.size.is.portrait}{logical that determines whether the legend element regarding the text sizes is in portrait mode (\code{TRUE}) or landscape (\code{FALSE})}

\item{legend.col.is.portrait}{logical that determines whether the legend element regarding the text colors is in portrait mode (\code{TRUE}) or landscape (\code{FALSE})}

\item{legend.size.reverse}{logical that determines whether the items of the legend regarding the text sizes are shown in reverse order, i.e. from bottom to top when \code{legend.size.is.portrait = TRUE} and from right to left when \code{legend.size.is.portrait = FALSE}}

\item{legend.col.reverse}{logical that determines whether the items of the legend regarding the text colors are shown in reverse order, i.e. from bottom to top when \code{legend.col.is.portrait = TRUE} and from right to left when \code{legend.col.is.portrait = FALSE}}

\item{legend.hist}{logical that determines whether a histogram is shown regarding the text colors}

\item{legend.hist.title}{title for the histogram. By default, one title is used for both the histogram and the normal legend for text colors.}

\item{legend.size.z}{index value that determines the position of the legend element regarding the text sizes with respect to other legend elements. The legend elements are stacked according to their z values. The legend element with the lowest z value is placed on top.}

\item{legend.col.z}{index value that determines the position of the legend element regarding the text colors. (See \code{legend.size.z})}

\item{legend.hist.z}{index value that determines the position of the histogram legend element. (See \code{legend.size.z})}
}
\value{
\code{\link{tmap-element}}
}
\description{
Creates a \code{\link{tmap-element}} that adds text labels.
}
\note{
The absolute fontsize (in points) is determined by the (ROOT) viewport, which may depend on the graphics device.
}
\examples{
current.mode <- tmap_mode("plot")

data(World, Europe, metro)

tm_shape(World) +
    tm_text("name", size="AREA")

tm_shape(Europe) +
    tm_polygons() +
    tm_text("iso_a3", size="AREA", col = "grey20", root=4, shadow = TRUE, scale=2,
        size.lowerbound = .1) +
tm_shape(Europe) +
    tm_text("name", size="AREA", root=4, scale=1,
        ymod=-1 * as.numeric(tmaptools::approx_areas(Europe, target = "norm"))^(1/4))

tm_shape(Europe) +
	tm_polygons() +
tm_shape(metro) +
	tm_bubbles("pop2010", size.lim = c(0, 15e6),
			   title.size = "European metropolitan areas") +
tm_shape(metro[metro$pop2010>=2e6, ]) +
	tm_text("name", auto.placement = TRUE) +
	tm_format_Europe()

tm_shape(World) +
	tm_text("name", size="pop_est", col="continent", palette="Dark2",
			title.size = "Population", title.col="Continent") +
	tm_legend(outside = TRUE)

# restore current mode
tmap_mode(current.mode)
}
\seealso{
\href{../doc/tmap-nutshell.html}{\code{vignette("tmap-nutshell")}}
}
