angular.module('PaktorApp')
.config ($stateProvider, $urlRouterProvider)->
  $urlRouterProvider.otherwise('/home')
  $stateProvider
  .state('home', {
      url: '/home'
      templateUrl: 'view/th/home.html'
    }).state('about', {
      url: '/about'
      templateUrl: 'view/th/about.html',
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
      templateUrl: 'view/th/blog.html'
    }).state('gaigai', {
      url: '/gaigai'
      templateUrl: 'view/th/gaigai.html'
    }).state('career', {
      url: '/career'
      templateUrl: 'view/th/career.html'
    }).state('contact', {
      url: '/contact'
      templateUrl: 'view/th/contact.html'
    }).state('web_app', {
      url: '/web_app'
      templateUrl: 'view/th/web_app.html'
    }).state('term', {
      url: '/term'
      templateUrl: 'view/th/term.html'
    }).state('privacy', {
      url: '/privacy'
      templateUrl: 'view/th/privacy.html'
    }).state('faq', {
      url: '/faq'
      templateUrl: 'view/th/faq.html'
    }).state('download', {
      url: '/download'
      templateUrl: 'view/th/download.html'
    })

