angular.module('PaktorApp')
.config ($stateProvider, $urlRouterProvider)->
  $urlRouterProvider.otherwise('/home')
  $stateProvider
  .state('home', {
      url: '/home'
      templateUrl: 'view/ms/home.html'
    }).state('about', {
      url: '/about'
      templateUrl: 'view/ms/about.html',
      controller: ($scope, $location, $anchorScroll)->
        $scope.showMore = ->
          if !$scope.p1
            $scope.p1 = 1
          else
            $scope.p2 = 1
        $scope.go = (hash) ->
          $location.hash hash
          $anchorScroll()
    }).state('blog', {
      url: '/blog'
      templateUrl: 'view/ms/blog.html'
    }).state('gaigai', {
      url: '/gaigai'
      templateUrl: 'view/ms/gaigai.html'
    }).state('career', {
      url: '/career'
      templateUrl: 'view/ms/career.html'
    }).state('contact', {
      url: '/contact'
      templateUrl: 'view/ms/contact.html'
    }).state('web_app', {
      url: '/web_app'
      templateUrl: 'view/ms/web_app.html'
    }).state('term', {
      url: '/term'
      templateUrl: 'view/ms/term.html'
    }).state('privacy', {
      url: '/privacy'
      templateUrl: 'view/ms/privacy.html'
    }).state('faq', {
      url: '/faq'
      templateUrl: 'view/ms/faq.html'
    }).state('download', {
      url: '/download'
      templateUrl: 'view/ms/download.html'
    })

