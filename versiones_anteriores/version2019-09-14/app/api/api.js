'use strict';

angular.module('myApp.api', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/api', {
    templateUrl: 'api/api.html',
    controller: 'CtrlAPI'
  });
}])

.controller('CtrlAPI', ['$scope', '$http', '$timeout', '$q', function($scope, $http, $timeout, $q) {

//trae la info de API Yadio y la guarda en la variable data
  $scope.getDataYadio = function() {
    console.log('CtrlAPI.getDataYadio.inicio');

		var URLconsulta = "./api/api1_get.php";
    //debugger;
    $http.get(URLconsulta)
    .then(function(response) {
      //debugger;
      if (response.data.records != null){
        $scope.data = response.data.records;
        $scope.showDataYadio();
        $scope.dataOk = true;
      }
      else{
        $scope.msg = "Data  no encontrada. URL de busqueda: " + URLconsulta;
      }
    },
    function(data, status) {
      //debugger;
      console.error('Error en SERVICIO de consulta de datos: ', status, data);
    });   //TODO: gestionar error, cuando no se traigan los datos del usuario, mostrar mensaje en vista
    console.log('CtrlAPI.getDataYadio.inicio');
}//getDataYadio

//trae la info de API Yadio y la guarda en la variable data
 $scope.getData_bitcoinaverage = function() {
    console.log('CtrlAPI.getData_bitcoinaverage.inicio');

		var URLconsulta = "./api/api2_get.php";
    //debugger;
    $http.get(URLconsulta)
    .then(function(response) {
      //debugger;
      if (response.data.records != null){
        $scope.data2 = response.data.records;
        //valor inicial de porc ajuste
        $scope.data2.porctrader =7.5;
        $scope.getData2();
        $scope.calcValorAjustado();
        $scope.dataOk2 = true;
      }
      else{
        $scope.msg = "Data  no encontrada. URL de busqueda: " + URLconsulta;
      }
    },
    function(data, status) {
      //debugger;
      console.error('Error en SERVICIO de consulta de datos: ', status, data);
    });   //TODO: gestionar error, cuando no se traigan los datos del usuario, mostrar mensaje en vista
    console.log('CtrlAPI.getData_bitcoinaverage.inicio');
}//getData_bitcoinaverage


//obtener data especifica para mostrar en la vista, API Yadio
$scope.showDataYadio = function() {
  //debugger;
  //*console.log('BTC/VES toda la data: ' + $scope.data[0]['VES']);
  //*console.log('BTC/USD toda la data: ' + $scope.data[0]['USD']);
  //$scope.BTC_VES_price = $scope.data[0]['VES']['price']; //good
  //$scope.USD_VES_rate = $scope.data[0]['USD']['rate']; //Tasa Bs/USD

//bloques de datos
  $scope.VES = $scope.data[0]['VES'];
  $scope.BTC = $scope.data[0]['BTC'];
  $scope.USD = $scope.data[0]['USD'];

//valores particulares
  $scope.BTC_VES_sell = $scope.VES['sell']; //precio venta de BTC por Bs
  $scope.BTC_USD_price = $scope.BTC['price']; //valor de BTC en USD
  $scope.USD_VES_rate = $scope.USD['rate']; // USD/Bs
  $scope.USD_PYG = $scope.USD['PYG']; //Tasa USD/Gs
  console.log('consultando data...');
  console.log('BTC/USD: ' + $scope.BTC_USD_price);
  console.log('BTC/Bs : ' + $scope.BTC_VES_sell);
  console.log('USD/Bs : ' + $scope.USD_VES_rate);
  console.log('USD/PYG : ' + $scope.USD_PYG);
}

//obtener data especifica para mostrar en la vista, API bitcoinAverage
$scope.getData2 = function() {
  console.log('consultando data... showData_bitcoinaverage');
  $scope.BTC_PYG_high = $scope.data2[0]['high'];
  console.log('BTC/PYG: ' + $scope.BTC_PYG_high);
}

$scope.calcValorAjustado = function(){
  //debugger;
  $scope.BTC_PYG_ajustado = $scope.BTC_PYG_high * (1 + $scope.data2.porctrader/100)
}

//START
console.log('CtrlAPI.inicio');
$scope.saludo = "*hello*";
$scope.dataOk = false;

//debugger;
$scope.data = {info:'CARGANDO...'};
$scope.data2 = {porctrader: 7.5};
$scope.BTC_VES_sell = 0.00;
$scope.BTC_USD_price = 0.00;
$scope.USD_VES_rate = 0.00;
$scope.BTC_PYG_ajustado = 0.00;
$scope.getDataYadio();
$scope.getData_bitcoinaverage();

//TODO. mostrar mensaje de CARGANDO..., y quitar mensaje una vez cargada la data

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

}]

);
