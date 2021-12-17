<section class="contenedor">
<h1>Listado de Atributos</h1>
<section class="WWList">
<table>
  <thead>
    <tr>
        <th>No.</th>
        <th>Descripción</th>
				<th>Estado</th>
        <th>Cantidad</th>
        <th>Modificar/Eliminar</th>
    </tr>
  </thead> 
  <tbody>
    {{foreach productos}}
    <tr>
      <td>{{rownum}}</td>
      <td><a href="index.php?page=mnt_producto&mode=DSP&id={{atributosCod}}">{{atributosCod}}</a></td>
			<td>{{atributosDsc}}</td>
			<td>{{atributosEst}}</td>
			<td>{{atributosCnt}}</td>
      <td>
        <a href="index.php?page=mnt_producto&mode=UPD&id={{atributosCod}}">Editar/</a>
        <a href="index.php?page=mnt_producto&mode=DEL&id={{atributosCod}}">Eliminar</a>
      </td>
    </tr>
    {{endfor productos}}

  </tbody>
</table>
<hr width=97% />
<button type="button" name="btnAgregar" id="btnAgregar">Agregar atributo</button>
</section>
</section>
<script>
    document.addEventListener("DOMContentLoaded", ()=>{
        const btnAgregar = document.getElementById("btnAgregar");
        btnAgregar.addEventListener("click", (e)=>{
            e.preventDefault();
            e.stopPropagation();
            window.location.assign("index.php?page=mnt_producto&mode=INS");
        });
    });
</script>
