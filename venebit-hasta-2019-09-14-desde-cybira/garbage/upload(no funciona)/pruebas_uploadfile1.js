'use strict';
angular.module('myApp.pruebas', ['ngRoute', 'angularFileUpload'])

.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/pruebas', {
    templateUrl: 'pruebas/prueba_upload_file.html',
    controller: 'pruebasCtrl'
    //templateUrl: 'pruebas/template-password-confirm.html'
  });
}])

.directive('fileModel', ['$parse', function ($parse) {
  return {
   restrict: 'A',
   link: function(scope, element, attrs) {
    var model = $parse(attrs.fileModel);
    var modelSetter = model.assign;

    element.bind('change', function() {
     scope.$apply(function() {
      modelSetter(scope, element[0].files[0]);
    });
   });
  }
};
}])

.service('fileUpload', ['$http', function ($http) {
  this.uploadFileToUrl = function(file, uploadUrl) {
   var fd = new FormData();
   fd.append('file', file);

   $http.post(uploadUrl, fd, {
    transformRequest: angular.identity,
    headers: {'Content-Type': undefined}
  })
   .success(function() {
   })
   .error(function() {
   });
 }
}])

.controller('pruebasCtrl', ['$scope', '$http', function($scope, $http) {
	/*
	//*debugger;
	console.log('estoy en el controlador de pruebas');
  $scope.saludo = "Saludo desde el CTRL de pruebas";
  */
  $scope.uploadFile = function() {

   var file = $scope.myFile;
   console.log('file is ' );
   console.dir(file);
   var uploadUrl = "/_upload_files";
   fileUpload.uploadFileToUrl(file, uploadUrl);
 };
}]);
