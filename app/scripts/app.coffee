angular.module('PaktorApp',
  ['ui.router', 'ngAnimate', 'ui.bootstrap', 'ngScrollSpy'])
.run(($rootScope, $window)->
  angular.element($window).on 'resize scroll', ->
    $rootScope.$broadcast 'resize'
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
)
.directive('clickToTop', ->
  (scope, element)->
    element.on 'click', ->
      document.body.scrollTop = 0
).directive('inViewport', ($timeout)->
  scope:
    isIn: '=inViewport'
    delay: '@'
  link: (scope, element)->
    resize = ->
      {top,bottom} = element[0].getBoundingClientRect()
      innerHeight = window.innerHeight or document.documentElement.clientHeight
      scope.isIn = top < innerHeight and bottom > 0
      scope.$apply()
    $timeout resize, if scope.delay then scope.delay * 1 else 1000
    scope.$on 'resize', resize
).directive('fitInWin', ($timeout)->
  (scope, element)->
    resize = ->
      $timeout.cancel scope.tick if scope.tick
      scope.tick = $timeout ->
        {height} = element[0].getBoundingClientRect()
        innerHeight = window.innerHeight or document.documentElement.clientHeight
        if height < innerHeight
          console.log 'enlarge...'
      , 1000
    resize()
    scope.$on 'resize', resize
)

