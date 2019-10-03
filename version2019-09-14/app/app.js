'use strict';

// Declare app level module which depends on views, and core components
angular.module('myApp', [
  'ngRoute'
  ,'myApp.version'
  ,'myApp.view1'
  ,'myApp.menu'
])
.config(['$locationProvider', '$routeProvider', function($locationProvider, $routeProvider) {
  $locationProvider.hashPrefix('!');

//ruta por defecto
  $routeProvider.otherwise({redirectTo: '/inicio'});
}])
;
