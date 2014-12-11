angular.module('SeasonsApp')

.config(function($stateProvider, $urlRouterProvider, $locationProvider){

  $locationProvider.html5Mode({enabled:true, requireBase:true});

  // $urlRouterProvider.otherwise('/');

  $stateProvider
    .state('home', {
      url: '/',
      templateUrl: 'home.html',
      controller: 'HomeController'
    })    

    .state('day', {
      url: '/day',
      templateUrl: 'day.html',
      controller: 'HomeController'
    })    

    .state('night', {
      url: '/night',
      templateUrl: 'night.html',
      controller: 'HomeController'
    })

    .state('about', {
      abstract: true,
      url: '/about',
      templateUrl: 'about/layout.html'
    })

      .state('about.main', {
        url: '',
        templateUrl: 'about/main.html'
      })

      .state('about.jen', {
        url: '/jen',
        templateUrl: 'about/jen.html'
      })

      .state('about.randy', {
        url: '/randy',
        templateUrl: 'about/randy.html'
      })

      .state('about.steph', {
        url: '/steph',
        templateUrl: 'about/steph.html'
      });

});