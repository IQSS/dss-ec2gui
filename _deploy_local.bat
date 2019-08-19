git checkout -b gh-pages
git rm .gitignore
git rm .nojekyll
git rm .travis.yml
git rm 01_chapter.Rmd
git rm DESCRIPTION
git rm LICENSE
git rm README.md
git rm _bookdown.yml
git rm _build.bat
git rm _build.sh
git rm _output.yml
git rm appveyor.yml
git rm dss-template.Proj
git rm images/readme-license.png
git rm index.Rmd
git rm preamble.tex
git rm style.css
git rm template.gitignore
call xcopy .\docs . /E
git add .
git commit -m "deploy.bat"
git push origin gh-pages
git checkout master
git push origin master
git branch -D gh-pages