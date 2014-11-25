alert("the world needs more lerts");
angular.module('SeasonsApp')

.config(function($stateProvider, $urlRouterProvider, $locationProvider){

  // $httpProvider.defaults.withCredentials = true;
  // $httpProvider.defaults.useXDomain = true;
  // delete $httpProvider.defaults.headers.common['X-Requested-With'];


  $locationProvider.html5Mode({enabled:true, requireBase:true});

  $urlRouterProvider.otherwise('/');

  $stateProvider
    .state('home', {
      url: '/',
      templateUrl: 'home.html',
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