<?php
/*
user/get_resumen.php
devuelve un objeto json con la data
forma de uso:
user/get_resumen.php?id=ID_TRANSACC
*/
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

$conn = new mysqli("localhost", "venebit", "venebit", "venebit");
$conn->set_charset("utf8"); //handle utf-8 encoding

//obtener parametro de URL
if (isset($_GET['id'])){
  $id = $_GET['id'];
}else{
  $id="";
}

$outp = "";

if (!isset($id)  || $id == ""){
$outp ='{"records":['.$outp.']}';
}

else{
  //sin filtro de id
  $sql = "SELECT b.nombre user_nombre, p.nombre origen_pais_nombre, p1.nombre destino_pais_nombre, a.* \n"
      . "FROM transacciones a \n"
      . "INNER JOIN user b USING (login) \n"
      . "LEFT JOIN pais p ON a.origen_codpais = p.codigo \n"
      . "LEFT JOIN (select * from pais) p1 ON a.destino_codpais = p1.codigo \n"
      . "LIMIT 1";
  //+$result = $conn->query($sql);

  //test sin filtro
  $result = $conn->query($sql);

  while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
    if ($outp != "") {$outp .= ",";}
    $outp .= '{';
    $outp .= '"id":"'     		          . $rs["id"]  	         .'"';
    $outp .= ',"login":"'  		    . $rs["login"] 	   .'"';
    $outp .= ',"user_nombre":"' 		    . $rs["user_nombre"]	       .'"';
    $outp .= ',"origen_codpais":"'      . $rs["origen_codpais"] .'"';
    $outp .= ',"destino_codpais":"'     . $rs["destino_codpais"].'"';
    $outp .= ',"origen_pais_nombre":"'  . $rs["origen_pais_nombre"] .'"';
    $outp .= ',"destino_pais_nombre":"' . $rs["destino_pais_nombre"].'"';
    $outp .= ',"origen_monto":"'        . $rs["origen_monto"]   .'"';
    $outp .= ',"destino_monto":"'       . $rs["destino_monto"]  .'"';
    $outp .= ',"status":"'              . $rs["status"].'"';
    $outp .= ',"monto_dolares":"'       . $rs["monto_dolares"].'"';
    $outp .= ',"status_PO":"'           . $rs["status_PO"].'"';
    $outp .= ',"status_PD":"'           . $rs["status_PD"].'"';
    $outp .= ',"date_created":"'        . $rs["date_created"].'"';
    $outp .= '}';

/*
    //TODO. mostrar saltos de linea en el textarea de manera apropiada
    //replace salto de lineas por espacio
    $observ = str_replace(array("\r\n", "\r", "\n"), " ", $rs["observ"]);
    $outp .= ',"observ":"'  . $observ  . '"';
    $outp .= '}';
    */
  }
  $outp ='{"records":['.$outp.']}';
}

$conn->close();
echo($outp);

/*
<!--
$outp .= ',"codpais":"'  . $rs["cod_pais"]     . '"';
  $outp .= ',"codciudad":"'  . $rs["cod_ciudad"]     . '"';
-->
*/
?>
