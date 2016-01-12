angular.module('PaktorApp')
.config ($stateProvider, $urlRouterProvider)->
  $urlRouterProvider.otherwise('/home')
  $stateProvider
  .state('home', {
      url: '/home'
      templateUrl: 'view/ge/home.html'
    }).state('about', {
      url: '/about'
      templateUrl: 'view/ge/about.html',
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
      templateUrl: 'view/ge/blog.html'
    }).state('gaigai', {
      url: '/gaigai'
      templateUrl: 'view/ge/gaigai.html'
    }).state('career', {
      url: '/career'
      templateUrl: 'view/ge/career.html'
    }).state('contact', {
      url: '/contact'
      templateUrl: 'view/ge/contact.html'
    }).state('web_app', {
      url: '/web_app'
      templateUrl: 'view/ge/web_app.html'
    }).state('term', {
      url: '/term'
      templateUrl: 'view/ge/term.html'
    }).state('privacy', {
      url: '/privacy'
      templateUrl: 'view/ge/privacy.html'
    }).state('faq', {
      url: '/faq'
      templateUrl: 'view/ge/faq.html'
    }).state('download', {
      url: '/download'
      templateUrl: 'view/ge/download.html'
    })

