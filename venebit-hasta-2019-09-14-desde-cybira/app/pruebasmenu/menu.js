'use strict';
angular.module('myApp.menu', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/menu', { //mapeo de url ejemplo: http://localhost/venebit/menu
    templateUrl: 'pruebasmenu/template.html',
    controller: 'menuCtrl'
  });
}])

.controller('menuCtrl', ['$scope', '$http', function($scope, $http) {
	/**/
	//*debugger;
	console.log('estoy en el controlador de menu');
  $scope.saludo = "Saludo desde el CTRL de pruebas";
  /**/

  $scope.initMenu = function(){
  	$scope.mostrarMenu = [];
  };


  $scope.showMenu = function(i){
  	$scope.mostrarMenu[i] = !$scope.mostrarMenu[i];
  };


	$scope.initMenu();
	
 }]);
