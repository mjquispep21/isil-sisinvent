<?php
    require_once("../config/conexion.php");
    require_once("../models/Categoria.php");
    $categoria = new Categoria();

        switch($_GET["op"]){
            case "combo_sede":
                $datos=$categoria-> get_categoria_sede();
                if(is_array($datos)==true and count($datos)>0){
                    foreach($datos as $row)
                    {
                        $html.="<option value='".$row['ID_sede']."'>".$row['Nombre_sede']."</option>";
                    }
                    echo $html;
                }
            break;

            case "combo_torre":
                $datos=$categoria-> get_categoria_torre();
                if(is_array($datos)==true and count($datos)>0){
                    foreach($datos as $row)
                    {
                        $html.="<option value='".$row['ID_torre']."'>".$row['Nombre_torre']."</option>";
                    }
                    echo $html;
                }
            break;

            case "combo_almacen":
                $datos=$categoria-> get_categoria_almacen();
                if(is_array($datos)==true and count($datos)>0){
                    foreach($datos as $row)
                    {
                        $html.="<option value='".$row['ID_Almacen']."'>".$row['Tipo_almacen']."</option>";
                    }
                    echo $html;
                }
            break;

            case "combo_equipo":
                $datos=$categoria-> get_categoria_equipo();
                if(is_array($datos)==true and count($datos)>0){
                    foreach($datos as $row)
                    {
                        $html.="<option value='".$row['ID_equipo']."'>".$row['Nombre_equipo']."</option>";
                    }
                    echo $html;
                }
            break;

            case "combo_marca":
                $datos=$categoria-> get_categoria_marca();
                if(is_array($datos)==true and count($datos)>0){
                    foreach($datos as $row)
                    {
                        $html.="<option value='".$row['ID_marca']."'>".$row['Nombre_marca']."</option>";
                    }
                    echo $html;
                }
            break;

            case "combo_modelo":
                $datos=$categoria-> get_categoria_modelo();
                if(is_array($datos)==true and count($datos)>0){
                    foreach($datos as $row)
                    {
                        $html.="<option value='".$row['ID_modelo']."'>".$row['Nombre_modelo']."</option>";
                    }
                    echo $html;
                }
            break;

            case "combo_operatividad":
                $datos=$categoria-> get_categoria_operatividad();
                if(is_array($datos)==true and count($datos)>0){
                    foreach($datos as $row)
                    {
                        $html.="<option value='".$row['ID_operatividad']."'>".$row['Tipo_operatividad']."</option>";
                    }
                    echo $html;
                }
            break;
        }

?>