# GmailPhisingWith2FA
## Disclaimer
El propósito de este repositorio es sólo educativo, no me hago responsable del mal uso que se pueda hacer de las herramientas que contiene.  
No soy un programador experto, todo el código se optimizará y mejorará en próximas veriones.  
  
    
_[ENG]  
The purpose of this repository is only educational, I am not responsible.  
I'm not an expert developper, all code will be improve in next versions._

## Decripción
La autenticación en dos factores o verificación en dos pasos (2FA) es una medida de protección de los sistemas de autenticación que consiste en que el usuario presente dos pruebas demuestren que es quien dice ser. 
En este caso , este repositorio tiene como objetivo demostrar como los atacantes consiguen evadir el 2FA para el sistema de autenticación de Gmail. Los dos factores usados en este caso son la contraseña y un código enviado al móvil del usuario.

_[ENG]  
Two-factor authentication (2FA) adds an additional layer of protection in authentication systems consisting of the user proof really is who he pretends to be.
This repository aims at demonstrating how the hacker can bypass 2FA for gmail's authentication system. In this case, password and a code sent to mobile user are the two factors._

## Dependencias
- [Apache2](https://www.apache.org/)
- [Python](https://www.python.org/)
- [Selenium](https://www.seleniumhq.org/)

## ¿Qué incluye el repositorio?
- **gmailPhising:** contiene el código de la web autenticación de Gmail, incluyendo los script que almacenan los datos en la máquina atacante.

- **logingmail.py:** contiene el código del script que lanza el navegador para iniciar sesión suplantando a la víctima, en la máquina del atacante. Este script hace uso de [Selenium](https://www.seleniumhq.org/).

- **root.sh:** este script es el encagado de ejecutar **logingmail.py**. Debe poderse ejecutar como root para el usuario que sirve la web (www-data). Esto se configura en el fichero /etc/sudoers, de la máquina atacante, incluyendo la siguiente linea:

```
www-data ALL=NOPASSWORD: pathtoscript/root.sh
```

_[ENG]_    
- _**gmailPhising:** contains the code of the gmail's authetication web._

- _**logingmail.py:** script for running the web browser impersonating the victim's login in the attacker machine. This makes use of [Selenium](https://www.seleniumhq.org/)._

- _**root.sh:** this script running **logingmail.py**. Must be run as root for user www-data. This is configured in /etc/sudoers of the attacker's machine including the following:_

```
www-data ALL=NOPASSWORD: pathtoscript/root.sh
```

## Escenario
El atacante mediante alguna de las de técnicas de hacking (dnsspoofing, ingeniería social, etc.) redirige a una victima que tiene activado 2FA a la web que suplanta Gmail. Una vez que la víctima introduzca sus correo y contraseña en la página falsa, la máquina del atacante iniciará un navegador automáticamente, introduciendo en la web real de Gmail las credenciales de la víctima, provocando esto que la víctima reciba el mensaje con el código del 2FA. Cuando la víctima reciba el código lo introducirá en la página falsa y cuando lo introduzca la máquina del atacante obtendrá ese código y completará el inicio de sesión en la web legítima de Gmail, obteniendo así el acceso a la cuenta de la víctima.

_[ENG]  
The attacker using hacking techniques (dnsspoofing, social engineering, etc.) redirect victim with 2FA active in gmail to fake gmail web. Once victim log in the fake web, the attacker's machine will run a web browser and it will go to original gmail to log in with victim's credentials. This will cause gmail send to victim the validation code. When the victim receive the code, he will put it in the fake web. The attacker will get the code and will complete the log in the original gmail web, gaining the access to the victim account._

![alt text](https://tinypng.com/web/output/czwkpxr6ftpz22ktjbk6xju7tch26tht/Diagrama.PNG)

## POC
![Alt Text](https://media.giphy.com/media/2lZMhmnVpNekhkOibo/giphy.gif)

## Mejoras
- Incluir los dos últimos dígitos del número de teléfono de la víctima en la página falsa de solicitud del código.
- Modificar el flujo de ejecución para permitir distinguir si el usuario tiene 2FA o no.
- Validar entrada de datos.
- Fichero de log.
- Sanetizar las entradas de datos.

