'use strict';

angular.module('myApp.calc', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/calc', {
    templateUrl: 'calc/index.html',
    controller: 'ctrlCalc'
  });
}])

//valores posibles de modo: CALC, PAGO
.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/calc/:modopago', {
    templateUrl: 'calc/pago.html',
    controller: 'ctrlCalcPago'
  });
}])

/*
//OPCION NO USADA AHORA
.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/calcConfirm', {
    templateUrl: 'calc/confirmar.html',
    controller: 'ctrlCalcConfirm'
  });
}])
*/

//directiva para auto-enfocar un input
.directive('autoFocus', function($timeout) {
  return {
    restrict: 'A',
    link: function (scope, element, attrs) {
          /*
            attrs.$observe("autoFocus", function(newValue){
                if (newValue === "true")
                    $timeout(function(){element.focus()});
            });
            */
            $timeout(function() {
          // use a timout to foucus outside this digest cycle!
              element[0].focus(); //use focus function instead of autofocus attribute to avoid cross browser problem. And autofocus should only be used to mark an element to be focused when page loads.
            }, 0);
          }
        };
      })


//directiva para manejo de input tipo montos
.directive('blurToCurrency', function($filter){
  return {
    scope: {
      amount  : '='
    },
    link: function(scope, el, attrs){
      el.val($filter('comma2decimal')($filter('currency')(scope.amount, "", 0)));

      el.bind('focus', function(){
        el.val(scope.amount);
      });

      el.bind('input', function(){
        scope.amount = el.val();
        scope.$apply();
      });
      el.bind('change', function(){
        el.val($filter('comma2decimal')($filter('currency')(scope.amount, "", 0)));
        $('.monto_format').each(function(i, obj) {
          $(obj).val($filter('comma2decimal')($filter('currency')($(obj).val().replace(/\./g, ''), "", 0)));
        });
      });

      el.bind('blur', function(){
        el.val($filter('comma2decimal')($filter('currency')(scope.amount, "", 0)));
      });
    }
  }
}).filter('comma2decimal', [
function() {
  return function(input) {
    var ret=(input)?input.toString().replace(/,/g, "."):null;
    return ret;
  };
}
])


