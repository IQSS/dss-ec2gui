REM Called locally. Compiles bookdown in HTML. pdf, and epub forms.
Rscript -e "bookdown::render_book('rmd_files', 'bookdown::gitbook')"
Rscript -e "bookdown::render_book('rmd_files', 'bookdown::pdf_book')"
Rscript -e "bookdown::render_book('rmd_files', 'bookdown::epub_book')"

REM Copy .nojekyll into docs directory
call xcopy .nojekyll docs\ /E

REM Remove temp .rds and .log files
DEL /S /Q *.rds *.log

REM Switch to new gh-pages branch, clean it up, copy docs into its root
git checkout -b gh-pages
git rm .gitignore
git rm .nojekyll
git rm .travis.yml
git rm 01_chapter.Rmd
git rm DESCRIPTION
git rm LICENSE
git rm README.md
git rm _bookdown.yml
git rm _build_local.bat
git rm _deploy_local.bat
git rm _build.sh
git rm _output.yml
git rm appveyor.yml
git rm dss-template.Proj
git rm images/readme-license.png
git rm index.Rmd
git rm preamble.tex
git rm style.css
git rm template.gitignore
git rm build_deploy_local.ps1
call xcopy .\docs . /E

REM commit changes to gh-pages, push it to remote gh-pages
git add .
git commit -m "deploy.bat"
git push origin gh-pages

REM Switch back to local master, push committed rmd changes
git checkout master
git push origin master

REM Delete local gh-pages branch for updates
git branch -D gh-pages