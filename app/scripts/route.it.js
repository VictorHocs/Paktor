// Generated by CoffeeScript 1.9.1
(function() {
  angular.module('PaktorApp').config(function($stateProvider, $urlRouterProvider) {
    $urlRouterProvider.otherwise('/home');
    return $stateProvider.state('home', {
      url: '/home',
      templateUrl: 'view/it/home.html'
    }).state('about', {
      url: '/about',
      templateUrl: 'view/it/about.html',
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
      templateUrl: 'view/it/blog.html'
    }).state('gaigai', {
      url: '/gaigai',
      templateUrl: 'view/it/gaigai.html'
    }).state('career', {
      url: '/career',
      templateUrl: 'view/it/career.html'
    }).state('contact', {
      url: '/contact',
      templateUrl: 'view/it/contact.html'
    }).state('web_app', {
      url: '/web_app',
      templateUrl: 'view/it/web_app.html'
    }).state('term', {
      url: '/term',
      templateUrl: 'view/it/term.html'
    }).state('privacy', {
      url: '/privacy',
      templateUrl: 'view/it/privacy.html'
    }).state('faq', {
      url: '/faq',
      templateUrl: 'view/it/faq.html'
    }).state('download', {
      url: '/download',
      templateUrl: 'view/it/download.html'
    });
  });

}).call(this);

//# sourceMappingURL=route.it.js.map
