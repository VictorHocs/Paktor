angular.module('PaktorApp')
.config ($stateProvider, $urlRouterProvider)->
  $urlRouterProvider.otherwise('/home')
  $stateProvider
  .state('home', {
      url: '/home'
      templateUrl: 'view/vi/home.html'
    }).state('about', {
      url: '/about'
      templateUrl: 'view/vi/about.html',
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
      templateUrl: 'view/vi/blog.html'
    }).state('gaigai', {
      url: '/gaigai'
      templateUrl: 'view/vi/gaigai.html'
    }).state('career', {
      url: '/career'
      templateUrl: 'view/vi/career.html'
    }).state('contact', {
      url: '/contact'
      templateUrl: 'view/vi/contact.html'
    }).state('web_app', {
      url: '/web_app'
      templateUrl: 'view/vi/web_app.html'
    }).state('term', {
      url: '/term'
      templateUrl: 'view/vi/term.html'
    }).state('privacy', {
      url: '/privacy'
      templateUrl: 'view/vi/privacy.html'
    }).state('faq', {
      url: '/faq'
      templateUrl: 'view/vi/faq.html'
    }).state('download', {
      url: '/download'
      templateUrl: 'view/vi/download.html'
    })

