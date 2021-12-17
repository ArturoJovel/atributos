<?php


namespace Dao;

class ProductoPanel extends Table
{

    public static function getProductoById($atributosCod)
    {
        $sqlstr = 'SELECT * from atributos where atributosCod =:atributosCod;';
        $parameters = array('atributosCod' => $atributosCod);
        $registro = self::obtenerUnRegistro($sqlstr, $parameters);
        return $registro;
    }
    public static function getAllProducto()
    {
        $registros = array();
        $registros = self::obtenerRegistros(
            'SELECT * from atributos;',
            array()
        );
        return $registros;
    }
    public static function addProducto($atributosDsc, $atributosEst, $atributosCnt)
    {
        $insSQL = "INSERT INTO atributos(atributosDsc, atributosEst, atributosCnt) VALUES (:atributosDsc, :atributosEst, :atributosCnt);";
        $parameters = array(
            "atributosDsc"  =>  $atributosDsc,
            "atributosEst"  =>  $atributosEst,
            "atributosCnt"  =>  $atributosCnt
        );
        return self::executeNonQuery($insSQL, $parameters);
    }

    public static function updateProducto($atributosDsc, $atributosEst, $atributosCnt)
    {
        $updSQL = "UPDATE atributos SET  atributosDsc = :atributosDsc, atributosEst = :atributosEst, atributosCnt = :atributosCnt WHERE atributosCod = :atributosCod;";
        $parameters = array(
            "atributosDsc"  =>  $atributosDsc,
            "atributosEst"  =>  $atributosEst,
            "atributosCnt"  =>  $atributosCnt
        );
        return self::executeNonQuery($updSQL, $parameters);
    }
    public static function deleteProducto($atributosCod)
    {
        $delSQL = 'DELETE FROM  atributo  where atributosCod =:atributosCod;';
        $parameters = array('atributosCod' => $atributosCod);
        return self::executeNonQuery($delSQL, $parameters);
    }







    /*
    public static function getProductoById($prdcod)
    {
        $sqlstr = 'SELECT * from productos where prdcod =:prdcod;';
        $parameters = array('prdcod' => $prdcod);
        $registro = self::obtenerUnRegistro($sqlstr, $parameters);
        return $registro;
    }
    public static function getAllProducto()
    {
        $registros = array();
        $registros = self::obtenerRegistros(
            'SELECT * from productos;',
            array()
        );
        return $registros;
    }
    public static function addProducto($prddsc, $prdprc, $prdImg, $catid, $mrcid, $prdcnt)
    {
        $insSQL = "INSERT INTO productos(prddsc,prdprc,prdImg,catid,mrcid,prdcnt) VALUES (:prddsc,:prdprc,:prdImg,:catid,:mrcid,:prdcnt);";
        $parameters = array(
            "prddsc"  =>  $prddsc,
            "prdprc"  =>  $prdprc,
            "prdImg"  =>  $prdImg,
            "catid"  =>  $catid,
            "mrcid"  =>  $mrcid,
            "prdcnt"  =>  $prdcnt
        );
        return self::executeNonQuery($insSQL, $parameters);
    }

    public static function updateProducto($prddsc, $prdprc, $prdImg, $catid, $mrcid, $prdcnt, $prdcod)
    {
        $updSQL = "UPDATE productos SET  prddsc = :prddsc,prdprc = :prdprc,prdImg = :prdImg,catid = :catid,mrcid = :mrcid,prdcnt = :prdcnt WHERE prdcod = :prdcod;";
        $parameters = array(
            'prddsc'  =>  $prddsc,
            'prdprc'  =>  $prdprc,
            'prdImg'  =>  $prdImg,
            'catid'  =>  $catid,
            'mrcid'  =>  $mrcid,
            'prdcnt'  =>  $prdcnt,
            'prdcod' => $prdcod
        );
        return self::executeNonQuery($updSQL, $parameters);
    }
    public static function deleteProducto($prdcod)
    {
        $delSQL = 'DELETE FROM  productos  where prdcod =:prdcod;';
        $parameters = array('prdcod' => $prdcod);
        return self::executeNonQuery($delSQL, $parameters);
    }*/
}
