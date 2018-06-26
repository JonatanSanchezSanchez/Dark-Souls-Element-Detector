#/bin/sh

pngFullPath=$1
csv=$2

cd $pngFullPath
ls *.png > archivos_png
z=$(wc -l archivos_png | cut -f1 -d ' ')
for ((i=1;i<=$z;i++))
do
	j=$(sed -n $i\p archivos_png)
	echo $j,1280,720,souls,1033,634,1182,670 >> $csv
	echo $j,1280,720,health,173,75,430,89 >> $csv
	echo $j,1280,720,stamina,174,95,342,109 >> $csv
	echo $j,1280,720,humanity,100,57,170,127 >> $csv
#	echo $j,1280,720,bossHP, >> $csv
done
rm archivos_png

#file,1280,720,health,173,75,430,89
#file,1280,720,stamina,174,95,342,109
#file,1280,720,humanity,100,57,170,127
#file,1280,720,souls,1033,634,1182,670
#file,1280,720,bossHP,
