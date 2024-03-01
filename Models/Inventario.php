<?php
class Ficha extends Conectar {


    public function insert_ficha($ID_sede, $ID_torre, $Salon, $ID_almacen, $ID_equipo, $Descripcion, $ID_marca, $ID_modelo, $Numero_serie, $Codigo_isil, $Cantidad, $Imagen, $ID_usuario, $ID_operatividad, $Observaciones){
        $conectar= parent::conexion();
        parent::set_names();
        $sql = "INSERT INTO ficha (ID_ficha, ID_sede, ID_torre, Salon, ID_almacen, ID_equipo, Descripcion, ID_marca, ID_modelo, Numero_serie, Codigo_isil, Cantidad, Imagen, ID_usuario, ID_operatividad, Observaciones, Fecha_registro, ID_usuario_modificador, Fecha_modificacion) VALUES (NULL,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?, now(), NULL, NULL);";
        $sql = $conectar->prepare($sql);
        $sql->bindValue(1, $ID_sede);
        $sql->bindValue(2, $ID_torre);
        $sql->bindValue(3, $Salon);
        $sql->bindValue(4, $ID_almacen);
        $sql->bindValue(5, $ID_equipo);
        $sql->bindValue(6, $Descripcion);
        $sql->bindValue(7, $ID_marca);
        $sql->bindValue(8, $ID_modelo);
        $sql->bindValue(9, $Numero_serie);
        $sql->bindValue(10, $Codigo_isil);
        $sql->bindValue(11, $Cantidad);
        $sql->bindValue(12, $Imagen);
        $sql->bindValue(13, $ID_usuario);
        $sql->bindValue(14, $ID_operatividad);
        $sql->bindValue(15, $Observaciones);
        $sql->execute();
        return $resultado = $sql->fetchAll(); 
    }

    public function update_ficha($ID_ficha, $ID_sede, $ID_torre, $Salon, $ID_almacen, $ID_equipo, $Descripcion, $ID_marca, $ID_modelo, $Numero_serie, $Codigo_isil, $Cantidad, $Imagen, $ID_usuario, $ID_operatividad, $Observaciones){
        $conectar = parent::conexion();
        parent::set_names();

        $sql_usuario_modificador = "SELECT Nombre, Apellidos FROM usuario WHERE ID_usuario = ?";
        $stmt_usuario_modificador = $conectar->prepare($sql_usuario_modificador);
        $stmt_usuario_modificador->bindValue(1, $ID_usuario);
        $stmt_usuario_modificador->execute();
        $usuario_modificador = $stmt_usuario_modificador->fetch(PDO::FETCH_ASSOC);
        $nombre_apellidos_usuario_modificador = $usuario_modificador["Nombre"] . ' ' . $usuario_modificador["Apellidos"];



        $sql = "UPDATE ficha set
                ID_sede = ?, 
                ID_torre = ?, 
                Salon = ?, 
                ID_almacen = ?, 
                ID_equipo = ?, 
                Descripcion = ?, 
                ID_marca = ?, 
                ID_modelo = ?, 
                Numero_serie = ?, 
                Codigo_isil = ?, 
                Cantidad = ?, 
                Imagen = ?,
                ID_operatividad = ?,
                Observaciones = ?,
                ID_usuario_modificador = ?,
                Fecha_modificacion = now()
                WHERE 
                ID_ficha = ?";
                 
        $sql = $conectar->prepare($sql);
        $sql->bindValue(1, $ID_sede);
        $sql->bindValue(2, $ID_torre);
        $sql->bindValue(3, $Salon);
        $sql->bindValue(4, $ID_almacen);
        $sql->bindValue(5, $ID_equipo);
        $sql->bindValue(6, $Descripcion);
        $sql->bindValue(7, $ID_marca);
        $sql->bindValue(8, $ID_modelo);
        $sql->bindValue(9, $Numero_serie);
        $sql->bindValue(10, $Codigo_isil);
        $sql->bindValue(11, $Cantidad);
        $sql->bindValue(12, $Imagen);
        $sql->bindValue(13, $ID_operatividad);
        $sql->bindValue(14, $Observaciones);  
        $sql->bindValue(15, $nombre_apellidos_usuario_modificador);
        $sql->bindValue(16, $ID_ficha);
        $sql->execute();
        return $resultado = $sql->fetchAll();
    }

