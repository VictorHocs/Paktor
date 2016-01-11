// Generated by CoffeeScript 1.9.1
(function() {
  angular.module('PaktorApp').config(function($stateProvider, $urlRouterProvider) {
    $urlRouterProvider.otherwise('/home');
    return $stateProvider.state('home', {
      url: '/home',
      templateUrl: 'view/zh/home.html'
    }).state('about', {
      url: '/about',
      templateUrl: 'view/zh/about.html',
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
      templateUrl: 'view/zh/blog.html'
    }).state('gaigai', {
      url: '/gaigai',
      templateUrl: 'view/zh/gaigai.html'
    }).state('career', {
      url: '/career',
      templateUrl: 'view/zh/career.html'
    }).state('contact', {
      url: '/contact',
      templateUrl: 'view/zh/contact.html'
    }).state('web_app', {
      url: '/web_app',
      templateUrl: 'view/zh/web_app.html'
    }).state('term', {
      url: '/term',
      templateUrl: 'view/zh/term.html'
    }).state('privacy', {
      url: '/privacy',
      templateUrl: 'view/zh/privacy.html'
    }).state('faq', {
      url: '/faq',
      templateUrl: 'view/zh/faq.html'
    }).state('download', {
      url: '/download',
      templateUrl: 'view/zh/download.html'
    });
  });

}).call(this);

//# sourceMappingURL=route.zh.js.map
