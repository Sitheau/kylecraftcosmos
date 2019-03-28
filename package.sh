#!/bin/bash
kccdir=$(readlink -f $(dirname "$0"))
prevdir=$(pwd)
kccver=0.1
sources="override kylecraft.org credits.txt install.sh package.sh"
target=kylecraft-dev-v$kccver

cd $kccdir
mkdir kylecraftcosmos

for src in $sources; do
    cp -r $kccdir/$src kylecraftcosmos
done

echo "creating $target.tar.gz..."
tar -czf $prevdir/$target.tar.gz kylecraftcosmos
echo "creating $target.zip..."
zip -r $prevdir/$target.zip kylecraftcosmos

rm -rf kylecraftcosmos
cd $prevdir