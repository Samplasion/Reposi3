cp ./Packages ./Packages_cp
rm -f ./Packages.bz2
bzip2 Packages
mv ./Packages_cp ./Packages
git add .
git commit -m "[Auto-Publish] New tweak"
git push