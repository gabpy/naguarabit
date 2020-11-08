








/*
//simulador calculadora
//valores iniciales
//OJO: usar el limite inferior para definir valores iniciales con una funcion
$scope.monto1= 200000;
$scope.monto1= 0;
//$scope.montoUSD= 0;
//$scope.montoUSD= 0;
//$scope.montoBs= 0;
$scope.montoGs= 0;// TODO. usar
$scope.porc_comision = 5.00;
*/

/*
//doesn't resolve until all of the input promises are resolved
$q.all([req1])
.then($scope.showDataYadio())
.catch(function(err){
   // mostrar mensaje, if either request fails
});
*/
//no funciona. pq renderiza la vista de una vez, sin esperar tener la data
//wait 3 seconds that API returns data
//setTimeout(function() { $scope.showDataYadio(); }, 3000);







/*NO USADO
//TODO. generalizarlo para cualquier moneda
//obtiene info de API Yadio para una moneda especifica, en este caso SOL PERUANO (PEN)
//y la guarda en la variable data
  $scope.getDataYadioMonedaPEN = function() {
    console.log('Ctrlsimulador.getDataYadioMoneda.inicio. moneda: PEN');

    var URLconsulta = "./api/api_yadio_get_moneda.php";
    //debugger;
    $http.get(URLconsulta)
    .then(function(response) {
      //debugger;
      if (response.data.records != null){
        $scope.data3 = response.data.records;
        //console.log('Ctrlsimulador.getDataYadioMoneda.inicio. moneda: PEN. respuesta api:');
        console.log(response.data)
        //valores particulares, tasas especificas
        $scope.PEN_VES = $scope.data3[0]['rate'];//bs por sol peruano, tasa promedio
        $scope.USD_PEN = $scope.data3[0]['usd']; //soles peruano por dolar, tasa promedio

        //analizar si es necesario esta linea
        $scope.dataOk = $scope.dataOk && true;
      }
      else{
        $scope.msg = "Data  no encontrada. URL de busqueda: " + URLconsulta;
      }
    },
    function(data, status) {
      //debugger;
      console.error('Error en SERVICIO de consulta de datos: ', status, data);
    });   //TODO: gestionar error, cuando no se traigan los datos del usuario, mostrar mensaje en vista
    //console.log('Ctrlsimulador.getDataYadioMoneda.fin');
};//getDataYadio
*/
