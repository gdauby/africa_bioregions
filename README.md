---
    title: "african bioregions"
    author: "Gilles Dauby"
    output:
      html_document:
        keep_md: true
---



# African bioregions mapping

This repository corresponds to GIS file that were generated in the study published by Droissart, Dauby et al. in Journal of Biogeography:

Droissart V, Dauby G, Hardy OJ, Deblauwe V, Harris DJ, Janssens S, Mackinder BA, Overgaard A-B, Sonké B, Sosef MSM, Stévart T, Svenning J-C, Wieringa JJ, Couvreur TLP (2018) **Beyond trees: biogeographical regionalization of tropical Africa** _**Journal of Biogeography**_ DOI:10.1111/jbi.13190

**Please cite the aforementioned article and the dataset herein, when using of any of these files in this dataset.**


The GIS file is referred in the paper as Appendix S3 and correspond to the map presented in Figure 1. Each polygons of the shapefile correspond to the main floristic bioregions and transition zones of tropical Africa delimited using bipartite network clustering analysis of 24,719 plant species.

The coordinate system of the ESRI shapefile is GCS_WGS_1984. Field descriptions for the associate table are:

**bionames**: name of the bioregions as given in Table S1.1.

**bioreg_ID**: identifier of the bioregions as given in Table S1.1 and Fig. 1. T= Transition zones

**cluster_ID**: identifier of clusters delimited using bipartite network clustering on the 24,719 plant species of the RAINBIO database, as given in Table S1.1 and Fig. S2.1.


You can download this zip file directly.

An example of R script for mapping with [sf](https://cran.r-project.org/web/packages/sf/vignettes/sf5.html) package.

```r
if(!any(rownames(installed.packages())=="sf")) install.packages("sf")
if(!any(rownames(installed.packages())=="ggplot2")) devtools::install_github("tidyverse/ggplot2")
library(sf)
library(ggplot2)

unzip("AppendixS3_Shapefile of main floristic bioregions of Tropical Africa, as presented on Figure 1.zip")

bioregions <- st_read("RAINBIO_phytogeography.shp")
```

```
## Reading layer `RAINBIO_phytogeography' from data source `C:\MonDossierR\africa_bioregions\RAINBIO_phytogeography.shp' using driver `ESRI Shapefile'
## Simple feature collection with 27 features and 3 fields
## geometry type:  MULTIPOLYGON
## dimension:      XY
## bbox:           xmin: -17.53722 ymin: -28 xmax: 46 ymax: 16
## epsg (SRID):    4326
## proj4string:    +proj=longlat +datum=WGS84 +no_defs
```

```r
plot(bioregions)
```

![](README_files/figure-html/unnamed-chunk-1-1.png)<!-- -->




