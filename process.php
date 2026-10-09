<?php

header('Access-Control-allow-Origin:*');
header('Access-Control-allow-Headers: Origin, x-Requested-With, Content-Type, Accept, Access-Control-Request-Method');
header('Access-Control-allow-Methods: GET, POST, OPTIONS, PUT, DELETE');
header('Access-Control-Max-Age:1000:');
header('Access-Control-allow-Credentials: true');
header('Allow: GET. POST, OPTIONS, PUT, DELETE');

require('classes/estudiante.class.php');

$Estudiante = new Estudiante();

    if($_SERVER["REQUEST_METHOD"] === "GET")
    {
        $tipo_peticion = ((isset($_GET["t"])) ? (($_GET["t"])!="" ? $_GET["t"] : null): null );
        switch($tipo_peticion)
        {
            case "selectAll":
            $resultado = $Estudiante->obtenerEstudiantes();
            break;

            case "select":
            $id = ((isset($_GET["id"])) ? (($_GET["id"]!="") ? intval($_GET["id"]) : 0) : 0);
                if($id > 0)
                    {
                        $resultado = $Estudiante->obtenerEstudiante($id);
                    }
                else
                    {
                        header("HTTP/1.1 412 Precondition failed");
                        $resultado = array("mensaje"=>"el parametro ID no es correcto", "valores" =>"");
                    }
            break;

            case "insert":
                if(array_key_exists("fecha_nac", $_GET) and array_key_exists("id_genero", $_GET))
                    {
                        if($_GET["fecha_nac"] != "" and $_GET["id_genero"]!="")
                            {
                                $resultado = $Estudiante->nuevoEstudiante($_GET["fecha_nac"], $_GET["id_genero"]);
                            }
                            else {
                                header("HTTP/1.1 400 Bad Request");
                                $resultado = array("mensaje"=>"verifique el valor de la fecha de nacimiento o del genero", "valores" =>"");
                            }

                    }
                    else
                        {
                            header("HTTP/1.1 400 Bad Request");
                            $resultado = array("mensaje"=>"No se han enviado los parametros requeridos", "valores" =>"");
                        }
            
            break;

            default:
                header("HTTP/1.1 403 Forbidden");
                $resultado = array("mensaje"=>"debe de indicar el tipo de procesamiento que se realizara", "valores" =>"");
            break;
        }

    }
    elseif($_SERVER["REQUEST_METHOD"] === "POST")
    {
        if(array_key_exists("fecha_nac", $_POST) and array_key_exists("id_genero", $_POST))
        {
            if($_POST["fecha_nac"] != "" and $_POST["id_genero"]!="")
            {
                $resultado = $Estudiante->nuevoEstudiante($_POST["fecha_nac"], $_POST["id_genero"]);
            }
            else {
                header("HTTP/1.1 400 Bad Request");
                $resultado = array("mensaje"=>"verifique el valor de la fecha de nacimiento o del genero", "valores" =>"");
            }

        }
        else
        {
            header("HTTP/1.1 400 Bad Request");
                $resultado = array("mensaje"=>"No se han enviado los parametros requeridos", "valores" =>"");
        }
    }

    else
    {
        header("HTTP/1.1 400 Bad Request");
        $resultado = array("mensaje"=>"¿?", "valores" =>"");       
    }

header('Content-type: application/json');
echo(json_encode($resultado));
?>