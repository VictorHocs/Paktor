angular.module('PaktorApp',
  ['ui.router','ngAnimate','ui.bootstrap'])
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