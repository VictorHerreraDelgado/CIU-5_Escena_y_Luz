
# CIU-5-Escena y luz

### Autor: Víctor Herrera Delgado
Estudiante de Ingeniería Informática en la Universidad de Las Palmas de Gran Canaria, en último curso de su grado.


## Introducción 
La práctica en cuestión consiste en el diseño de una escena formada por objetos tridimensionales que implemente las posibilidades de textura, luces y movimiento de cámara de processing.

## Programa
El programa inicia mostrando las instrucciones al usuario y pudiendo usar la aplicación tras pulsar enter. El usuario dispondrá de una cámara (importada de la librería QueasyCam) que podrá mover alrededor de una habitación con formado por techo y suelo y que dispondrá de una mesa (importada), una lámpara (importada) encima de ésta y una lámpara aparentemente colgando del techo.
El usuario podrá cambiar el momento del día entre:
- Día: La luz procede de detrás de la lámpara de mesa con toda su potencia.  
- Tarde: La luz presenta el tono del ocaso entrando por delante de la lámpara de mesa.
- Noche: Se dispone de la luz de una imaginaria luna procedente de detrás de la lámpara de mesa.

Además el usuario podrá encender tanto la luz del techo como la de la lámpara de mesa en cualquier momento.

## Instrucciones
- A,W,S,D: movimiento de la cámara.
- Q: bajada de la cámara.
- E: subida de la cámara.
- N: Encender o apagar la luz del techo.
- L: Encender o apagar la lámpara de mesa.
- 1: Luz de día.
- 2: Luz de tarde.
- 3: Luz de noche.

## Decisiones
Se decidió hacer esta escena para mantener la práctica simple, pero con la intención de por el hecho de tener la lámpara de mesa aprovechar el concepto para trabajar la iluminación. Así mismo los cambios en el día permite cambiar el tono de la iluminación.

En esta práctica no han aparecido tantas texturas por no considerarlas tan necesarias para la escena o por ya haberlas utilizado en anteriores prácticas.

## Notas
Es posible que el soporte de la linterna se ilumine al encenderse, cuando no debería. Esto se debe a una mal estructura del objeto.

Recomendamos que durante el mostrado de las instrucciones cambie el tamaño de la pantalla, pues el visionado puede ser alterado por la librería de la cámara en ese estado.

El gif no muestra el verdadero rendimiento de la aplicación. 
![](Practica5.gif)

## Referencias
Modelo lampara de mesa  
https://free3d.com/3d-model/desk-lamb-330686.html

Modelo mesa  
https://free3d.com/3d-model/cinema4d-table-66762.html

Textura del suelo  
https://www.textures.com/download/woodfine0086/127239

Textura bombilla  
https://www.photos-public-domain.com/2012/02/25/light-through-glass-shade-with-holes-texture/

Librería de la cámara  
https://github.com/jrc03c/queasycam

Conversor de video a gif  
https://hnet.com/video-to-gif/

Grabación del programa  
https://obsproject.com/