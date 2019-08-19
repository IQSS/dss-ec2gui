Write-Host "EBook creation starts"

& Rscript -e "bookdown::render_book('index.rmd', 'bookdown::gitbook')"
& Rscript -e "bookdown::render_book('index.rmd', 'bookdown::pdf_book')"
& Rscript -e "bookdown::render_book('index.rmd', 'bookdown::epub_book')"

& copy-item .nojekyll docs\ 
& Get-ChildItem *.rds,*.log -recurse | Remove-Item

Write-Host "EBook created!"

Write-Host "Deploy GH Pages Starts"

& git add docs
& git commit -m "publish new book"
& git push origin head:master


Write-Host "Deploy Finished!"