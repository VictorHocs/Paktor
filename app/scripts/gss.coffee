angular.module('PaktorApp',
  ['ngAnimate', 'ui.bootstrap'])
.controller('ModalCtrl', ($uibModal,$rootScope)->
  @open = (url,link)->
    $rootScope.url = url
    $rootScope.link = link
    $uibModal.open
      templateUrl: 'myModalContent.html'
      controller: 'ModalInstanceCtrl as instance'
      size: '500'
  return
).controller('ModalInstanceCtrl', ($modalInstance)->
  @close = -> $modalInstance.dismiss 'cancel'
  return
)