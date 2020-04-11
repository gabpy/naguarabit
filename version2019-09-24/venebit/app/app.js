'use strict';

// Declare app level module which depends on views, and core components
angular.module('myApp', [
  'ngRoute'
  ,'myApp.version'
  ,'myApp.view1'
  ,'myApp.view2'
  ,'myApp.pruebas'
  ,'myApp.saludo'
  ,'myApp.usuarios'
  ,'myApp.user'
  ,'myApp.paises'
  ,'myApp.pais'
  ,'myApp.monedas'
  ,'myApp.moneda'
  ,'myApp.ciudades'
  ,'myApp.ciudad'
  ,'myApp.calc'
  ,'myApp.api'
  ,'myApp.transacc',
  ,'myApp.transaccResumen'
])
.config(['$locationProvider', '$routeProvider', function($locationProvider, $routeProvider) {
  $locationProvider.hashPrefix('!');

//ruta por defecto
  $routeProvider.otherwise({redirectTo: '/inicio'});
}])
;
