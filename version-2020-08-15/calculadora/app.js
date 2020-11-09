'use strict';

// Declare app level module which depends on views, and core components
angular.module('myApp', [
  'ngRoute'
  ,'myApp.calc'
  ,'myApp.calcPago'
  /*
  ,'myApp.mail'
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
  ,'myApp.transacc',
  ,'myApp.transaccResumen'
  ,'myApp.login'
  ,'myApp.bancos'
  ,'myApp.ArchivosAdjuntos'
  ,'myApp.pruebas'
  ,'myApp.crud'
  ,'myApp.tasapais'
  ,'myApp.modal'
  ,'myApp.simulador'
  ,'myApp.develop'
  //,'ui.bootstrap.demo'
  */
])
.config(['$locationProvider', '$routeProvider', function($locationProvider, $routeProvider) {
  $locationProvider.hashPrefix('!');

//ruta por defecto
  $routeProvider.otherwise({redirectTo: '/calc'});
}])
;
