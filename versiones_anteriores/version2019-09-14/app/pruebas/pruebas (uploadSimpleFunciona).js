//funciona el upload image, lo sube a servidor, sin mostrar la imagen
'use strict';
angular.module('myApp.pruebas', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/pruebas', {
    templateUrl: 'pruebas/upload/upload.html',
    controller: 'pruebasCtrl'
  });
}])

.directive('myDirectiveUploadImage', function(httpPostFactory) {
  return {
    restrict: 'A',
    link: function(scope, element, attr) {
      element.bind('change', function() {
        var formData = new FormData();
        formData.append('file', element[0].files[0]);

        // optional front-end logging 
        var fileObject = element[0].files[0];
        /*original
        scope.fileLog = {
          'lastModified': fileObject.lastModified,
          'lastModifiedDate': fileObject.lastModifiedDate,
          'name': fileObject.name,
          'size': fileObject.size,
          'type': fileObject.type
        };
        */
        scope.fileLog = {
          'size': fileObject.size,
          'type': fileObject.type
        };
        scope.$apply();

        //start post, usado para subir archivo a servidor
        /*  ---> post request to your php file and use $_FILES in your php file   < ----*/
        httpPostFactory('pruebas/upload/upload.php', formData, function (callback) {
            console.log(callback);
        });
        /*end post image*/
      });

    }
  };
})

.factory('httpPostFactory', function($http) {
  return function(file, data, callback) {
    $http({
      url: file,
      method: "POST",
      data: data,
      headers: {
        'Content-Type': undefined
      }
    }).success(function(response) {
      callback(response);
      console.log('nombre de archivo nuevo:' +  file);
    });
  };
})

.controller('pruebasCtrl', ['$scope', function($scope) {
	//FileUploader({
  //          url: 'upload/upload.php'
  //});
}]);
