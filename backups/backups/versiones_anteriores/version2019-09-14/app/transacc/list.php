<?php
/*
transacc/list.php
list de transacciones
*/
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

$conn = new mysqli("localhost", "venebit", "venebit", "venebit");
//handle utf-8 encoding
$conn->set_charset("utf8");

$sql="SELECT a.*, b.nombre from transacciones a INNER JOIN user b USING (login) ORDER BY a.date_created, a.login desc
";
$result = $conn->query($sql);

$outp = "";
while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
  if ($outp != "") {$outp .= ",";}
  $outp .= '{';
  $outp .= '"id":"'     		       . $rs["id"]  	         .'"';
  $outp .= ',"login":"'  		       . $rs["login"] 	   .'"';
  $outp .= ',"nombre":"' 		       . $rs["nombre"]	       .'"';
  $outp .= ',"origen_codpais":"'   . $rs["origen_codpais"] .'"';
  $outp .= ',"destino_codpais":"'  . $rs["destino_codpais"].'"';
  $outp .= ',"origen_monto":"'     . $rs["origen_monto"]   .'"';
  $outp .= ',"destino_monto":"'    . $rs["destino_monto"]  .'"';
  $outp .= ',"status":"'           . $rs["status"]         .'"';
  $outp .= ',"date_created":"'     . $rs["date_created"]   .'"';
  $outp .= '}';
}
$outp ='{"records":['.$outp.']}';
//TODO. manejar el error cuando no se consigue data
$conn->close();

echo($outp);

/*todo, hacer join de tabla users, con paises	 y ciudades*/
/*
  $outp .= ',"ciudad":"' . $rs["cod_ciudad"] . '"';
  $outp .= ',"pais":"'  . $rs["cod_pais"]  . '"';
*/
?>
