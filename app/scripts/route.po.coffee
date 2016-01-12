angular.module('PaktorApp')
.config ($stateProvider, $urlRouterProvider)->
  $urlRouterProvider.otherwise('/home')
  $stateProvider
  .state('home', {
      url: '/home'
      templateUrl: 'view/po/home.html'
    }).state('about', {
      url: '/about'
      templateUrl: 'view/po/about.html',
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
      templateUrl: 'view/po/blog.html'
    }).state('gaigai', {
      url: '/gaigai'
      templateUrl: 'view/po/gaigai.html'
    }).state('career', {
      url: '/career'
      templateUrl: 'view/po/career.html'
    }).state('contact', {
      url: '/contact'
      templateUrl: 'view/po/contact.html'
    }).state('web_app', {
      url: '/web_app'
      templateUrl: 'view/po/web_app.html'
    }).state('term', {
      url: '/term'
      templateUrl: 'view/po/term.html'
    }).state('privacy', {
      url: '/privacy'
      templateUrl: 'view/po/privacy.html'
    }).state('faq', {
      url: '/faq'
      templateUrl: 'view/po/faq.html'
    }).state('download', {
      url: '/download'
      templateUrl: 'view/po/download.html'
    })

