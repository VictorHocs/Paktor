// Generated by CoffeeScript 1.9.1
(function() {
  angular.module('PaktorApp', ['ui.router', 'ngAnimate', 'ui.bootstrap', 'ngScrollSpy']).run(function($rootScope, $window) {
    return angular.element($window).on('resize scroll', function() {
      return $rootScope.$broadcast('resize');
    });
  }).config(function($locationProvider) {}).controller('ModalVideoCtrl', function($uibModal) {
    this.open = function() {
      return $uibModal.open({
        templateUrl: 'myModalContent.html',
        controller: 'ModalVideoInstanceCtrl as videoInstance',
        size: 'lg'
      });
    };
  }).controller('ModalVideoInstanceCtrl', function($modalInstance) {
    this.close = function() {
      return $modalInstance.dismiss('cancel');
    };
  }).directive('clickToTop', function() {
    return function(scope, element) {
      return element.on('click', function() {
        return document.body.scrollTop = 0;
      });
    };
  }).directive('inViewport', function($timeout) {
    return {
      scope: {
        isIn: '=inViewport',
        delay: '@'
      },
      link: function(scope, element) {
        var resize;
        resize = function() {
          var bottom, innerHeight, ref, top;
          ref = element[0].getBoundingClientRect(), top = ref.top, bottom = ref.bottom;
          innerHeight = window.innerHeight || document.documentElement.clientHeight;
          scope.isIn = top < innerHeight && bottom > 0;
          return scope.$apply();
        };
        $timeout(resize, scope.delay ? scope.delay * 1 : 1000);
        return scope.$on('resize', resize);
      }
    };
  }).directive('fitInWin', function($timeout) {
    return function(scope, element) {
      var resize;
      resize = function() {
        if (scope.tick) {
          $timeout.cancel(scope.tick);
        }
        return scope.tick = $timeout(function() {
          var height, innerHeight;
          height = element[0].getBoundingClientRect().height;
          innerHeight = window.innerHeight || document.documentElement.clientHeight;
          if (height < innerHeight) {
            return console.log('enlarge...');
          }
        }, 1000);
      };
      resize();
      return scope.$on('resize', resize);
    };
  });

}).call(this);

//# sourceMappingURL=app.js.map
