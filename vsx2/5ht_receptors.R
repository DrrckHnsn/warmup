library(Seurat)
library(tidyverse)
library(data.table)

setwd("~/my_projects/sandbox/warmup/vsx2")

genes<- fread("../_rsrcs/MM_HS_Genes.tsv")

### original renaming of columns ###
# colnames(genes)<- c('mm_id', 'mm_sym', 'hs_id', 'hs_sym', 'description')
# fwrite(genes, file= "../_dbs/MM_HS_Genes.tsv")
###

# dt_hrt.rcptrs<-  genes[grep('^Htr\\d', mm_sym)]
dt_serotonin<-  genes[grep('serotonin', ignore.case= TRUE, description)]
hrt_rcptrs<- dt_serotonin$mm_sym



sobj<- readRDS("../_data/sc-walk.rds")

Pdt_serotonin<- DotPlot(sobj, idents= NULL, features= hrt_rcptrs,
    # cols = c("lightgrey", "blue"),
    # col.min = -2.5,
    # col.max = 2.5,
    # dot.min = 0,
    # dot.scale = 6,
    # group.by = NULL,
    # split.by = NULL,
    # cluster.idents = FALSE,
    # scale = TRUE,
    # scale.by = "radius",
    # scale.min = NA,
    # scale.max = NA
)

ggsave(file="./plots/pDT_serotonin.png", width = NA, height = NA, units = "mm",
  plot = last_plot(),
  dpi = 300,
  limitsize = TRUE,
    # device = NULL,
    # scale = 1,
    # bg = NULL,
)