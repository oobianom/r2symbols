## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(r2symbols)
symbol("alpha")
symbol("beta")
symbol("apple")
symbol("mouse")
symbol(456)

# OR together
symbol("alpha","beta")

# OR use alias
sym("alpha","beta")

## -----------------------------------------------------------------------------
library(r2symbols)
symbol.setting(font.size=50,font.weight ="normal",font.color = "blue")
symbol("copyright","heart","chessq","ox","deer","beer")

# OR use alias
sym("naira","yen","music1")

# change settings anytime
symbol.setting(font.size=30,font.weight ="bold",font.color = "red")
sym("naira","yen")
sym("arrow-left","arrow-up")

# Remove global settings
symbol.setting()#leaving the arguments empty means they are NULL
symbol("indian","naira")

# OR use alias
sym("minusplus","infinity")


## -----------------------------------------------------------------------------
library(r2symbols)
symbol("minusplus",font.size=40,font.weight ="normal",font.color = "green")

# OR use alias
symbol("integral",font.size=30,font.weight ="bold",font.color = "blue")

#multiple symbols and settings
sym("naira","yen","minusplus",font.color="violet")


## -----------------------------------------------------------------------------
library(r2symbols)
symbol.setting(font.size=30,font.weight ="bold",font.color = "brown")


