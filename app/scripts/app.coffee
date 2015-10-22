angular.module('PaktorApp',
  ['ui.router', 'ngAnimate', 'ui.bootstrap', 'ngScrollSpy','debug'])
.config(($locationProvider)->
#  $locationProvider.html5Mode true
)
.controller('ModalVideoCtrl', ($uibModal)->
  @open = ->
    $uibModal.open
      templateUrl: 'myModalContent.html'
      controller: 'ModalVideoInstanceCtrl as videoInstance'
      size: 'lg'
  return
).controller('ModalVideoInstanceCtrl', ($modalInstance)->
  @close = -> $modalInstance.dismiss 'cancel'
  return
).controller('AnchorScrollCtrl', ($anchorScroll, $location)->
  @go = (hash) ->
    $location.hash hash
    $anchorScroll()
  return
)
.directive 'clickToTop', ->
  (scope, element)->
    element.on 'click', ->
      document.body.scrollTop = 0