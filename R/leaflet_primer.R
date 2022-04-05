#install.packages("leaflet")

library("leaflet")

m<-leaflet()

m <- addTiles(m)

## hmm - VB! 
m <- addCircleMarkers(m, lng=-118.283224, lat=34.022217,label="Generation Fountains", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.290489, lat=34.020105,label="Gerontology Center Fountain", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.283433, lat=34.020490,label="Carolyn Craig and Franklin Library Garden And Fountain", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.284581, lat=34.020566,label="Prentiss Memorial Fountain", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.285171, lat=34.020195,label="Patsy and Forrest Shumway Fountain", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.286145, lat=34.020411,label="Fred and Evelyn Moorman Brunkow Fountain", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.282872, lat=34.021757,label="Leavey Library", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.283638, lat=34.020145,label="Edward L Doheny Jr Memorial Library", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.285632, lat=34.019147,label="Leventhal School of Accounting Library", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.282465, lat=34.018689,label="Gaughan and Tiberti Library", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.287609, lat=34.020017,label="Laufer Library", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.288718, lat=34.019547,label="Seaver Science Library", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.29455528692928, lat=34.02537147821391,label="1296 West Jefferson Boulevard", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")

m
