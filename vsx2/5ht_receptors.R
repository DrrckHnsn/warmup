library(Seurat)
library(tidyverse)
library(data.table)

setwd("~/my_projects/sandbox/practice/vsx2")

genes<- fread("../_dbs/MM_HS_Genes.tsv")

### original renaming of columns ###
# colnames(genes)<- c('mm_id', 'mm_sym', 'hs_id', 'hs_sym', 'description')
# fwrite(genes, file= "../_dbs/MM_HS_Genes.tsv")
###

# dt_hrt.rcptrs<-  genes[grep('^Htr\\d', mm_sym)]
dt_serotonin<-  genes[grep('serotonin', ignore.case= TRUE, description)]
hrt_rcptrs<- dt_serotonin$mm_sym
