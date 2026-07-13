# Psoriasis — single-cell RNA-seq

Single-cell RNA-seq analysis of **psoriasis** performed in collaboration with the Morello Lab
(C. Giraulo), characterising the immune and stromal landscape of psoriatic skin.

## Analysis
- `scripts/01_Dataset_preprocessing.Rmd` — QC, normalisation, clustering, annotation
- `scripts/02_visualisation.Rmd` — cell-type composition and marker visualisation

---
Analysis by **Dillon Corvino** · [GitHub](https://github.com/Eomesodermin) · [dilloncorvino.com](https://dilloncorvino.com)

## Environment

Built in **R** with a Seurat-based single-cell stack — key packages: `Seurat`, `SeuratDisk`, `scCustomize`, `dplyr`, `ggplot2`, `Azimuth`, `SeuratData`, `SeuratWrappers`, `gplots`, plus my helper package [`r-utility-functions`](https://github.com/Eomesodermin/r-utility-functions).

A pinned `renv.lock` is **not** committed for this repository. To capture an exact, reproducible
environment, run in the project root:

```r
install.packages("renv")
renv::init()        # discovers dependencies from the scripts
renv::snapshot()    # writes renv.lock pinning every package version
```
