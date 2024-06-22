<h1>FlashCookie.com - Trabajo Práctico de Base de Datos</h1>
    
<h2>Descripción del problema</h2>

<p>La empresa FlashCookie.com se dedica a la impresión de indumentaria con estampas personalizadas. El sistema permite a los creadores de estampas publicar su tienda online con diferentes motivos. Los clientes pueden buscar estampas utilizando etiquetas específicas y, una vez seleccionada una estampa, elegir el tipo de producto para estampar, como remeras, almohadones o zapatillas.</p>
    
<h2>Objetivos</h2>
<ol>
  <li><strong>Analizar el sitio FlashCookie.com</strong>:
    <ul>
      <li>Revisar la sección FAQ (Preguntas frecuentes: <a href="https://flashcookie.com/faq">FAQ de FlashCookie.com</a>) que describe en detalle la dinámica del sistema.</li>
    </ul>
  </li>
  <li><strong>Identificar los datos relevantes de los irrelevantes</strong>:
    <ul>
      <li>Ignorar todo el proceso logístico de la impresión física, pagos y envíos.</li>
      <li>Centrarse en la funcionalidad online del sistema: artistas, clientes, estampas y productos.</li>
    </ul>
  </li>
  <li><strong>Diseñar un Diagrama de Entidad Relación (DER)</strong>:
    <ul>
      <li>Capturar la mayor cantidad de entidades, relaciones y atributos que permitan modelar el sistema online.</li>
      <li>Asegurar que el sistema permita a los artistas subir sus diseños y a los clientes registrarse y comprar prendas con estampas.</li>
    </ul>
  </li>
  <li><strong>Crear una base de datos</strong>:
    <ul>
      <li>Diseñar una base de datos con todas sus tablas normalizadas (al menos hasta la 3FN).</li>
      <li>Cargar en la base de datos al menos 5 artistas (con 2 a 6 estampas cada uno), 10 clientes y todas las prendas que figuran en el FAQ con al menos 3 medidas cada uno.</li>
    </ul>
  </li>
  <li><strong>Escribir consultas SQL</strong>:
    <ul>
      <li>Formular consultas SQL que permitan responder a las consignas del trabajo práctico.</li>
    </ul>
  </li>
</ol>
    
<h2>Contenidos del repositorio</h2>
<ul>
  <li><strong>DER | Luka Lattanzi</strong>: Diagrama de Entidad Relación que modela el sistema.</li>
  <li><strong>Diagrama Base de Datos | Luka Lattanzi</strong>: Diagrama de Base de Datos que modela el sistema.</li>
  <li><strong>Base de Datos | Luka Lattanzi</strong>: Script SQL para la creación de la base de datos y sus tablas normalizadas.</li>
  <li><strong>Consultas SQL | Luka Lattanzi</strong>: Conjunto de consultas SQL que responden a las consignas del trabajo práctico.</li>
</ul>

<h2>Estructura de la base de datos</h2>

<p>La base de datos incluye las siguientes entidades principales:</p>

<ul>
  <li><strong>Artistas</strong>: Información sobre los creadores de estampas.</li>
  <li><strong>Estampas</strong>: Diseños creados por los artistas.</li>
  <li><strong>Clientes</strong>: Información sobre los clientes registrados.</li>
  <li><strong>Productos</strong>: Tipos de productos que pueden ser estampados (e.g., remeras, almohadones, zapatillas).</li>
  <li><strong>Carritos</strong>: Carritos de compra de los clientes, que incluyen las prendas seleccionadas para estampar.</li>
</ul>

<p>Cada entidad tiene sus relaciones y atributos específicos detallados en el Diagrama de Entidad Relación.</p>
    
<h2>Notas adicionales</h2>
  <ul>
    <li>Asegúrate de tener instalado un gestor de bases de datos compatible (por ejemplo, MySQL, PostgreSQL) para ejecutar los scripts SQL.</li>
    <li>Las consultas SQL están diseñadas para cumplir con las especificaciones y consigas del trabajo práctico, asegurando que cubren los aspectos más relevantes del sistema online de FlashCookie.com.</li>
  </ul>
