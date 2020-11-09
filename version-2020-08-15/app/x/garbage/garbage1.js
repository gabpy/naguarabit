



/*
//OPCION NO USADA AHORA
.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/calcConfirm', {
    templateUrl: 'calc/confirmar.html',
    controller: 'ctrlCalcConfirm'
  });
}])
*/

/*TODO
  //captura parametro - modo operacion
  $scope.capturarParametro = function(){
    $scope.codigo = $routeParams.codigo;
    console.log('codigo: ' + $scope.codigo);
    //TODO. validar parametro codigo:
    //que no sea vacio, solo que tenga caracteres validos, longitud, no comience con un nro,etc...
  }
  */

    //TODO terminar: llenar estructuras similares a esta, con datos provenientes de la bd
  /*
  //TODO. sacar la variable formapago del arreglo, usar variable simple
  //forma de pago Deposito Bancario
  $scope.origen={observ:'',formapago:'', nombrebank:'Itaú', nrocta:'12345678901234567890', nombretitular:'Dina Osma', doctitular:'1234567',
  comprobantePago:''};

  //forma de pago GIRO
  $scope.origen.giro={observ:'',nrotlf: '+595-889-5343434', nombretitular:'Dina Osma', doctitular:'8594651'};
  $scope.destino={observ:''};
*/





/*
//version: 1 de la funcion
//OBTIENE valores para datos pago en origen
  $scope.setResumenOrigen = function() {
    var resumen = '';
    var formaPago = $scope.origen.formapago;
    //if (formaPago == 'DEP'){ //DEPOSITO BANCARIO
    console.log('forma de pago: ' + formaPago);
    console.log('1era letra de forma de pago: ' + formaPago.charAt(0));
    
    //TODO. terminar
    //$scope.origenFormaPago = $scope.getDatosBanco(formaPago);

    if (formaPago.charAt(0) == 'B'){//banco
      console.log('Forma de pago es banco. Hay que traer todos los datos del banco y mostrar');

      resumen += 'Banco:             ' + $scope.origen.nombrebank + '\n';
      resumen += 'Número de cuenta:  ' + $scope.origen.nrocta + '\n';
      resumen += 'Nombre de Titular: ' + $scope.origen.nombretitular + '\n';
      resumen += 'Cédula de Titular: ' + $scope.origen.doctitular;
    } else if (formaPago=='GTIGO' || formaPago=='GCLARO' || formaPago=='GPERS' || formaPago=='WU'){
      resumen += 'Número de Teléfono:   ' + $scope.origen.giro.nrotlf + '\n';
      resumen += 'Nombre de Titular:    ' + $scope.origen.giro.nombretitular + '\n';
      resumen += 'Documento de Titular: ' + $scope.origen.giro.doctitular;
    }
    $scope.origenResumen = resumen;
  };
  */



  


  /*
  var xprogreso = document.getElementById("progreso_pasos");
  console.log("xprogreso: " + xprogreso);
  console.log("paso: " + $scope.paso);
  console.log("progreso %: " + ($scope.paso* 20) );
  xprogreso.setAttribute("value", "" + ($scope.paso* 20) );
  */
  /*
  if ($scope.paso == 5){
    location.href = '#!/calcConfirm';
    return;
  }
  */
