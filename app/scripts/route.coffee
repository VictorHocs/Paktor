angular.module('PaktorApp')
.config ($stateProvider, $urlRouterProvider)->
  $urlRouterProvider.otherwise('/home')
  $stateProvider
  .state('home', {
      url: '/home'
      templateUrl: 'view/home.html'
      controller: 'AnchorScrollCtrl'
      controllerAs: 'anchor'
    }).state('about', {
      url: '/about'
      templateUrl: 'view/about.html',
      controller: ($scope)->
        $scope.showMore = ->
          if !$scope.p1
            $scope.p1 = 1
          else
            $scope.p2 = 1
    }).state('blog', {
      url: '/blog'
      templateUrl: 'view/blog.html'
    }).state('gaigai', {
      url: '/gaigai'
      templateUrl: 'view/gaigai.html'
    }).state('career', {
      url: '/career'
      templateUrl: 'view/career.html'
    }).state('contact', {
      url: '/contact'
      templateUrl: 'view/contact.html'
    }).state('web_app', {
      url: '/web_app'
      templateUrl: 'view/web_app.html'
    }).state('term', {
      url: '/term'
      templateUrl: 'view/term.html'
    }).state('privacy', {
      url: '/privacy'
      templateUrl: 'view/privacy.html'
    }).state('download', {
      url: '/download'
      templateUrl: 'view/download.html'
    })

