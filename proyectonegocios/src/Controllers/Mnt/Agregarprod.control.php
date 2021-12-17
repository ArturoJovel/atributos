<?php

namespace Controllers\Mnt;

class Agregarprod extends \Controllers\PublicController{
    public function run(): void
    {
        \Utilities\Site::addLink("public/css/agregarproducto.css");
        $viewData = array();
        $viewData["atributosCod"] ="";
        $viewData["atributosDsc"] ="";
        $viewData["atributosEst"] = "";
        $viewData["atributosCnt"] = "";

        if($this->isPostBack()){
            $viewData["atributosCod"] = $_POST["atributosCod"];
            $viewData["atributosDsc"] = $_POST["atributosDsc"];
            $viewData["atributosEst"] = $_POST["atributosEst"];
            $viewData["atributosCnt"] = $_POST["atributosCnt"];

            switch($viewData["mode"])
            {
                case "INS":
                    $ok = \Dao\ProductoPanel::addProducto(
                        $viewData["atributosDsc"],
                        $viewData["atributosEst"],
                        $viewData["atributosCnt"]
                    );
                    break;
            }
        }else{
            $viewData["mode"]== $_GET["mode"];
            $viewData["atributosCod"]== isset($_GET["atributosCod"]);
        }

        \Views\Renderer::render("mnt/agregarproducto", $viewData);



        /*
        \Utilities\Site::addLink("public/css/agregarproducto.css");
        $viewData = array();
        $viewData["idPro"] ="";
        $viewData["nombrePro"] ="";
        $viewData["marcapro"] = "";
        $viewData["categoriapro"] = "";
        $viewData["preciopro"] = "";
        $viewData["imgpro"] = "";
        $viewData["descripcionpro"] = "";

        if($this->isPostBack()){
            $viewData["idPro"] = $_POST["idPro"];
            $viewData["nombrePro"] = $_POST["nombrePro"];
            $viewData["marcapro"] = $_POST["marcapro"];
            $viewData["categoriapro"] = $_POST["categoriapro"];
            $viewData["preciopro"] = $_POST["preciopro"];
            $viewData["imgpro"] = $_POST["imgpro"];
            $viewData["descripcionpro"] = $_POST["descripcionpro"];

            switch($viewData["mode"])
            {
                case "INS":
                    $ok = \Dao\ProductoPanel::addProducto(
                        $viewData["nombrePro"],
                        $viewData["marcapro"],
                        $viewData["categoriapro"],
                        $viewData["preciopro"],
                        $viewData["imgpro"],
                        $viewData["descripcionpro"]
                    );
                    break;
            }
        }else{
            $viewData["mode"]== $_GET["mode"];
            $viewData["idPro"]== isset($_GET["idPro"]);
        }

        \Views\Renderer::render("mnt/agregarproducto", $viewData);*/
    }
}

?>