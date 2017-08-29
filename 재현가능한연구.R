## ----setup, include=FALSE------------------------------------------------
chunk <- "```"
pagebreak <-"---"
inline <- function(x = "") paste0("`` `r ", x, "` ``")
library(tidyverse)
options(htmltools.dir.version = FALSE)
knitr::opts_chunk$set(comment=NA,message=FALSE, collapse=TRUE)

## ----echo=FALSE,results='asis'-------------------------------------------
require(ztable)
fig1="rr1.png"
fig2="rr2.png"
parallelTables(c(0.5,0.3),list(fig1,fig2),type="html")

## ----echo=FALSE----------------------------------------------------------
cat(htmltools::includeText("RmdEx1.Rmd"))

## ---- echo = FALSE, out.width = "20%"------------------------------------
    knitr::include_graphics("chunkname.png")

## ----results="asis",echo=FALSE-------------------------------------------
Option=c("eval = FALSE","include = FALSE","echo = FALSE","results = 'hide'","fig.show = 'hide'",
         "message = FALSE","warning = FALSE")
A=c("-","","","","","","")
B=c("","-","-","","","","")
C=c("-","-","","-","","","")
D=c("-","-","","","-","","")
E=c("-","-","","","","-","")
F=c("-","-","","","","","-")

data1=data.frame(Option,A,B,C,D,E,F)
colnames(data1)=c("Option","Run code","Show code","Output","Plots","Messages","Warnings")
ztable::ztable(data1,align="cccccccc",include.rownames=FALSE,type="html")

## ------------------------------------------------------------------------
mtcars[1:5,]

## ----results='asis'------------------------------------------------------
knitr::kable(mtcars[1:5,], caption = "A knitr kable",format="html")

## ---- results='asis'-----------------------------------------------------
ztable::ztable(mtcars[1:5,],type="html",caption = "Table: A ztable") 

## ---- results='asis'-----------------------------------------------------
ztable::ztable(mtcars[1:5,]) %>%
  addRowColor(4,"yellow") %>%
  addColColor(5,"orange") %>%
  addCellColor(4,5,"red") %>%
  print(type="html")

## ------------------------------------------------------------------------
DT::datatable(mtcars[,1:5])

## ---- eval=FALSE---------------------------------------------------------
## knitr::opts_chunks$set(
##   comment = NA,
##   collapse = TRUE,
##   message = FALSE,
##   warning = FALSE
## )

## ---- eval=FALSE---------------------------------------------------------
## knitr::opts_chunks$set(
##   echo = FALSE
## )

## ------------------------------------------------------------------------
comma <- function(x) format(x, digits = 2, big.mark = ",")
comma(3452345)
comma(.12358124331)

## ----echo=FALSE----------------------------------------------------------
cat(htmltools::includeText("header.Rmd"))

## ----echo=FALSE----------------------------------------------------------
cat(htmltools::includeText("RmdEx2.Rmd"))

## ----echo=FALSE----------------------------------------------------------
cat(htmltools::includeText("fuel-economy.Rmd"))

## ---- eval=FALSE---------------------------------------------------------
## rmarkdown::render("fuel-economy.Rmd", params=list(my_class="pickup"))

## ------------------------------------------------------------------------
unique(mpg$class)

## ------------------------------------------------------------------------
reports <- tibble(
  class = unique(mpg$class),
  filename = stringr::str_c("fuel-economy-", class, ".html"),
  params = purrr::map(class, ~ list(my_class = .))
)
reports

## ---- eval=FALSE---------------------------------------------------------
## reports %>%
##   select(output_file = filename, params) %>%
##   purrr::pwalk(rmarkdown::render, input = "fuel-economy.Rmd")

## ----echo=FALSE----------------------------------------------------------
cat(htmltools::includeText("figureSizing.Rmd"))

