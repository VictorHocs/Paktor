angular.module('PaktorApp')
.config ($stateProvider, $urlRouterProvider)->
  $urlRouterProvider.otherwise('/home')
  $stateProvider
  .state('home', {
      url: '/home'
      templateUrl: 'view/ko/home.html'
    }).state('about', {
      url: '/about'
      templateUrl: 'view/ko/about.html',
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
      templateUrl: 'view/ko/blog.html'
    }).state('gaigai', {
      url: '/gaigai'
      templateUrl: 'view/ko/gaigai.html'
    }).state('career', {
      url: '/career'
      templateUrl: 'view/ko/career.html'
    }).state('contact', {
      url: '/contact'
      templateUrl: 'view/ko/contact.html'
    }).state('web_app', {
      url: '/web_app'
      templateUrl: 'view/ko/web_app.html'
    }).state('term', {
      url: '/term'
      templateUrl: 'view/ko/term.html'
    }).state('privacy', {
      url: '/privacy'
      templateUrl: 'view/ko/privacy.html'
    }).state('faq', {
      url: '/faq'
      templateUrl: 'view/ko/faq.html'
    }).state('download', {
      url: '/download'
      templateUrl: 'view/ko/download.html'
    })

