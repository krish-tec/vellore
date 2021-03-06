var app = angular.module('app', ['ui.router']);

app.config(['$urlRouterProvider', '$stateProvider', function($urlRouterProvider, $stateProvider) {
  
  $urlRouterProvider.otherwise('/');
  
  $stateProvider
    .state('login', {
      url:'/',
      templateUrl: 'login.html',
      controller:'loginController'
    })
    .state('home', {
      url:'/home',
      templateUrl: 'home.html'
    })
    .state('home.dashboard', {
      url:'/dashboard',
      templateUrl: 'home.dashboard.html',
      controller: 'dashboardController'
    })
    .state('home.report', {
      url:'/report',
      templateUrl: 'home.report.html',
      controller: 'reportController'
    })
    .state('home.addon', {
      url:'/addon',
      templateUrl: 'home.addon.html'
    });
}]);