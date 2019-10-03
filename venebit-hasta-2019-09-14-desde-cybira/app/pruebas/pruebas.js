'use strict';
angular.module('myApp.pruebas', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/pruebas', {
    //upload simple
    //templateUrl: 'pruebas/upload/upload.html',

    //prueba de carga y mostrar imagenes
    templateUrl: 'pruebas/imageLoadAndShow/index.html',
    controller: 'pruebasCtrl'
  });
}])

.controller('pruebasCtrl', ['$scope', function($scope) {
//codigo controlador
    $scope.stepsModel = [];

    //carga imagenes seleccionadas
    $scope.imageUpload = function(element){
        var reader = new FileReader();
        reader.onload = $scope.imageIsLoaded;
        reader.readAsDataURL(element.files[0]);
    }

    //muestra imagenes cargadas
    $scope.imageIsLoaded = function(e){
        $scope.$apply(function() {
            $scope.stepsModel.push(e.target.result);
        });
    }

    //TODO. En proceso. borrar todas las imagenes
    $scope.removeAll = function(){
      $scope.stepsModel.splice(0);
    }
}]);

