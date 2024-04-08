<?php
require_once("../Config/conexion.php");
require_once("../Models/Historial.php");
$historial = new Historial();

switch ($_GET["op"]) {

    case "historial":

        $datos = $historial->listar_historial();
        $data = array();
        foreach ($datos as $row) {
            $sub_array = array();
            $sub_array[] = $row["ID_historial"];
            $sub_array[] = $row["ID_ficha"];
            $sub_array[] = $row["Nombre_sede"];
            $sub_array[] = $row["Nombre_torre"];
            $sub_array[] = $row["Salon"];
            $sub_array[] = $row["Tipo_almacen"];
            $sub_array[] = $row["Nombre_equipo"];
            $sub_array[] = $row["Descripcion"];
            $sub_array[] = $row["Nombre_marca"];
            $sub_array[] = $row["Nombre_modelo"];
            $sub_array[] = $row["Numero_serie"];
            $sub_array[] = $row["Codigo_isil"];
            if ($row["Imagen"]) {
                $imagen = base64_encode($row["Imagen"]);
                $sub_array[] = '<img src="data:image/jpeg;base64,' . $imagen . '" alt="Imagen" class="img-thumbnail" width="100" height="100">';
            } else {
                $sub_array[] = '<img src="../../assets/img/pendiente.jpg" alt="Imagen" class="img-thumbnail" width="100" height="100">';
            }
            $sub_array[] = $row["Nombre"] . ' ' . $row["Apellidos"];
            $sub_array[] = $row["ID_usuario_modificador"];
            $sub_array[] = $row["Tipo_operatividad"];
            $sub_array[] = $row["Observaciones"];
            $sub_array[] = $row["Fecha_registro"];
            $sub_array[] = $row["Tipo_movimiento"];
            $data[] = $sub_array;
        }
        $results = array(
            "sEcho" => 1,
            "iTotalRecords" => count($data),
            "iTotalDisplayRecords" => count($data),
            "aaData" => $data
        );
        echo json_encode($results);
        break;
}
