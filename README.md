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

Pdte. traducción a inglés

## Escenario
El atacante mediante alguna de las de técnicas de hacking (dnsspoofing, ingeniería social, etc.) redirige a una victima que tiene activado 2FA a la web que suplanta Gmail. Una vez que la víctima introduzca sus correo y contraseña en la página falsa, la máquina del atacante iniciará un navegador automáticamente, introduciendo en la web real de Gmail las credenciales de la víctima, provocando esto que reciba el mensaje con el código del 2FA. Cuando la víctima reciba el código lo introducirá en la página falsa y cuando lo introduzca la máquina del atacante obtendrá ese código y completará el inicio de sesión en la web legítima de Gmail, obteniendo así el acceso a la cuenta de la víctima.

Pdte. traducción a inglés

![alt text](https://tinypng.com/web/output/czwkpxr6ftpz22ktjbk6xju7tch26tht/Diagrama.PNG)

