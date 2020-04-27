'use strict';

angular.module('myApp.transaccResumen', ['ngRoute'])

//enrutamiento a resumen
.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/transacc/:id', {
    templateUrl: 'transacc/resumen.html',
    controller: 'ctrlTransaccionResumen'
  });
}])


//enrutamiento a resumen
.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/transacc/destino', {
    templateUrl: 'transacc/destino.html',
    controller: 'ctrlTransaccionPagosDestino'
  });
}])

.controller('ctrlTransaccionResumen', ['$scope', '$http', '$routeParams', function($scope, $http, $routeParams) {
  var ctrl = this;
  $scope.data = [];
  //para mostrar mensajes
  $scope.showError = false;
  $scope.mostrarExito = false;
  $scope.showErrorNotFound = false;
  $scope.showForm = true;

  //captura parametro - id
  $scope.capturarParametro = function(){
    console.log('controlador-transaccResumen- capturarParametro. inicio');

    $scope.idTransacc = $routeParams.idTransacc;
    console.log('id: ' + $scope.idTransacc);
    //TODO. validar parametro
    //que sea numerico
    console.log('controlador-transaccResumen- capturarParametro. fin');
  }


  //funcion para OBTENER DATOS DE transaccion, y los guarda en variable json
  $scope.getDataResumen = function() {
    //TODO. agregar uso de parametro
    $http.get("./transacc/resumen_get.php?id=" + $scope.idTransacc)
    .then(function (response) {
      var data = response.data.records;
      if (data[0] != null){
        $scope.data = data[0];
      //$scope.cargarCiudades();
      $scope.showForm = true;
    }
    else{
      $scope.showForm = false;
      $scope.msg = "Transaccion con id: " + $scope.idTransacc + " no encontrada";
      $scope.showErrorNotFound = true;
    }
  },
  function(data, status) {
    console.error('Error en llamada a busqueda dato: ', status, data);
    $scope.msg = "Error consultando datos";
    $scope.showError = true;
    $scope.showForm = false;
    });   //TODO: gestionar error, cuando no se traigan los datos del usuario, mostrar mensaje en vista
  };

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


 //funcion para OBTENER DATOS DE transaccion, y los guarda en variable json
 $scope.getDataPagosDestino = function() {
   console.log('controlador -resumen- getDataPagosDestino. start');

   //TODO. agregar uso de parametro
   $http.get("./transacc/destino_transacc.php?id=" + $scope.idTransacc)
   .then(function (response) {
     if (response.data.records != null){
       $scope.resultados_destino = response.data.records;
       $scope.resultados_destino = $scope.formatDateCreated($scope.resultados_destino);
       console.log('controlador -resumen- getDataPagosDestino. data_destino = ' + $scope.resultados_destino);

     //$scope.cargarCiudades();
     $scope.destino_showForm = true;
   }
   else{
     $scope.destino_showForm = false;
     $scope.msg = "Info no encontrada: Pagos a destino con id transaccion: " + $scope.idTransacc;
     $scope.destino_showErrorNotFound = true;
   }
 },
 function(data, status) {
   console.error('Error en llamada a busqueda dato: ', status, data);
   $scope.msg = "Error consultando datos";
   $scope.destino_showError = true;
   $scope.destino_showForm = false;
   });   //TODO: gestionar error, cuando no se traigan los datos del usuario, mostrar mensaje en vista

   console.log('controlador -resumen- getDataPagosDestino. fin');
 };


//funcion que se llama al inicio
$scope.init_function = function(){
  console.log('controlador -user- init_function. start');
  //-$scope.saludo = "Saludo desde el ctrl -user-. ";

  //$scope.cargarPaises();

  $scope.capturarParametro();
  if($scope.idTransacc == 'new'){
    console.log('Opcion: NEW');
    $scope.reset();
  }else{
    $scope.getDataResumen();
    $scope.getDataPagosDestino();
    //+$scope.getDataPagosOrigen();
  }
  console.log('controlador -user- init_function. end');
}

  ////*debugger;
  console.log('controlador-user. inicio');
  $scope.init_function();
  console.log('controlador -user- fin');
}]
);
