# Install packages
devtools::install_github("rstudio/crosstalk")
devtools::install_github("rstudio/leaflet")

install.packages('sf')
install.packages('here')
install.packages('purrr')

# Load packages
library(sf)
library(here)
library(purrr)
library(leaflet)
library(crosstalk)

# Render UI
leaflet() %>%
  addTiles() %>%
  addPolygons(
    data = sf::st_read(
      here("data", "cheias-iph.kmz"),
      layer = "Inundação com nível 550 cm (5.5m)"
    ) %>% sf::st_zm()
  ) %>%
  addPolygons(
    data = sf::st_read(
      here("data", "cheias-iph.kmz"),
      layer = "Inundação com nível 500 cm (5.0 m)"
    ) %>% sf::st_zm()
  ) %>%
  addPolygons(
    data = sf::st_read(
      here("data", "cheias-iph.kmz"),
      layer = "Cheia de 1941 (476 cm)"
    ) %>% sf::st_zm()
  ) %>%
  addMarkers(
    data = sf::st_read(
      here("data", "cheias-iph.kmz"),
      layer = "Sistema de Proteção - Comportas e CBs"
    ) %>% sf::st_zm()
  ) %>%
  addPolylines(
    data = sf::st_read(
      here("data", "cheias-iph.kmz"),
      layer = "Sistema de Proteção - Muro e Diques"
    ) %>% sf::st_zm()
  ) %>%
  addMarkers(
    data = sf::st_read(
      here("data", "cheias-iph.kmz"),
      layer = "DMAE - ETAs"
    ) %>% sf::st_zm()
  ) %>%
  addPolygons(
    data = sf::st_read(
      here("data", "cheias-iph.kmz"),
      layer = "DMAE - Regiões das ETAs"
    ) %>% sf::st_zm()
  ) %>%
  addMarkers(
    data = sf::st_read(
      here("data", "cheias-iph.kmz"),
      layer = "Saúde -- Hospitais, UBS, etc"
    ) %>% sf::st_zm()
  ) %>%
  addMarkers(
    data = sf::st_read(
      here("data", "cheias-iph.kmz"),
      layer = "Abrigos e Centro de Voluntários"
    ) %>% sf::st_zm()
  )
