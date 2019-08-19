REM Called by .appveyor.yml. Compiles bookdown in HTML and pdf form.
Rscript -e "bookdown::render_book('rmd_files', 'bookdown::gitbook')"
Rscript -e "bookdown::render_book('rmd_files', 'bookdown::pdf_book')"
Rscript -e "bookdown::render_book('rmd_files', 'bookdown::epub_book')"

REM Copy .nojekyll into docs directory
call xcopy .nojekyll docs\ /E

REM Remove temp .rds and .log files
DEL /S /Q *.rds *.log