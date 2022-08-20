# The R2Symbols R package : Direct insertion of HTML symbol entities for use in Rmarkdown and Shiny Applications
## Official website: [https://r2symbols.obi.obianom.com](https://r2symbols.obi.obianom.com/articles/newversion_r_symbols.html)

[![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version/r2symbols)](https://cran.r-project.org/package=r2symbols) [![](https://cranlogs.r-pkg.org/badges/r2symbols)](https://cran.r-project.org/package=r2symbols) [![](https://cranlogs.r-pkg.org/badges/grand-total/r2symbols)](https://cran.r-project.org/package=r2symbols)

![](https://coursewhiz.org/mainsite/img/R2_logo2.png)
![](https://coursewhiz.org/mainsite/img/r2symbols.png) 


# Quick example in R 

First, install and load...

```{r eval=F}
install.packages("r2symbols")

library("r2symbols")

```

## Added in v 1.1

One line code to transform entire document

```{r eval=F}
# library call and setting at the top the document

library(r2symbols)
trans.r2symbols(font.color="green",font.weight = "bold",font.size = 30)

# within the text, add icons

sample `alpha` text and `34` sample `u` text
```

## v 0.1 features

` symbol("alpha") `

`sym("naira","yen",font.size=30,font.weight ="bold",font.color = "red")`

` sym("heart") `

` symbol(23) `
## Now published on CRAN and also available here in github
View information about this at https://cran.r-project.org/web/packages/r2symbols

## A complete chart for the list of symbols and their corresponding identifiers

For a complete list of all the symbols and codes, please go to this link. Thank you.
 - https://r2symbols.obi.obianom.com/
 - http://coursewhiz.org/mainsite/r2symbols_cheatcheat.html
