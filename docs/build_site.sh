olddir=`pwd`
cd ~/Desktop/Rmd_talk/docs

[[ -d slide ]] || mkdir slide
cp -r ../img ../addons ../index_files slide
cp ../index.html slide

Rscript build_idx.R

cd $olddir
