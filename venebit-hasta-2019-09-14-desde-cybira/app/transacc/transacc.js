'use strict';

angular.module('myApp.transacc', ['ngRoute'])

//enrutamiento a list
.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/transacc', {
    templateUrl: 'transacc/list.html',
    controller: 'ctrlTransacciones'
  });
}])


//para auto enfocar un input
.directive('autoFocus', function($timeout) {
  return {
    restrict: 'A',
    link: function (scope, element, attrs) {
          /*
            attrs.$observe("autoFocus", function(newValue){
                if (newValue === "true")
                    $timeout(function(){element.focus()});
            });
            */
            $timeout(function() {
          // use a timout to foucus outside this digest cycle!
              element[0].focus(); //use focus function instead of autofocus attribute to avoid cross browser problem. And autofocus should only be used to mark an element to be focused when page loads.
            }, 0);
          }
        };
      })

.controller('ctrlTransacciones', ['$scope', '$http', function($scope, $http) {

//formatear valores de campo date_created
$scope.formatDateCreated = function (data){
  // Obteniendo todas las claves del JSON
  var json = angular.copy(data);
  for (var clave in json){
    // Controlando que json realmente tenga esa propiedad
    if (json.hasOwnProperty(clave)) {
      // Mostrando en pantalla la clave junto a su valor
      console.log('fecha: ' + json[clave].date_created);
      console.log('fecha formateada: ' + formatDate(json[clave].date_created));
      json[clave].date_created = formatDate(json[clave].date_created);
    }
  }
  return json;
};

/*obtiene lista de todas las transacciones registradas*/
$scope.getAllData = function(){
  console.log('controlador -transacciones-getDataAll.inicio');
	   //devuelve lista de transacciones en formato json
    $http.get("./transacc/list.php")
    .then(function (response) {
     $scope.resultados = response.data.records;
     $scope.resultados = $scope.formatDateCreated($scope.resultados);
   });
    console.log('controlador -transacciones-getData.fin');
  };


  /*inicializa filtros*/
  $scope.initFiltros = function(){
    $scope.filtros = {status: '', cod_pais1: 'PAR', cod_pais2: 'VEN'};
    //TODO. pasar estas variables al arreglo filtros
    $scope.pago1_ok = false;
    $scope.pago2_ok = false;
  }

//TODO:terminar
/*establece condiciones para el WHERE del query, segun los filtros elegidos en la vista*/
$scope.setCondicionWhere = function(){
    //debugger;
    var cond = '';
    if ($scope.pago1_ok == false && $scope.pago2_ok == false && $scope.filtros.status == ''){
      return;
    }
    cond = 'WHERE ';
    if ($scope.pago1_ok == true){
      cond += "check_pago_origen = 1 ";
    }
    if ($scope.pago2_ok == true){
      cond += "AND check_pago_destino = 1";
    }
    if ($scope.filtros.status != ''){
      cond = cond + " AND status = '" + $scope.filtros.status + "'";
    }

      /*
      $scope.pago2_ok = false;
      $scope.filtros = {status: 'New'};
      */
      $scope.condicionWhere = cond;
      console.log('condicion: '+$scope.condicionWhere);
    //debugger;
  };


  /*obtiene lista de todas las transacciones registradas*/
  $scope.cargarDataFiltrada = function(){
   console.log('controlador -transacciones-getDataFiltrada.inicio');
   $scope.
   	   //devuelve lista de transacciones en formato json
       $http.get("./transacc/list.php")
       .then(function (response) {
        $scope.resultados = response.data.records;
      });
       console.log('controlador -transacciones-getData.fin');
     };

     $scope.new = function (){
      location.href = '#!/calc/';
    };      

//-alert('Hola');
////*debugger;
console.log('controlador -transacciones- inicio');
$scope.saludo = "Saludo desde ctrl";
$scope.initFiltros();
$scope.getAllData();
console.log('controlador -transacciones- fin');
}]);
/*
.controller('ctrlTransaccionResumen', ['$scope', '$http', '$routeParams', function($scope, $http, $routeParams) {

  $scope.init = function(){
    console.log('controlador -transaccionResumen- inicio');
    console.log('controlador -transaccionResumen- fin');
  }

  $scope.init();
}]);
*/
