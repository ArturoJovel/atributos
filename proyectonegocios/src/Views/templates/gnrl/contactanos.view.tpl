<section class="contactanos">
    <section class="formulario" >
                <form id="cont" action="index.php?page=mnt_producto" method="GET">
                        <label for="name">Nombre</label>
                        </br>
                        <input type="text" name="name" id="txtname" required> 
                        </br>
                        <label for="lname">Apellido</label>
                        </br>
                        <input type="text" required name="lname" id="txtlname">
                        </br>
                        <label for="product">Selecciona el tipo de calzado que busca</label>
                        <select name="product" id="product">
                            <option value="Relojes">Caballeros</option>
                            <option value="Collares">Damas</option>
                            <option value="Pendientes">Niño</option>
                            <option value="Aretes">Niña</option>
                        </select>
                        </br>
                        <textarea id="consul" name="consulta" placeholder="Escribe tu consulta con más detalle aqui" rows="4" cols="50"></textarea>
                        </br>
                        <input type="submit" value="Enviar">
                </form>
    </section>
<!--
    <section class="formulario1 informacion" >
        <section class="redes1">
            <h2>Redes sociales</h2>
            <div>
                <a href="https://www.facebook.com/?gl=ES&hl=es">
                <img src="/{{BASE_DIR}}/public/img/facebook.png">
                <label>Facebook</label>
            </a>
            </div>
            <div>
            <a href="https://www.twitter.com/?gl=ES&hl=es">
                <img src="/{{BASE_DIR}}/public/img/twitter.png">
                <label>Twitter</label>
                </a>
            </div>
            <div >
                <a href="https://www.instagram.com/?gl=ES&hl=es">
                <img src="/{{BASE_DIR}}/public/img/instagram.png">
                <label> Instagram</label>
            </a>
            </div>
        </section>
    </section>
    -->
</section>