    public function delete_ficha($ID_ficha){
        $conectar = parent::conexion();
        parent::set_names();
        $sql = "DELETE FROM ficha WHERE ID_ficha=?";
        $sql = $conectar->prepare($sql);
        $sql->bindValue(1, $ID_ficha);
        $sql->execute();
        return $resultado = $sql->fetchAll();
    }

    public function listar_ficha(){
        $conectar = parent::conexion();
        parent::set_names();
        $sql = "SELECT 
                ficha.ID_ficha,
                ficha.ID_sede,
                sede.Nombre_sede,
                ficha.ID_torre,
                torre.Nombre_torre,
                ficha.Salon,
                ficha.ID_almacen,
                almacen.Tipo_almacen,
                ficha.ID_equipo,
                equipo.Nombre_equipo,
                ficha.Descripcion,
                ficha.ID_marca,
                marca.Nombre_marca,
                ficha.ID_modelo,
                modelo.Nombre_modelo,
                ficha.Numero_serie,
                ficha.Codigo_isil,
                ficha.Cantidad,
                ficha.Imagen,
                ficha.ID_usuario,
                usuario.Nombre,
                usuario.Apellidos,
                ficha.ID_operatividad,
                operatividad.Tipo_operatividad,
                ficha.Observaciones, 
                ficha.Fecha_registro,
                ficha.ID_usuario_modificador, 
                ficha.Fecha_modificacion
                FROM
                ficha
                INNER JOIN sede on sede.ID_sede = ficha.ID_sede
                INNER JOIN torre on torre.ID_torre = ficha.ID_torre
                INNER JOIN almacen on almacen.ID_almacen = ficha.ID_almacen
                INNER JOIN equipo on equipo.ID_equipo = ficha.ID_equipo
                INNER JOIN marca on marca.ID_marca = ficha.ID_marca
                INNER JOIN modelo on modelo.ID_modelo = ficha.ID_modelo
                INNER JOIN usuario on usuario.ID_usuario = ficha.ID_usuario 
                INNER JOIN operatividad on operatividad.ID_operatividad = ficha.ID_operatividad";
        $sql = $conectar->prepare($sql);
        $sql->execute();
        return $resultado = $sql->fetchAll();
    }



    public function get_ficha_x_id($ID_ficha){
        $conectar = parent::conexion();
        parent::set_names();
        $sql = "SELECT 
                ficha.ID_ficha,
                ficha.ID_sede,
                sede.Nombre_sede,
                ficha.ID_torre,
                torre.Nombre_torre,
                ficha.Salon,
                ficha.ID_almacen,
                almacen.Tipo_almacen,
                ficha.ID_equipo,
                equipo.Nombre_equipo,
                ficha.Descripcion,
                ficha.ID_marca,
                marca.Nombre_marca,
                ficha.ID_modelo,
                modelo.Nombre_modelo,
                ficha.Numero_serie,
                ficha.Codigo_isil,
                ficha.Cantidad,
                ficha.Imagen,
                ficha.ID_usuario,
                usuario.Nombre,
                usuario.Apellidos,
                ficha.ID_operatividad,
                operatividad.Tipo_operatividad,
                ficha.Observaciones, 
                ficha.Fecha_registro,
                ficha.ID_usuario_modificador, 
                ficha.Fecha_modificacion
                FROM
                ficha
                INNER JOIN sede on sede.ID_sede = ficha.ID_sede
                INNER JOIN torre on torre.ID_torre = ficha.ID_torre
                INNER JOIN almacen on almacen.ID_almacen = ficha.ID_almacen
                INNER JOIN equipo on equipo.ID_equipo = ficha.ID_equipo
                INNER JOIN marca on marca.ID_marca = ficha.ID_marca
                INNER JOIN modelo on modelo.ID_modelo = ficha.ID_modelo
                INNER JOIN usuario on usuario.ID_usuario = ficha.ID_usuario
                INNER JOIN operatividad on operatividad.ID_operatividad = ficha.ID_operatividad
                WHERE 
                ID_ficha=?";
        $sql = $conectar->prepare($sql);
        $sql->bindValue(1, $ID_ficha);
        $sql->execute();
        return $resultado = $sql->fetchAll();
    }



}