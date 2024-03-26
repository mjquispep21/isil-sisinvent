<?php
class Historial extends Conectar
{
    public function listar_historial()
    {
        $conectar = parent::conexion();
        parent::set_names();
        $sql = "SELECT 
                historial_ficha.ID_historial,
                historial_ficha.ID_ficha,
                sede.Nombre_sede,
                torre.Nombre_torre,
                historial_ficha.Salon,
                almacen.Tipo_almacen,
                equipo.Nombre_equipo,
                historial_ficha.Descripcion,
                marca.Nombre_marca,
                modelo.Nombre_modelo,
                historial_ficha.Numero_serie,
                historial_ficha.Codigo_isil,
                usuario.Nombre,
                usuario.Apellidos,
                historial_ficha.ID_usuario_modificador,
                operatividad.Tipo_operatividad,
                historial_ficha.Observaciones,
                historial_ficha.Fecha_registro,
                historial_ficha.Tipo_movimiento
                FROM historial_ficha 
                INNER JOIN sede ON historial_ficha.ID_sede = sede.ID_sede
                INNER JOIN torre ON historial_ficha.ID_torre = torre.ID_torre
                INNER JOIN almacen ON historial_ficha.ID_almacen = almacen.ID_almacen
                INNER JOIN equipo ON historial_ficha.ID_equipo = equipo.ID_equipo
                INNER JOIN marca ON historial_ficha.ID_marca = marca.ID_marca
                INNER JOIN modelo ON historial_ficha.ID_modelo = modelo.ID_modelo
                INNER JOIN usuario ON historial_ficha.ID_usuario = usuario.ID_usuario
                INNER JOIN operatividad ON historial_ficha.ID_operatividad = operatividad.ID_operatividad
                INNER JOIN ficha ON historial_ficha.ID_ficha = ficha.ID_ficha";
        $sql = $conectar->prepare($sql);
        $sql->execute();
        return $resultado = $sql->fetchAll();
    }
    
}
