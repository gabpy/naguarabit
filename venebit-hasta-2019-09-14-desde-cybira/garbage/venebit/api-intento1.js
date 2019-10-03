'use strict';

angular.module('myApp.api', ['ngRoute'])


.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/api', {
    templateUrl: 'api/api.html',
    controller: 'CtrlAPI'
  });
}])

//NO USADO
.service('dataService', function($http) {
    delete $http.defaults.headers.common['X-Requested-With'];
    this.getDataApiYadio = function() {
        return $http({
            method: 'GET',
            url: 'https://api.yadio.io/json',
            dataType: 'jsonp'
         });
     }
})

.controller('CtrlAPI', ['$scope', '$http', function($scope, $http) {
  console.log('CtrlAPI.inicio');

  $scope.saludo = "*hello*";

//trae la info de yadio y la guarda en la variable data
 $scope.getData = function() {
    console.log('CtrlAPI.showData.inicio');
    //+console.log('param codigo: ' +  $scope.codigo);

		var URLconsulta = "https://api.yadio.io/jsonp";
    //-$http.get(URLconsulta)
    $http.jsonp(URLconsulta)
    .then(function (response) {
      debugger;
      if (response != null){
        $scope.data = response.data;
      }
      else{
        $scope.msg = "Data  no encontrada. URL de busqueda: " + URLconsulta;
      }
    },
    function(data, status) {
      debugger;
      console.error('Error en SERVICIO de consulta de datos: ', status, data);
    });   //TODO: gestionar error, cuando no se traigan los datos del usuario, mostrar mensaje en vista
    console.log('CtrlAPI.showData.inicio');
}//getData

$scope.getData();
}]

);
