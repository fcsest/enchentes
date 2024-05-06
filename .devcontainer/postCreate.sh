#!/bin/bash
echo 'Install R packages from lockfile...'
# R -e 'renv::restore()'

echo 'Install R packages for development...'
R -e 'renv::install(c("languageserver", "httpgd", "attachment", "ManuelHentschel/vscDebugger", "dreamRs/prefixer"))'
