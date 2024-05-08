# Swine_ExPEC_genomes_analysis
The following is a description of all these files.

## Detection_Genomic_Islands                                                 
  * #### get_genes_backbone.py
    Python script for the detection of Genomic Islands on the chromosomes.
  * #### python.sh
    Running the above Python script to detect GI1 and GI2.
  * #### tableS1_new.txt
    Input file for the Python script. This file contains details of 499 isolates.
  * #### 499_ARG_strAB_IS_minid90_mincov80.txt
    Input file for the Python script. This file contains ARG and IS annotations for 499 genomes.
  * #### IS1H,sul2,strA,strB__backbone.txt
    The result of GI1 detection. This file contains information about Genomic Island 1—strB, strA, sul2, IS1H located on the same contig.
  * #### IS1H,sul2,strA,strB__backbone.xlsx
    Proofreading based on the result of GI1 detection above. Strains highlighted in yellow have been excluded.
  * #### IS1H,sul2,strA,strB_bar_input.txt
    This file contains details of isolates that harbor GI1. 
  * #### IS5075,sul2,strA,strB__backbone.txt
    The result of GI2 detection. This file contains information about Genomic Island 2—strB, strA, sul2, IS5075 located on the same contig.
  * #### IS5075,sul2,strA,strB__backbone.xlsx
    Proofreading based on the result of GI2 detection above. Strains highlighted in yellow have been excluded.
  * #### IS5075,sul2,strA,strB_bar_input.txt
    This file contains details of isolates that harbor GI2. 

## Visualization
  * #### UpSet_plot                                               
    * #### upsetR.R
      R script for employing UpSetR v1.4.0 to visualize phenotype data
    * #### AR_profile_input.csv
      Input file for the R script. This file contains antibiotic resistance phenotypes of 485 isolates.
    * #### AR_profile.pdf
      UpSet plot illustrating the diversity of antibiotic resistance profiles for ExPEC isolates. This figure was based on the output result from the above R code, and was subsequently retouched using Adobe Illustrator.
  * #### ARP_profile_in_four_STs
    * #### bar_facet.R
      R script for employing ggplot2 v3.3.6 to visualize phenotype data in four STs and all 485 isolates.
    * #### AR_profile_all_bar.csv
      Input file for the R script. This file contains the prevalence of antimicrobial resistance in four common STs and all 485 isolates..
    * #### ARP_lineage_drug.pdf
      Histogram illustrating the prevalence of antimicrobial resistance phenotypes. This figure  was  retouched using Adobe Illustrator to split it into Fig. 2b and Fig. 2c.
  * #### Gene_arrow_map
    * #### gggenes.R
      R script for employing gggenes v0.4.1 to illustrate gene arrow maps of ARGs and their neighboring ISs in all complete genomes.
    * #### all_IS_arg_change_filter_gggenes_remove.txt
      Input file for the R script. This file contains position, strand, and class of genes.
    * #### gggenes.pdf
      The output result from the above R code.
    * #### Figure_4.pdf
      Based on the figure 'gggenes.pdf', we subsequently used Adobe Illustrator to retouch and combine as Fig. 4a.
    * #### Figure_5.pdf
      Based on the figure 'gggenes.pdf', we subsequently used Adobe Illustrator to retouch and combine as Fig. 5a-d.
  * #### pheatmap_in_Fig4
    * #### pheatmap.R
      R script for employing pheatmap v1.0.12 to visualize Jaccard similarity matrix of plasmid genomes.
    * #### distances.csv
      Input file for the R script 'pheatmap.R'. 
    * #### pheatmap.pdf
      The output result from the R script 'pheatmap.R'.
    * #### bar.R
      R script for employing ggplot2 v3.3.6 to illustrate the stacked histograms, which show the distribution ExPEC isolates for various phylogroups harboring genomic islands and the number of genomes for different phylogroups harboring each plasmid.
    * #### strAB_all_coverage_0.9_0.8_chr.txt
      Input file for the R script 'bar.R'.
    * #### bar.pdf
      The output result from the R script 'bar.R'.
  * #### pheatmap_in_Fig5
    * #### pheatmap.R
      R script for employing pheatmap v1.0.12 to visualize Jaccard similarity matrix of plasmid genomes.
    * #### distances.csv
      Input file for the R script 'pheatmap.R'. 
    * #### pheatmap.pdf
      The output result from the R script 'pheatmap.R'.
    * #### bar.R
      R script for employing ggplot2 v3.3.6 to illustrate the stacked histograms, which show the number of genomes for different phylogroups harboring each plasmid.
    * #### all_coverage_0.9_0.8_retain_high_change_group.txt
      Input file for the R script 'bar.R'.
    * #### bar.pdf
      The output result from the R script 'bar.R'.

  * #### barplot_for_annual_count
    * #### bar.R
      R script for employing ggplot2 v3.3.6 to illustrate the bar plot, which show the annual count of isolated strains.
    * #### year.txt
      Input file for the R script.
    * #### year.pdf
      The output result from the above R code.

  * #### pie_chart_for_tissues
    * #### source.R
      R script for employing ggplot2 v3.3.6 to illustrate the pie chart, which show the distribution of isolates from various tissues.
    * #### source.txt
      Input file for the R script.
    * #### source.pdf
      The output result from the above R code.

  * #### pie_chart_for_MLST_and_serotype
    * #### pie.R
      R script for employing ggplot2 v3.3.6 to illustrate two pie charts,  which show the distribution of 499 ExPEC isolates across different MLSTs and serotypes.
    * #### mlst_input.txt & ser_com_input.txt
      Input files for the R script.
    * #### mlst.pdf & ser_com.pdf
      The output result from the above R code.
    * #### Figure_S2.pdf
      The image is generated by combining the above pictures using Adobe Illustrator.
