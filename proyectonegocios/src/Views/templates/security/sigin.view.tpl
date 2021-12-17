<section class="fullCenter">
  <form class="grid" method="post" action="index.php?page=sec_register">
    <section class="depth-1 row col-12 col-m-8 offset-m-2 col-xl-6 offset-xl-3">
      <h1 class="col-12">Crea tu cuenta</h1>
    </section>
    <section class="depth-1 py-5 row col-12 col-m-8 offset-m-2 col-xl-6 offset-xl-3">


      <div>
        <label for="prdcod">Código</label>
        <br/>
        <input readonly disabled type="text" name"prdcod" id="prdcod" placeholder="Código" value="{{prdcod}}"/>
        <input type="hidden" name="mode" value="{{mode}}"/>
        <input type="hidden" name="prdcod" value="{{prdcod}}"/>
    </div>
    
      <div class="row">
        <label for="prddsc">Descripción</label>
            <br/>
            <input {{readonly}} type="text" name="prddsc" id="prddsc" placeholder="prddsc" value="{{}}"/>
      </div>

      <div class="row">
        <label for="prddsc">Descripción</label>
            <br/>
            <input {{readonly}} type="text" name="prddsc" id="prddsc" placeholder="prddsc" value="{{}}"/>
      </div>

      
        <div>
            <label for="prdcnt">Cantidad</label>
            <br/>
            <input {{readonly}} type="text" name="prdcnt" id="prdcnt" placeholder="prdcnt" value="{{}}"/>
        </div>
      

<!--
      <div class="row">
        <label class="col-12 col-m-4 flex align-center" for="txtPswd">Contraseña</label>
        <div class="col-12 col-m-8">
          <input class="width-full" type="password" id="txtPswd" name="txtPswd" value="{{txtPswd}}" />
        </div>
        {{if errorPswd}}
        <div class="error col-12 py-2 col-m-8 offset-m-4">{{errorPswd}}</div>
        {{endif errorPswd}}        
          <label class="col-12 col-m-4 flex align-center" for="txtPswd">Confirmar Contraseña:</label>
          <div class="col-12 col-m-8">
            <input class="width-full" type="password" id="txtPswd2" name="txtPswd2" value="{{txtPswd2}}" />
          </div>
        {{if errorPswd2}}
        <div class="error col-12 py-2 col-m-8 offset-m-4">{{errorPswd2}}</div>
        {{endif errorPswd2}}
      </div>
      -->
      <div class="row right flex-end px-4">
        <button class="primary" id="Procesar" type="submit">Procesar</button>
      </div>
      <br>
      <div class="row right flex-end px-4">
        <button class="primary" id="Eliminar" type="submit">Eliminar</button>
      </div>
      <br>
      <div class="row right flex-end px-4">
        <button class="primary" id="Editar" type="submit">Editar</button>
      </div>
    </section>
  </form>
</section>