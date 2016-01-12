angular.module('PaktorApp')
.config ($stateProvider, $urlRouterProvider)->
  $urlRouterProvider.otherwise('/home')
  $stateProvider
  .state('home', {
      url: '/home'
      templateUrl: 'view/it/home.html'
    }).state('about', {
      url: '/about'
      templateUrl: 'view/it/about.html',
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
      templateUrl: 'view/it/blog.html'
    }).state('gaigai', {
      url: '/gaigai'
      templateUrl: 'view/it/gaigai.html'
    }).state('career', {
      url: '/career'
      templateUrl: 'view/it/career.html'
    }).state('contact', {
      url: '/contact'
      templateUrl: 'view/it/contact.html'
    }).state('web_app', {
      url: '/web_app'
      templateUrl: 'view/it/web_app.html'
    }).state('term', {
      url: '/term'
      templateUrl: 'view/it/term.html'
    }).state('privacy', {
      url: '/privacy'
      templateUrl: 'view/it/privacy.html'
    }).state('faq', {
      url: '/faq'
      templateUrl: 'view/it/faq.html'
    }).state('download', {
      url: '/download'
      templateUrl: 'view/it/download.html'
    })