//ctrl que maneja los datos de calculadora, o sea la solicitud de remesa
.controller('ctrlCalc', ['$scope', '$http', function($scope, $http) {

  //carga lista de paises para poblar el select
  $scope.cargarPaises = function () {
    console.log('controlador:calc. funcion: cargarPaises. start');
    $http.get("./paises/list_short.php")
    .then(function (response) {
      $scope.lista_paises = response.data.records;
      console.log($scope.lista_paises);
    },
    function(data, status) {
      console.error('Error en SERVICIO de consulta de cargar lista Paises. ', status, data);
      $scope.msg = "Error consultando datos: SERVICIO de consulta de cargar lista Paises";
    })
    console.log('controlador:calc. funcion: cargarPaises. end');
  };


//carga lista de bancos, para poblar select
$scope.cargarBancosDestino = function () {
  var paisDestino = '';
  if ($scope.data.cod_pais2 == 'VEN')
    paisDestino = 'banks_vzla';
  else
    ;//TODO. pendiente. considerar otros paises

  $http.get("./bancos/list_short_vzla.php")
  .then(function (response) {
    $scope.lista_bancos = response.data.records;
    console.log($scope.lista_bancos);
  },
  function(data, status) {
    console.error('Error en SERVICIO consulta lista_bancos. ', status, data);
    $scope.msg = "Error consultando datos: SERVICIO de consulta de lista_bancos";
  });
}

//setea valores de data por defecto
$scope.initData = function() {
    //valores de compra/venta dolar usando BTC
    var limites_montos_Gs = {min:18000, max:3000000};
    var limites_montos_Bs = {min:25000, max:2000000};
    $scope.main = {id:"",
    nombre_pais1:"Paraguay",  cod_pais1:"PAR", cod_moneda1:"PYG",  simbolo_moneda1:"Gs.",  monto1: limites_montos_Gs['min'],
    nombre_pais2:"Venezuela", cod_pais2:"VEN", cod_moneda2:"VES" , simbolo_moneda2:"Bs.",   monto2: limites_montos_Bs['min']
  };
  $scope.data = angular.copy($scope.main);

  $scope.user={observ:''};
  //TODO. sacar la variable formapago del arreglo, usar variable simple
  $scope.origen={observ:'',formapago:'DEP', nombrebank:'Itaú', nrocta:'12345678901234567890', nombretitular:'Dina Osma', cedtitular:'1234567',
  comprobantePago:''};

  $scope.origen.giro={observ:'',nrotlf: '+595-889-5343434', nombretitular:'Dina Osma', cedtitular:'8594651'};
  $scope.destino={observ:''};
};

$scope.setResumenOrigen = function() {
  var resumen = '';
  var formaPago = $scope.origen.formapago;
  if (formaPago == 'DEP'){
    resumen += 'Banco:             ' + $scope.origen.nombrebank + '\n';
    resumen += 'Número de cuenta:  ' + $scope.origen.nrocta + '\n';
    resumen += 'Nombre de Titular: ' + $scope.origen.nombretitular + '\n';
    resumen += 'Cédula de Titular: ' + $scope.origen.cedtitular;
  }else if (formaPago=='GTIGO' || formaPago=='GCLARO' || formaPago=='GPERS'){
    resumen += 'Número de Teléfono:   ' + $scope.origen.giro.nrotlf + '\n';
    resumen += 'Nombre de Titular:    ' + $scope.origen.giro.nombretitular + '\n';
    resumen += 'Documento de Titular: ' + $scope.origen.giro.cedtitular;
  }
  $scope.origenResumen = resumen;
};

//TODO. obtiene nombre de pais, dado su codigo
//usar variable lista_paises
$scope.getNombrePais = function() {
  var paises = {PAR:'Paraguay', VEN:'Venezuela', URU:'Uruguay', ARG: Argentina};
  var nombrePais1 = paises[$scope.data.cod_pais1];
}


//TODO. debe obtener lista de  tasas de cambio entre monedas mediante API's o consultas en BD
$scope.setTasasCambio = function() {
    //$scope.factoresCambio = {{'GS','BS', 2}}; //calcular
    $scope.tasas_cambio_dolar = {
      //valor en Gs, al comprar BTC, equivalente a 1 dolar
      Gs_BTC_compra: 6007.00, //6472.06 tasa cuando comence a programar este modulo, usando btc
      //valor en Bs, por vender el equivalente de 1 dolar, usando BTC
      BTC_Bs_venta: 13009.55 //ref localbitcoin usano api de dollartoday
       //10658.55 tasa cuando comence a programar este modulo, usando btc
    };
  };

//calcula de monto1 basado en monto2 y en tasas de cambio, segun la formula
//monto2 = monto1 / (valor de 1$ en Gs) * (Valor de 1$ en Bs)
$scope.calcular2 = function() {
 var monto2= $scope.data.monto1 / $scope.tasas_cambio_dolar['Gs_BTC_compra'] * $scope.tasas_cambio_dolar['BTC_Bs_venta'];
 $scope.data.monto2 = monto2.toFixed(2); //TODO. aplicar round a 2 decimales. $filter('number')(monto2, 2);

 console.log('controlador:calc. monto1=' + $scope.monto1);
 console.log('controlador:calc. monto2=' + monto2);
 console.log('controlador:calc. monto2='+$scope.data.monto2);
};

//calcula de monto2 basado en monto1 y en tasas de cambio
$scope.calcular1 = function() {
  var monto1 = $scope.data.monto2 * $scope.tasas_cambio_dolar['Gs_BTC_compra'] / $scope.tasas_cambio_dolar['BTC_Bs_venta'];
  $scope.data.monto1 = monto1.toFixed(2);
  console.log('controlador:calc. monto1='+$scope.data.monto1);
};

  //calcula monto equivalente en USD, basado en monto origen
//monto3 = monto1 / (valor de 1$ comprado con moneda de origen)
$scope.calcular3 = function() {
 var monto3= $scope.data.monto1 / $scope.tasas_cambio_dolar['Gs_BTC_compra'];
 $scope.data.monto3 = monto3.toFixed(2); //TODO. aplicar round a 2 decimales. $filter('number')(monto2, 2);

 console.log('controlador:calc. monto USD=' + $scope.data.monto3);
};

//incremente variable 'paso', para que pase al siguiente vista/formulario
$scope.goNext = function (){
  $scope.paso += 1;
  /*
  if ($scope.paso == 5){
    location.href = '#!/calcConfirm';
    return;
  }
  */
};

//confirmar y grabar data
$scope.confirm = function() {
    $scope.dataSave = $scope.armarDataParaGuardar();
    $scope.save();
    //TODO. digirir al usuario a otra pagina para confirmar, o solo mostrar mensaje con popup
    //TODO. enviar correo de notificacion al usuario, y al operador
}


//setea valores de data para guardar
$scope.armarDataParaGuardar = function() {
  var dataSave = $scope.data;
  dataSave.user = $scope.user;
  dataSave.origen = $scope.origen;
  dataSave.destino = $scope.destino;
  dataSave.tasa_origen = $scope.tasas_cambio_dolar['Gs_BTC_compra'];
  dataSave.tasa_destino = $scope.tasas_cambio_dolar['BTC_Bs_venta'];

  console.log('$scope.dataSave: ' + dataSave);
  return dataSave;
};

//grabar data
$scope.save = function() {
  console.log('controlador -calc- funcion: save -inicio');
  var metodo = "";

  //TODO. validar datos a guardar
  if ($scope.data.id != null && $scope.data.id != "" && $scope.data.id != 0 ){
    metodo = "update";
    $scope.update();
  }else{
    metodo = "insert";
    $scope.insert();
  }
  console.log('controlador -calc- funcion: save - fin');
}//save

/*funcion para guardar data*/
  //TODO. arreglar mensajes de error y exito
  $scope.insert = function() {
    console.log('controlador-calc- funcion:insert - inicio');
    $http.post('./calc/insert_transaccion.php', JSON.stringify($scope.dataSave))
    .then(function (response) {
      debugger;
      //+$scope.showErrorNotFound = false;
      if (response.data){
        var dataResp = response.data.records[0];
        if(dataResp.resultado != null)
          if(dataResp.resultado == 'EXITO'){
            $scope.msg = "Datos registrados con Exito!";
            //+$scope.mostrarExito = true;
            //+$scope.showError = false;
          }else if(dataResp.resultado == 'ERROR'){
            $scope.msg = '\n' + data.mensaje;
            //+$scope.showError = true;
            //+$scope.mostrarExito = false;
          }
        }
      }, function (response) {
        $scope.msg = "Ups. Hubo un error al intentar registrar la Informacion: Service not Exists";
        $scope.statusval = response.status;
        $scope.statustext = response.statusText;
          //$scope.headers = response.headers();
          $scope.mostrarError = true;
          $scope.mostrarExito = false;
        });
    console.log('controlador-calc- funcion:insert - fin');
  };//insert

//decremente variable paso, para que vista cambia a siguiente
$scope.goBack = function (){
  $scope.paso -= 1;
};


/*TODO
  //captura parametro - modo operacion
  $scope.capturarParametro = function(){
    $scope.codigo = $routeParams.codigo;
    console.log('codigo: ' + $scope.codigo);
    //TODO. validar parametro codigo:
    //que no sea vacio, solo que tenga caracteres validos, longitud, no comience con un nro,etc...
  }
  */

  $scope.init_function = function(){
    console.log('controlador -calculadora- init_function. inicio');
    $scope.saludo = "Saludo desde CTRL CALCULADORA";

    $scope.modo = 'CALC';
    $scope.initData();
    $scope.cargarPaises();
    $scope.cargarBancosDestino();
    $scope.setTasasCambio();
    $scope.calcular2();
    $scope.calcular3();
    $scope.setResumenOrigen();
    $scope.paso = 1;


/*TODO. agregar parametro que indica el modo: CALC, PAGO
    $scope.capturarParametro();
    if($scope.modo == 'CALC'){
      console.log('opcion CALC');
      $scope.initData();
    }else{
      //$scope.showData();
    }
    */
    console.log('controlador -ciudad- init_function. fin');
  }

  //INICIO CONTROLADOR
  $scope.init_function();
}]);

//TODO. mejor crear otra vista y ctrl, para manejar la pantalla cuando sea modo PAGO
//eliminando el uso de la variable modo
//asi la programacion sera mas sencilla
