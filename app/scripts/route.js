// Generated by CoffeeScript 1.9.1
(function() {
  angular.module('PaktorApp').config(function($stateProvider, $urlRouterProvider) {
    $urlRouterProvider.otherwise('/home');
    return $stateProvider.state('home', {
      url: '/home',
      templateUrl: 'view/home.html'
    }).state('about', {
      url: '/about',
      templateUrl: 'view/about.html'
    }).state('blog', {
      url: '/blog',
      templateUrl: 'view/blog.html'
    }).state('gaigai', {
      url: '/gaigai',
      templateUrl: 'view/gaigai.html'
    }).state('career', {
      url: '/career',
      templateUrl: 'view/career.html'
    }).state('contact', {
      url: '/contact',
      templateUrl: 'view/contact.html'
    }).state('web_app', {
      url: '/web_app',
      templateUrl: 'view/web_app.html'
    }).state('term', {
      url: '/term',
      templateUrl: 'view/term.html'
    });
  });

}).call(this);

//# sourceMappingURL=route.js.map
