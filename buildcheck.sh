#!/bin/bash
R CMD INSTALL --no-multiarch --with-keep.source ~/$CIRCLE_PROJECT_REPONAME
R CMD build ~/$CIRCLE_PROJECT_REPONAME
R CMD check ~/$CIRCLE_PROJECT_REPONAME/*.tar.gz --no-manual --no-build-vignettes --as-cran
