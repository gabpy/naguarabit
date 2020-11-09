'use strict';

// Declare app level module which depends on views, and core components
angular.module('myApp', [
  'ngRoute'
  ,'myApp.version'
  ,'myApp.view1'
  ,'myApp.view2'
  ,'myApp.inicio'
  ,'myApp.usuarios'
  ,'myApp.user'
  ,'myApp.paises'
  ,'myApp.pais'
  ,'myApp.monedas'
  ,'myApp.moneda'
  ,'myApp.ciudades'
  ,'myApp.ciudad'
  ,'myApp.bancos'
  ,'myApp.calc'
  ,'myApp.calcPago'
  ,'myApp.transacc',
  ,'myApp.transaccResumen'
  ,'myApp.login'
  ,'myApp.ArchivosAdjuntos'
  ,'myApp.crud'
  ,'myApp.tasapais'
  ,'myApp.mail'
  ,'myApp.modal'
  ,'myApp.simulador'
  ,'myApp.develop'
  ,'myApp.pruebas'
  //,'ui.bootstrap.demo'
])
.config(['$locationProvider', '$routeProvider', function($locationProvider, $routeProvider) {
  $locationProvider.hashPrefix('!');

//ruta por defecto
  $routeProvider.otherwise({redirectTo: '/inicio'});
}])
;
