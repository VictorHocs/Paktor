angular.module('PaktorApp',
  ['ui.router', 'ngAnimate', 'ui.bootstrap', 'ngScrollSpy', 'debug'])
.run(($rootScope, $window)->
  angular.element($window).on 'resize scroll', ->
    $rootScope.$broadcast 'animate'
)
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
.directive('clickToTop', ->
  (scope, element)->
    element.on 'click', ->
      document.body.scrollTop = 0
).directive('animateEffect', ->
  (scope, element)->
    scope.$on 'animate', ->
      {top,bottom} = element[0].getBoundingClientRect()
      innerHeight = window.innerHeight or document.documentElement.clientHeight
      scope.isElementInViewport = top < innerHeight and bottom > 0
      scope.$apply();
)
