angular.module('PaktorApp',
  ['ui.router','ngAnimate','ui.bootstrap'])
.config(($locationProvider)->
  $locationProvider.html5Mode true
)
.controller('ModalVideoCtrl', ($uibModal)->
  @open = ->
    $uibModal.open
      templateUrl: 'myModalContent.html'
      controller:'ModalVideoInstanceCtrl as videoInstance'
      size: 'lg'
  return
).controller('ModalVideoInstanceCtrl', ($modalInstance)->
  @close = -> $modalInstance.dismiss 'cancel'
  return
)
