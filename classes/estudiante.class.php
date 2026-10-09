<?php
require("classes/conn.class.php");
require("classes/validaciones.inc.php");

class Estudiante{
    public $idEstudiante;
    public $fechaNacEstudiante;
    public $estadoRegistroEstudiante;
    public $idGenero;
    public $conexion;
    public $validacion;

    public function __construct(){
        $this->conexion = new DB();
        $this->validacion = new Validaciones();
    }

    public function setIdEstudiante($idEstudiante){
        $this->idEstudiante = intval($idEstudiante);
    }

    public function getIdEstudiante(){
        return intval($this->idEstudiante);
    }



     public function setFechaNacimiento($fechaNacimiento){
        $this->fechaNacEstudiante = $fechaNacimiento;
    }

    public function getFechaNacimiento(){
        return $this->fechaNacEstudiante;
    }


    
     public function setIdGenero($idGenero){
        $this->idGenero = $idGenero;
    }

    public function getIdGenero(){
        return $this->idGenero;
    }

    public function obtenerEstudiante(int $idEstudiante){
       if($this->idEstudiante > 0){
            $this->setIdEstudiante($idEstudiante);
            $resultado = $this->conexion->run('SELECT * From estudiante WHERE id_estudiante='.$this->idEstudiante.";");
            $array = array("mensaje" =>"registros encontrados", "Valores" =>$resultado->fetch());
            return $array;
       }
       else{
            $array = array("mensaje" =>"No se puede ejecutar la consulta, el parametro de ID es incorrecto", "Valores" =>"");
            return $array;
       }
    }

     public function obtenerEstudiantes(){       
        $resultado = $this->conexion->run('SELECT * From estudiante;');
        $array = array("mensaje" =>"registros encontrados", "Valores" =>$resultado->fetch());
        return $array;
    }

    public function nuevoEstudiante($fechaNacimiento, $idGenero){

        if(!empty($fechaNacimiento) and !empty($idGenero)){
            $parametros = array(
                "fecha_nac" => $fechaNacimiento,
                "id_genero" => $idGenero
            );
            $resultado = $this->conexion->run('INSERT INTO estudiante(fecha_nacimiento, id_genero)VALUES(:fecha_nac,:id_genero);',$parametros);
            if($this->conexion->n > 0 and $this->conexion->id > 0){
                $resultado = $this->obtenerEstudiante($this->conexion->id);
                $array = array("mensaje" =>"registros encontrados", "Valores" =>$resultado[Valores]);
                return $array;
            }
            else{
                return array("mensaje" =>"No se pudo realizar el insert", "Valores" =>"");
            }
        }
        else{
             return array("mensaje" =>"parametros enviados vacios", "Valores" =>"");
        }

    }


}


?>