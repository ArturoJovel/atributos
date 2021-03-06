<section class="inicio">
    <section class="descripcion">
    <h2>¿Quiénes somos?</h2>
                <p>
                  Desde el principio, hemos tenido un solo enfoque: vender calzados cómodos y de tendencia a un buen precio. Nos hemos adaptado al mundo cambiante que nos rodea para brindar a todos acceso a los mejores estilos y marcas.
                  Seguimos brindando comodidad, con los estilos adecuados, al mejor precio.
                   </p>
                   Ya sea que estés buscando zapatos de mujer elegantes, obsesionad@ con zapatos deportivos o buscando estilos que se adapten a tu familia, somos el recurso confiable para zapatos.
                   <p>
                   </p>
                <p>
                  Gracias a nuestros servicios, seguridad y fidelidad de nuestros clientes continuamos prosperando a nivel nacional.
                </p>
    </section>
    <section class="slider">
            <div class="slideshow-container">

              <div class="mySlides fade">
                <div class="numbertext">1 / 3</div>
                <img src="/{{~BASE_DIR}}/public/img/vans.jpg" style="width:100%">
                <div class="text">Caption Text</div>
              </div>
              <div class="mySlides fade">
                <div class="numbertext">2 / 3</div>
                <img src="/{{~BASE_DIR}}/public/img/nike-mujer.jpg" style="width:100%">
                <div class="text">Caption Two</div>
              </div>
              <div class="mySlides fade">
                <div class="numbertext">3 / 3</div>
                <img src="/{{~BASE_DIR}}/public/img/zp-niña.jpg" style="width:100%">
                <div class="text">Caption Three</div>
              </div>
              <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
              <a class="next" onclick="plusSlides(1)">&#10095;</a>
              </div>
              <br>
              <div style="text-align:center">
                <span class="dot" onclick="currentSlide(1)"></span>
                <span class="dot" onclick="currentSlide(2)"></span>
                <span class="dot" onclick="currentSlide(3)"></span>
              </div>
    </section>
</section>
  <script>
  var slideIndex = 1;
  showSlides(slideIndex);
  
  function plusSlides(n) {
    showSlides(slideIndex += n);
  }
  
  function currentSlide(n) {
    showSlides(slideIndex = n);
  }
  
  function showSlides(n) {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    if (n > slides.length) {slideIndex = 1}    
    if (n < 1) {slideIndex = slides.length}
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";  
    }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
  }
  </script>
  