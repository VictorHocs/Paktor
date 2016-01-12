angular.module('PaktorApp')
.config ($stateProvider, $urlRouterProvider)->
  $urlRouterProvider.otherwise('/home')
  $stateProvider
  .state('home', {
      url: '/home'
      templateUrl: 'view/in/home.html'
    }).state('about', {
      url: '/about'
      templateUrl: 'view/in/about.html',
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
      templateUrl: 'view/in/blog.html'
    }).state('gaigai', {
      url: '/gaigai'
      templateUrl: 'view/in/gaigai.html'
    }).state('career', {
      url: '/career'
      templateUrl: 'view/in/career.html'
    }).state('contact', {
      url: '/contact'
      templateUrl: 'view/in/contact.html'
    }).state('web_app', {
      url: '/web_app'
      templateUrl: 'view/in/web_app.html'
    }).state('term', {
      url: '/term'
      templateUrl: 'view/in/term.html'
    }).state('privacy', {
      url: '/privacy'
      templateUrl: 'view/in/privacy.html'
    }).state('faq', {
      url: '/faq'
      templateUrl: 'view/in/faq.html'
    }).state('download', {
      url: '/download'
      templateUrl: 'view/in/download.html'
    })

