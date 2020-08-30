import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

class Introduccion_3 extends StatelessWidget {
  final String title;
  Introduccion_3(this.title);
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
<h1>Programa "Hola Mundo" en PHP</h1>
<p>En este curso suponemos que conoce los elementos principales de HTML y algún lenguaje de programación, por lo menos un poquito (puedes iniciar los conceptos básicos de programación en <a href="https://www.tutorialesprogramacionya.com/javaya" target="_blank">JavaYa</a>)</p>
<p>Para agregar un programa PHP dentro de una página HTML debemos por un lado al crear el archivo definirlo con extensión php (a diferencia de las páginas estáticas que tienen extensión htm o html)  y dentro del contenido de la página, encerrar el programa entre los símbolos</p>
<pre style="background-color: #F2F2F2;"> 
  &lt;?php [aquí el programa PHP] ?&gt;
</pre>
<p>El comando de PHP para imprimir dentro de la página se llama echo. Nuestro  programa "Hola Mundo" será entonces: </p>
<p class="titulopagina">pagina1.php</p>
<pre style="background-color: #F2F2F2;">&lt;html&gt;

&lt;head&gt;&lt;/head&gt;

&lt;body&gt;
  &lt;?php
  echo "Hola Mundo";
  ?&gt;
&lt;/body&gt;

&lt;/html&gt;</pre>
<p>Es decir que la página que se generará al ejecutarse el programa será:</p>
  
<pre style="background-color: #F2F2F2;">
&lt;html&gt;

&lt;head&gt;&lt;/head&gt;

&lt;body&gt;
  Hola Mundo&lt;/body&gt;

&lt;/html&gt;</pre><br>

<p>Podemos utilizar como editor de texto para codificar el programa PHP el <strong>VS Code</strong>.</p>
<p><strong>VS Code</strong>: Es un editor de texto que agregando extensiones podemos trabajar con PHP con herramientas para programar y depurar programas. Es creado y mantenido por la empresa Microsoft. Es open source y multiplataforma (Windows, Linux y Mac)<br>
</p><p>En el último año se esta convirtiendo en el editor de texto más utilizado por los programadores profesionales de todo el mundo.<br>
</p><p>Podemos comprobar esta situación si visitamos la encuesta de desarrolladores 2019 del sitio de 
<a href="https://insights.stackoverflow.com/survey/2019/#technology-_-most-popular-development-environments" target="_blank">stackoverflow</a></p>
<p>Le sugiero si va ha utilizar el VS Code, luego se tome su tiempo para conocer en forma más profunda el editor VS Code mediante el tutorial <a href="https://www.tutorialesprogramacionya.com/herramientas/vscodeya/" target="_blank"> VS Code Ya</a></p>


<p>Luego de tipear el programita con el editor de texto:</p>
<img src="asset://assets/images/introduccion_3_1.jpg" border="0" alt="Editor PHP VSCode"><br>

<p>Debemos almacenar dicho archivo en la subcarpeta 'htdocs' que depende de la carpeta 'xampp' (en mi caso instalé el XAMPP en c:/xampp)</p>
<p>Lo almacenamos con el nombre pagina1.php en la carpeta C:/xampp/htdocs</p>
<p>Este directorio es el que el servidor web Apache tiene asignado para recuperar páginas cuando se las solicitamos desde un navegador.</p>
<p>Ya tenemos almacenado el archivo en la carpeta 'htdocs' del 'xampp', ahora procedemos a solicitar dicha página desde un navegador web, para esto en la barra del navegador escribimos: </p>
<pre>http://localhost/pagina1.php
</pre>
<p><img src="asset://assets/images/introduccion_3_2.jpg" border="0" alt="Navegador web"></p>
<p>Tenemos en el navegador el resultado de la ejecución del programa.</p>


<p>Como podemos ver, es muy poco útil este programita, ya que el resultado de la ejecución de este programa PHP será siempre el mismo, es decir mostrar el texto "Hola Mundo".</p>

<br>
<br>

<h2>Problema resuelto.</h2>
<p>Copiar el contenido de este cuadro de texto al VS Code y almacenarlo en la carpeta c : \ xampp\htdocs con un nombre con extensión php.<br>
  luego abrir el navegador (Chrome, FireFox, IExplorer etc.) y en la barra de direcciones tipear:<br> http://localhost/pagina1.php (o el nombre del
archivo que le dió)  </p>

<pre style="background-color: #F2F2F2;">&lt;html&gt;

&lt;head&gt;&lt;/head&gt;

&lt;body&gt;
  &lt;?php
  echo "Hola Mundo";
  echo "&lt;br&gt;";
  echo "como estas?";
  ?&gt;
&lt;/body&gt;

&lt;/html&gt;</pre>

<h2>Problema propuesto.</h2>
<p>Confeccione un programa que muestre una serie de mensajes en la página empleando el comando echo. Tenga en cuenta que cuando utiliza el comando echo el mensaje se debe encerrar entre comillas dobles (como veremos más adelante también podrá encerrarse entre simples comillas).<br>
Toda instrucción finaliza con punto y coma.</p>
<pre style="background-color: #F2F2F2; padding:10px;">&lt;html&gt;

&lt;head&gt;
  &lt;title&gt;Problema&lt;/title&gt;
&lt;/head&gt;

&lt;body&gt;

  &lt;?php
  echo "Mi nombre es Juan.";
  echo "Tengo 20 años.";
  ?&gt;

&lt;/body&gt;

&lt;/html&gt;</pre>
</div>
''';