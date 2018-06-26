#/bin/sh

cd /mnt/c/PFG/Imagenes/
ls *.png > archivos_png
z=$(wc -l archivos_png | cut -f1 -d ' ')
for ((i=1;i<=$z;i++))
do
	j=$(head -$i archivos_png | tail -1)
	k=$(echo $j | cut -f1 -d '.')
	x=$(echo $k | cut -f3 -d ' ')
	y=$(echo $k | cut -f4 -d ' ')
#echo $i $j $x
	echo "<annotation>" > DARK\ SOULS\ $x\ $y.xml
	echo "        <folder>Imagenes</folder>" >> DARK\ SOULS\ $x\ $y.xml
	echo "        <filename>$j</filename>" >> DARK\ SOULS\ $x\ $y.xml
	echo "        <path>C:\PFG\Imagenes\\$j</path>" >> DARK\ SOULS\ $x\ $y.xml
	cat labels >> DARK\ SOULS\ $x\ $y.xml
done
rm archivos_png
