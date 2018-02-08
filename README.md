# African bioregions mapping

This repository corresponds to GIS file that were generated in the study published by Droissart, Dauby et al. in Journal of Biogeography:

Droissart V, Dauby G, Hardy OJ, Deblauwe V, Harris DJ, Janssens S, Mackinder BA, Overgaard A-B, Sonké B, Sosef MSM, Stévart T, Svenning J-C, Wieringa JJ, Couvreur TLP (2018) *Beyond trees: biogeographical regionalization of tropical Africa* _Journal of Biogeography_ DOI:10.1111/jbi.13190

**Please cite the aforementioned article and the dataset herein, when using of any of these files in this dataset.**


The GIS file is referred in the paper as Appendix S3 and correspond to the map presented in Figure 1. Each polygons of the shapefile correspond to the main floristic bioregions and transition zones of tropical Africa delimited using bipartite network clustering analysis of 24,719 plant species.

The coordinate system of the ESRI shapefile is GCS_WGS_1984. Field descriptions for the associate table are:

bionames: name of the bioregions as given in Table S1.1.
bioreg_ID: identifier of the bioregions as given in Table S1.1 and Fig. 1. T= Transition zones
cluster_ID: identifier of clusters delimited using bipartite network clustering on the 24,719 plant species of the RAINBIO database, as given in Table S1.1 and Fig. S2.1.


You can download this zip file directly.

The script *mapping african bioregions.R* is useful if you want to load and map both shapefiles in R using the sf package.





