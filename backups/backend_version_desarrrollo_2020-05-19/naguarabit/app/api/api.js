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
};//getDataYadio

//TODO. generalizarlo para cualquier moneda
//obtiene info de API Yadio para moneda SOL PERUANO (PEN) y la guarda en la variable data
  $scope.getDataYadioMoneda = function() {
    console.log('CtrlAPI.getDataYadioMoneda.inicio. moneda: PEN');

    var URLconsulta = "./api/api_yadio_get_moneda.php";
    //debugger;
    $http.get(URLconsulta)
    .then(function(response) {
      //debugger;
      if (response.data.records != null){
        $scope.data3 = response.data.records;
        console.log('CtrlAPI.getDataYadioMoneda.inicio. moneda: PEN. respuesta api:');
        console.log(response.data)
        //valores particulares, tasas especificas
        $scope.PEN_VES = $scope.data3[0]['rate'];//bs por sol peruano, tasa promedio
        $scope.USD_PEN = $scope.data3[0]['usd']; //soles peruano por dolar, tasa promedio

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
    console.log('CtrlAPI.getDataYadio.inicio');
};//getDataYadio

//trae la info de API bitcoinaverage y la guarda en la variable data2
 $scope.getData_bitcoinaverage = function() {
    console.log('CtrlAPI.getData_bitcoinaverage.inicio');

		var URLconsulta = "./api/api2_get.php";
    //debugger;
    $http.get(URLconsulta)
    .then(function(response) {
      //debugger;
      if (response.data.records != null){
        $scope.data2 = response.data.records;
        //valor inicial de porcentaje ajuste
        $scope.data2.porctrader = 7;
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
};//getData_bitcoinaverage


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

//valores particulares, tasas especificas
  $scope.BTC_VES_sell = $scope.VES['sell']; //precio venta de BTC por Bs
  $scope.BTC_USD_price = $scope.BTC['price']; //valor de BTC en USD
  $scope.USD_VES_rate = $scope.USD['rate']; // Tasa de Bs por USD
  $scope.USD_PYG = $scope.USD['PYG']; //Tasa USD/Gs.
  console.log('consultando data...');
  console.log('BTC/USD: ' + $scope.BTC_USD_price);
  console.log('BTC/Bs : ' + $scope.BTC_VES_sell);
  console.log('USD/Bs : ' + $scope.USD_VES_rate);
  console.log('USD/PYG : ' + $scope.USD_PYG);
};

//obtener data especifica para mostrar en la vista, API bitcoinAverage
$scope.getData2 = function() {
  console.log('consultando data... showData_bitcoinaverage');
  $scope.BTC_PYG_high = $scope.data2[0]['high'];
  console.log('BTC/PYG: ' + $scope.BTC_PYG_high);
};

//calcula valor ajustado de compra de BTC por PYG(guarani), para comparar con precios de compra en localbitcoins
$scope.calcValorAjustado = function(){
  //debugger;
  $scope.BTC_PYG_ajustado = $scope.BTC_PYG_high * (1 + $scope.data2.porctrader/100)
};

//calcula monto en dolares en base a monto1
$scope.calcularMontoUSD = function(){
  console.log('USD/PYG: ' + $scope.USD_PYG);
  console.log('calc.monto1: ' + $scope.monto1);
  $scope.monto3 = $scope.monto1 / $scope.USD_PYG; 
  console.log('calc.monto3: ' + $scope.monto3);
  $scope.monto3 = $scope.monto3.toFixed(2); //TODO. aplicar round a 2 decimales
  console.log('calc.monto3: ' + $scope.monto3);
  $scope.aplicarComision();
};

$scope.calcularMontoBs = function(){
  console.log('tasa USD/Bs: ' + $scope.USD_VES_rate);
  console.log('calc.monto2: ' + $scope.monto2);
  $scope.monto2 = $scope.monto3 * $scope.USD_VES_rate; //total Bs = montoUSD*tasaUSD
  $scope.monto2 = $scope.monto2.toFixed(0); //TODO. aplicar round a 2 decimales
  console.log('calc.monto2: ' + $scope.monto2);
  $scope.aplicarComision();
};

$scope.aplicarComision = function(){
  $scope.montoUSD = $scope.monto3 * (1 - $scope.porc_comision/100);
  $scope.montoBs  = $scope.monto2 * (1 - $scope.porc_comision/100);

  $scope.montoUSD = $scope.montoUSD.toFixed(2); //round a 2 decimales
  $scope.montoBs = $scope.montoBs.toFixed(0); //round a 0 decimales
  console.log('aplicarComision');
  console.log('montoUSD: ' + $scope.monto3);
  console.log('montoBs: ' + $scope.monto2);
};

//INICIO DEL CONTROLADOR
console.log('CtrlAPI.inicio');
$scope.saludo = "*hello*";
$scope.dataOk = false;

//data de apis
$scope.data = {info:'CARGANDO...'};
$scope.data2 = {porctrader: 7.5};

$scope.BTC_VES_sell = 0.00;
$scope.BTC_USD_price = 0.00;
$scope.USD_VES_rate = 0.00;
$scope.BTC_PYG_ajustado = 0.00;
$scope.getDataYadio();
$scope.getData_bitcoinaverage();
$scope.getDataYadioMoneda();

//simulador calculadora
//valores iniciales
//OJO: usar el limite inferiro para definir valores iniciales con una funcion
$scope.monto1= 200000;
$scope.monto2= 0;
$scope.monto3= 0;
$scope.montoUSD= 0;
$scope.montoBs= 0;
$scope.montoGs= 0;// TODO. usar
$scope.porc_comision = 6.00;



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
