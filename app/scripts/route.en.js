// Generated by CoffeeScript 1.12.7
(function() {
  angular.module('PaktorApp').config(function($stateProvider, $urlRouterProvider) {
    $urlRouterProvider.otherwise('/home');
    return $stateProvider.state('home_pre', {
      url: '/home_pre',
      templateUrl: 'view/en/home_pre.html'
    }).state('home', {
      url: '/home',
      templateUrl: 'view/en/home.html'
    }).state('about', {
      url: '/about',
      templateUrl: 'view/en/about.html',
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
      templateUrl: 'view/en/blog.html'
    }).state('gaigai', {
      url: '/gaigai',
      templateUrl: 'view/en/gaigai.html'
    }).state('career', {
      url: '/career',
      templateUrl: 'view/en/career.html',
      controller: function($scope, $location, $anchorScroll) {
        return $scope.go = function(hash) {
          $location.hash(hash);
          return $anchorScroll();
        };
      }
    }).state('contact', {
      url: '/contact',
      templateUrl: 'view/en/contact.html'
    }).state('web_app', {
      url: '/web_app',
      templateUrl: 'view/en/web_app.html'
    }).state('term', {
      url: '/term',
      templateUrl: 'view/en/term.html'
    }).state('privacy', {
      url: '/privacy',
      templateUrl: 'view/en/privacy.html'
    }).state('faq', {
      url: '/faq',
      templateUrl: 'view/en/faq.html'
    }).state('download', {
      url: '/download',
      templateUrl: 'view/en/download.html'
    }).state('stories', {
      url: '/stories',
      templateUrl: 'view/en/stories.html'
    }).state('labs', {
      url: '/labs',
      templateUrl: 'view/en/labs.html'
    });
  });

}).call(this);

//# sourceMappingURL=route.en.js.map
