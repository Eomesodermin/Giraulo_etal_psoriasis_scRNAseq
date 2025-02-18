# TEMP TITLE

## Project Summary

Understand the .....

## To-Do

-   [ ] Placeholder

## Dataset Info

-   FILL OUT

    
## Development Notes

-   FILL OUT

## File Structure

The repository contains the following top-level directories:

- **`data/`** _(ignored by Git)_  
  - Contains output from `cellranger`  
  - Will be uploaded to Zenodo for accessibility.

- **`results/`** _(ignored by Git)_  
  - Stores processed analysis results.  
  - Not tracked in version control.

- **`saves/`** _(ignored by Git)_  
  - Contains intermediate objects such as Seurat objects.  
  - These files will also be uploaded to Zenodo.

- **`scripts/`**  
  - Includes all analysis and processing scripts.
  - Tracked in version control.
    - **`01_Preprocessing.Rmd`**
      - Reads in `cellranger` output and performs the following 
      - QC, Ambient RNA removal, Doublet detection, Normalisation, Integration, Dim Reduction, cluster calling

## Data availability

- Raw Data (Upload to GEO and provide link)  
- `cellranger` output (upload zenodo link)
- `seurat.objects` (upload zenodo link)

## Author Information

-   [Dillon Corvino](https://github.com/Eomesodermin)







# Morello_Lab
Code and analysis performed for Caterina Giraulo looking at scRNAseq of psoriasis

## Data
Data was downloaded from https://zenodo.org/records/7562864
which is described in 

Castillo et al., 2023 Science Immunology "Spatial transcriptomics stratifies psoriatic disease severity by emergent cellular ecosystems"

and

Francis et al., 2024 Nature Communications "Single-cell analysis of psoriasis resolution demonstrates an inflammatory fibroblast state targeted by  IL-23 blockade"




# TO DO 
# Start with broad overview of dataset, where and what cells express adenosine pathway 
# consider splitting by producers and acceptors 
# then overview cell subsets (simplify where possible) and score by producers or receptor adenosine pathway cgenes and summarise which subsets are of interest
# then zoom into these cells and compare adenosine pathway in healthy and disease 
# deg, or Wilcox some statistics, is it increasing or decreasing 
# also consider if massive abundance shift in presence or absence of population across disease