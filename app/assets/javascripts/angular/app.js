angular.module('SeasonsApp', ['ui.router', 'templates', 'ngAnimate'])

.config(function($stateProvider, $urlRouterProvider){

  $urlRouterProvider.otherwise('/');

  $stateProvider
    .state('home', {
      url: '/',
      templateUrl: 'home.html',
      controller: 'HomeController'
    })

    .state('dashboard', {
      abstract: true,
      url: '/dashboard',
      templateUrl: 'dashboard/layout.html'
    })

      .state('dashboard.one', {
        url: '',
        templateUrl: 'dashboard/one.html'
      })

      .state('dashboard.two', {
        url: '/two',
        templateUrl: 'dashboard/two.html'
      })

      .state('dashboard.three', {
        url: '/three',
        templateUrl: 'dashboard/three.html'
      });

});