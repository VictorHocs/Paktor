angular.module('PaktorApp')
.config ($stateProvider, $urlRouterProvider)->
  $urlRouterProvider.otherwise("/about")
  $stateProvider
  .state('about', {
      url: '/about'
      templateUrl: '/about.html'
    })

