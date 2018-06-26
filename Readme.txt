Guia de instalación

Descargar la carpeta PFG

Instalar python 3.6.4

Instalar los siguientes modulos(pip install [nombre modulo]/[ruta del fichero wheel a instalar]):

numpy 1.14.0
pip install numpy

pillow 5.0.0
pip install pillow

lxml 4.1.1
pip install lxml

matplotlib 2.1.2
pip install matplotlib

tensorflow-gpu 1.6.0
tensorboard 1.5.1
instalar Tensorflow version cpu o gpu al gusto (pip install tensorflow)

pywin32 222
instalar pywin32 (Tiene Wheel en la carpeta o sacar de aqui https://www.lfd.uci.edu/~gohlke/pythonlibs/#pywin32 )

coger las dll de la carpeta Python\Python36\Lib\site-packages\pywin32_system32 y moverlas a Python\Python36\Lib\site-packages\win32

opencv 3.4.0
instalar opencv (Tiene Wheel en la carpeta o sacar de aqui https://www.lfd.uci.edu/~gohlke/pythonlibs/#opencv )

Hay que poner en el path la ruta a la carpeta research y research/slim
set PYTHONPATH=<C:\Users\Jonatan\Desktop\PFG\DetectorDS>;<C:\...\PFG\DetectorDS>\slim

Instalar protobuf

Tras esto hay que ejecutar lo siguiente desde una consola en la carpeta */PFG/DetectorDS/research cambiando los * por la ruta correspondiente

"C:/***/PFG/Protoc/bin/protoc" object_detection/protos/*.proto --python_out=.

Tras esto debería estar todo y al ejecutar 
C:\Users\Jonatan\Desktop\PFG\DetectorDS\research\object_detection\element_detector.py 
se ejecutaria sin errores y empezaria a detectar en una region determinada.

Para descargar la red preentrenada que se ha utilizado en los entrenamientos (no ha sido incluida por limitaciones de tamaño de fichero):
http://download.tensorflow.org/models/object_detection/ssd_mobilenet_v1_coco_11_06_2017.tar.gz

Para la realización de entrenamientos es necesario utilizar los comandos de generate_tfrecord y colocar las salidas en DetectorDS\research\object_detection\data 
y colocar la red preentrenada (en caso de utilizarla) en DetectorDS\research\object_detection\ssd_mobilenet_v1_coco_11_06_2017

Los ficheros añadidos a la red de neuronas ubicada en https://github.com/tensorflow/models son enemy_detector.py y grabscreen.py

El script está preparado para ejecutarse con la red final.

Fuentes:
https://github.com/tensorflow/models
https://pythonprogramming.net/introduction-use-tensorflow-object-detection-api-tutorial/
https://pythonprogramming.net/tensorflow-object-detection-api-self-driving-car/



