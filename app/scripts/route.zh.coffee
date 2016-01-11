angular.module('PaktorApp')
.config ($stateProvider, $urlRouterProvider)->
  $urlRouterProvider.otherwise('/home')
  $stateProvider
  .state('home', {
      url: '/home'
      templateUrl: 'view/zh/home.html'
    }).state('about', {
      url: '/about'
      templateUrl: 'view/zh/about.html',
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
      templateUrl: 'view/zh/blog.html'
    }).state('gaigai', {
      url: '/gaigai'
      templateUrl: 'view/zh/gaigai.html'
    }).state('career', {
      url: '/career'
      templateUrl: 'view/zh/career.html'
    }).state('contact', {
      url: '/contact'
      templateUrl: 'view/zh/contact.html'
    }).state('web_app', {
      url: '/web_app'
      templateUrl: 'view/zh/web_app.html'
    }).state('term', {
      url: '/term'
      templateUrl: 'view/zh/term.html'
    }).state('privacy', {
      url: '/privacy'
      templateUrl: 'view/zh/privacy.html'
    }).state('faq', {
      url: '/faq'
      templateUrl: 'view/zh/faq.html'
    }).state('download', {
      url: '/download'
      templateUrl: 'view/zh/download.html'
    })

