import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

class Introduccion_4 extends StatelessWidget {
  final String title;
  Introduccion_4(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HtmlWidget(
          kHtml,
        )
      ],
    );
  }
}



const kHtml = '''
<div style="padding:10px;">
<p>Un problema sencillo que se nos puede presentar y que no se puede resolver empleando solo HTML es que una página esté disponible sólo los 10 primeros días del mes.</p>
<p>Mostraremos un cartel que diga que el sitio se encuentra disponible si la fecha es menor o igual a 10, en caso contrario mostraremos un mensaje de sitio fuera de servicio.</p>

<p>Para obtener la fecha del servidor web debemos llamar a la función date y requerir sólo el día:</p>
<pre>\$dia=date("d");
</pre>

<p>A las variables en PHP se les antecede el caracter \$. Si a la función date le pasamos el string "d" retornará sólo el día (si queremos la fecha completa: \$fecha=date("d/m/Y")</p>

<p>Para verificar si la variable \$dia es menor o igual a 10, debemos emplear la instrucción if, similar a otros lenguajes.</p>
<p>Entonces la página con el programa queda de la siguiente forma:</p>
<p class="titulopagina">pagina1.php</p>
<pre class="recuadroborde">&lt;html&gt;

&lt;head&gt;&lt;/head&gt;

&lt;body&gt;
  &lt;?php
  \$dia = date("d");
  if (\$dia &lt;= 10) {
    echo "sitio activo";
  } else {
    echo "sitio fuera de servicio";
  }
  ?&gt;
&lt;/body&gt;

&lt;/html&gt;
</pre>

<p>Los nombres de variables son sensibles a mayúsculas y minúsculas, por lo que si la escribimos en minúscula inicialmente debemos respetar en el resto del programa. En cambio las instrucciones del lenguaje PHP no son sensibles por lo que si deseamos escribir IF o if, las dos formas estarán bien (es más común escribir las palabras claves siempre en minúsculas)</p>
<p>La condición del if debe ir obligatoriamente entre paréntesis. Los operadores relacionales disponibles son:</p>  
<pre>&gt; Mayor
&gt;= Mayor o igual
&lt; Menor
&lt;= Menor o igual
== Igual
!= Distinto
</pre> 
<p>Si la condición se verifica verdadera se ejecuta el primer bloque encerrado entre llaves, en caso de verificarse falsa la condición se ejecuta el bloque entre llaves que le sigue al else.</p>

<br>
<br>

<h2>Problema resuelto.</h2>
<p>Copiar el contenido de este cuadro de texto al VS Code y almacenarlo en la carpeta c:/xampp/htdocs con un nombre con extensión php.<br>
  luego abrir el navegador (Chrome, FireFox, IExplorer etc.) y en la barra de direcciones tipear:<br> http://localhost/pagina1.php (o el nombre del
archivo que le dió)  </p>
<pre>&lt;html&gt;

&lt;head&gt;&lt;/head&gt;

&lt;body&gt;

  &lt;?php
  \$dia = date("d");
  if ( \$dia &lt;= 10) {
    echo "sitio activo";
  } else {
    echo "sitio fuera de servicio";
  }
  ?&gt;

&lt;/body&gt;

&lt;/html&gt;</pre>
<h2>Problema propuesto.</h2>
<p>Sabiendo que la función rand nos retorna un valor aleatorio entre un rango de dos enteros:</p>
<pre>\$num=rand(1,100);</pre>
<p>En la variable \$num se almacena un valor entero que la computadora genera en forma aleatoria entre 1 y 100.</p>
<p>Hacer un programa que lo muestre por pantalla al valor generado. Mostrar además si es menor o igual a 50 o si es mayor.</p>
<p>Para imprimir el contenido de una variable también utilizamos el comando echo:</p>
<pre>echo \$num;</pre>


<h4>Solución</h4>
<pre>&lt;html&gt;

&lt;head&gt;
  &lt;title&gt;Problema&lt;/title&gt;
&lt;/head&gt;

&lt;body&gt;

  &lt;?php
  \$num = rand(1, 100);
  echo \$num;
  echo "&lt;br&gt;";
  if (\$num &lt;= 50) {
    echo "El número es menor o igual a 50.";
  } else {
    echo "El número es mayor a 50.";
  }
  ?&gt;

&lt;/body&gt;

&lt;/html&gt;</pre>

</div>





  


</div>
''';