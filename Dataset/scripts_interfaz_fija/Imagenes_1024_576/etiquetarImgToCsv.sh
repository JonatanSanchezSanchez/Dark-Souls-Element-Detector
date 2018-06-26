#/bin/sh

pngFullPath=$1
csv=$2

cd $pngFullPath
ls *.png > archivos_png
z=$(wc -l archivos_png | cut -f1 -d ' ')
for ((i=1;i<=$z;i++))
do
	j=$(sed -n $i\p archivos_png)
	echo $j,1024,576,souls,825,506,945,536 >> $csv
	echo $j,1024,576,health,138,58,343,71 >> $csv
	echo $j,1024,576,stamina,138,74,274,88 >> $csv
	echo $j,1024,576,humanity,80,45,136,102 >> $csv
#	echo $j,1024,576,bossHP,314,469,847,479 >> $csv
done
rm archivos_png
