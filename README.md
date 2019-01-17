# GmailPhisingWith2FA
## Disclaimer
El propósito de este repositorio es sólo educativo, no me hago responsable del mal uso que se pueda hacer de las herramientas que contiene.

The purpose of this repository is only educational, I am not responsible.

## Decripción
La autenticación en dos factores o verificación en dos pasos (2FA) es una medida de protección de los sistemas de autenticación consistente en que el usuario presente dos pruebas demuestren que es quien dice ser. 
En este caso , este repositorio tiene como objetivo demostrar como los atacantes consiguen evadir el 2FA para el sistema de autenticación de Gmail. Los dos factores usados en este caso son la contraseña y un código enviado al móvil del usuario.

Pdte. traducción a inglés

## Dependencias
- [Apache2](https://www.apache.org/)
- [Python](https://www.python.org/)
- [Selenium](https://www.seleniumhq.org/)

## ¿Qué incluye el repositorio?
La carpeta **Pdte. poner enlace a carpeta** contiene el código de la web autenticación de Gmail, incluyendo los script que almacenan los datos en la máquina atacante.

**logingmail.py Pdte. poner enlace a script** contiene el código del script que lanza el navegador para iniciar sesión suplantando a la víctima, en la máquina del atacante. Este script hace uso de [Selenium](https://www.seleniumhq.org/).
