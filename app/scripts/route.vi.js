// Generated by CoffeeScript 1.9.1
(function() {
  angular.module('PaktorApp').config(function($stateProvider, $urlRouterProvider) {
    $urlRouterProvider.otherwise('/home');
    return $stateProvider.state('home', {
      url: '/home',
      templateUrl: 'view/vi/home.html'
    }).state('about', {
      url: '/about',
      templateUrl: 'view/vi/about.html',
      controller: function($scope, $location, $anchorScroll) {
        $scope.showMore = function() {
          if (!$scope.p1) {
            return $scope.p1 = 1;
          } else {
            return $scope.p2 = 1;
          }
        };
        return $scope.go = function(hash) {
          $location.hash(hash);
          return $anchorScroll();
        };
      }
    }).state('blog', {
      url: '/blog',
      templateUrl: 'view/vi/blog.html'
    }).state('gaigai', {
      url: '/prime',
      templateUrl: 'view/vi/prime.html'
    }).state('career', {
      url: '/career',
      templateUrl: 'view/vi/career.html'
    }).state('contact', {
      url: '/contact',
      templateUrl: 'view/vi/contact.html'
    }).state('web_app', {
      url: '/web_app',
      templateUrl: 'view/vi/web_app.html'
    }).state('term', {
      url: '/term',
      templateUrl: 'view/vi/term.html'
    }).state('privacy', {
      url: '/privacy',
      templateUrl: 'view/vi/privacy.html'
    }).state('faq', {
      url: '/faq',
      templateUrl: 'view/vi/faq.html'
    }).state('download', {
      url: '/download',
      templateUrl: 'view/vi/download.html'
    });
  });

}).call(this);

//# sourceMappingURL=route.vi.js.map
