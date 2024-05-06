# Install packages
devtools::install_github("rstudio/crosstalk")
devtools::install_github("rstudio/leaflet")

install.packages('sf')
install.packages('here')

# Load packages
library(sf)
library(here)
library(leaflet)
library(crosstalk)

# Load data
cheias_iph_filename <- here("data", "cheias-iph.kmz")
cheias_iph_layers <- st_layers(cheias_iph_filename)[[1]]

cheias_iph <- sf::st_read(
  here("data", "cheias-iph.kmz"),
  layer = cheias_iph_layers[1]
)

# Render UI
bscols(
    leaflet(cheias_iph[1]) %>%
        addTiles()
)

