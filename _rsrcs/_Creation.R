
##### MM_HS gene table #####
### original renaming of columns ###
# Download table from here: https://www.ensembl.org/biomart/martview/29402e9078a1c1dd77025bfd9dae09d5
  # Select Homologues
  # Tick boxes for: Gene Name, Gene stable ID, Protein stable ID, Gene Description
    # Human Gene Name, Human Gene stable ID, Human protein or transcript ID
library(data.table)
gene_table<- fread("~/Downloads/mart_export.txt")

colnames(gene_table)<- c('mm_sym', 'mm_gid', 'mm_pid', 'description', 'hs_sym','hs_gid', 'hs_pid')
fwrite(gene_table, sep="\t", file= "~/my_projects/sandbox/warmup/_rsrcs/MM_HS_Genes.tsv")
###
