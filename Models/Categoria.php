<?php
class Categoria extends Conectar
{
    public function get_categoria_sede()
    {
        $conectar = parent::conexion();
        parent::set_names();
        $sql = "SELECT * FROM sede";
        $sql = $conectar->prepare($sql);
        $sql->execute();
        return $resultado = $sql->fetchAll();
    }

    public function get_categoria_torre()
    {
        $conectar = parent::conexion();
        parent::set_names();
        $sql = "SELECT * FROM torre";
        $sql = $conectar->prepare($sql);
        $sql->execute();
        return $resultado = $sql->fetchAll();
    }
    
    public function get_categoria_almacen()
    {
        $conectar = parent::conexion();
        parent::set_names();
        $sql = "SELECT * FROM almacen";
        $sql = $conectar->prepare($sql);
        $sql->execute();
        return $resultado = $sql->fetchAll();
    }

    public function get_categoria_equipo($ID_Almacen)
    {
        $conectar = parent::conexion();
        parent::set_names();
        $sql = "SELECT * FROM equipo WHERE ID_Almacen = ?
        ORDER BY equipo.Nombre_equipo ASC"; 
        $sql = $conectar->prepare($sql);
        $sql->execute(array($ID_Almacen));
        return $resultado=$sql->fetchAll();
    }

    public function get_categoria_marca()
    {
        $conectar = parent::conexion();
        parent::set_names();
        $sql = "SELECT * FROM marca 
        ORDER BY marca.Nombre_marca ASC";
        $sql = $conectar->prepare($sql);
        $sql->execute();
        return $resultado = $sql->fetchAll();
    }

    public function get_categoria_modelo($ID_marca)
{
    $conectar = parent::conexion();
    parent::set_names();
    $sql = "SELECT * FROM modelo WHERE ID_marca = ? ORDER BY modelo.Nombre_modelo ASC";
    $sql = $conectar->prepare($sql);
    $sql->execute(array($ID_marca));
    return $resultado = $sql->fetchAll();
}

    public function get_categoria_operatividad()
    {
        $conectar = parent::conexion();
        parent::set_names();
        $sql = "SELECT * FROM operatividad";
        $sql = $conectar->prepare($sql);
        $sql->execute();
        return $resultado = $sql->fetchAll();
    }
}
