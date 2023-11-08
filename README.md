---
editor_options:
  markdown:
    wrap: 72
    canonical: true
---

Collaborative data science workflows in R - the R3 advanced course

# AdvancedR3:

This project is meant to introduce advanced R tools to support
collaborative workflows in scientific projects that use R for data
analysis. The applications are demonstrated in a toy data science
project with open-source lipidomics data.

# Brief description of folder and file contents

The following folders contain:

# - `data/`: lipidomics dataset for analysis and readme with data

```         
description
```

-   `doc/`: quarto file with project output
-   `R/`: R-programs

# Installing project R package dependencies

Dependencies have been managed by using
`usethis::use_package("packagename")` through the `DESCRIPTION` file.
Installing dependencies is as easy as opening the `AdvancedR3.Rproj`
file and running this command in the console:

```         
# install.packages("remotes")
remotes::install_deps()
```

Remotes installed to make that work.

# Resource

For more information on this folder and file workflow and setup, check
out the [prodigenr](https://rostools.github.io/prodigenr) online
documentation.
