

if(!any(rownames(installed.packages())=="sf")) install.packages("sf")
library(sf)

unzip("AppendixS3_Shapefile of main floristic bioregions of Tropical Africa, as presented on Figure 1.zip")

bioregions <- st_read("RAINBIO_phytogeography.shp")

plot(bioregions$geometry)

plot(bioregions["bionames"], key.pos = 1, axes = T, key.size = lcm(1.3))

library(ggplot2)

png("Caballe_vegetation_types.png", width = 30, height = 20, units = "cm", res = 150)
ggplot() + 
  geom_sf(data=bioregions, aes(fill=as.factor(bionames))) + 
  scale_fill_manual(name="Bioregions", values = rainbow(n = 27)) +
  coord_sf()



  coord_cartesian() + coord_equal()
gg <- gg + 
  geom_sf(data = shape.delim, fill="red", colour="red", alpha=0.4, size=1, linetype=1)
