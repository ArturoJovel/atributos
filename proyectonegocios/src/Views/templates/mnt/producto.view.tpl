<section class="contenedor">
<h1>{{ModalTittle}}</h1>

<form class="formu" action="index.php?page=mnt_producto" method="POST">

    <!--codigo-->
    <div>
        <label for="atributosCod">Código</label>
        <br/>
        <input readonly disabled type="text" name"atributosCod" id="atributosCod" placeholder="Código" value="{{atributosCod}}"/>
        <input type="hidden" name="mode" value="{{mode}}"/>
        <input type="hidden" name="atributosCod" value="{{atributosCod}}"/>
    </div>

<!--Descripción-->
    <div>
            <label for="atributosDsc">Descripción</label>
            <br/>
            <input {{readonly}} type="text" name="atributosDsc" id="atributosDsc" placeholder="atributosDsc" value="{{atributosDsc}}"/>
        </div>

    <!--ESTADO-->
    <div>
            <label for="atributosEst">Estado</label>
            <br/>
            <input {{readonly}} type="text" name="atributosEst" id="atributosEst" placeholder="atributosEst" value="{{atributosEst}}"/>
        </div>
<!--CANTIDAD-->
		<div>
            <label for="atributosCnt">Cantidad</label>
            <br/>
            <input {{readonly}} type="text" name="atributosCnt" id="atributosCnt" placeholder="atributosCnt" value="{{atributosCnt}}"/>
        </div>
    <div>
    {{if showCommitBtn}}<button type="submit" name="btnConfirmar" >Confirmar</button>{{endif showCommitBtn}}
    <button type="button" id="btnCancelar" >
        {{if showCommitBtn}}
        Cancelar
        {{endif showCommitBtn}}
        {{ifnot showCommitBtn}}
        Regresar
        {{endifnot showCommitBtn}}
    </button>
    </div>

</form>
</section>
<script>
    document.addEventListener("DOMContentLoaded", ()=>{
        const btnCancelar = document.getElementById("btnCancelar");
        btnCancelar.addEventListener("click", (e)=>{
            e.preventDefault();
            e.stopPropagation();
            window.location.assign("index.php?page=mnt_productos");
        });
    });

    const url = "'https://api.cloudinary.com/v1_1/defil6trk/upload'";
    const form = document.querySelector("form");

    form.addEventListener("submit", (e) => {
    e.preventDefault();

    const files = document.querySelector("prdImg").files;
    const formData = new FormData();

    for (let i = 0; i < files.length; i++){
        let file = files[i];
        formData.append("file", file);
        formData.append("upload_preset", "edpun0xj");

        fetch(url, {
        method: "POST",
        body: formData
        })
        .then((response) => {
            return response.text();
        })
        .then((data) => {
            //document.getElementById("data").innerHTML += data;
            console.log(data);
        });
    }
});

    let  inputFile = document.getElementById('prdImgPrm');
    let imgFoto   =document.getElementById('imag');
    let divInterno =document.getElementById('binterior');
    let divExterno = document.getElementById('bexterior');
    let basurerito = document.getElementById('basu');

    const eliminarIma = () =>{
    divInterno.style.display='block';
    divExterno.style.height='50px';
    basurerito.style.display= 'none';
    imgFoto.style.display='none';
    imgFoto.src= '';
    console.log("ingreso");
    }
console.log("ingreso");
const eventos = () => {
   inputFile.addEventListener('change', (event) => {
   let tam, arriba;
    if(screen.width > 750)
       {
           tam= '8em';
           arriba= '3';
        }
    else
        {
            tam= '4em';
            arriba= '0';
        }

       const file = event.target.files[0];
        console.log(file);
       subirImagen( file ).then( url => imgFoto.src = url ,
        divInterno.style.display='none',
        divExterno.style.height=tam,
        divExterno.style.zIndex=arriba,
        divExterno.style.marginTop = '40px',
        deco.style.marginTop='50px',
        basurerito.style.display= 'block',
        imgFoto.style.display='block');

    });

}

</script>