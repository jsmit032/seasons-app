angular.module('SeasonsApp')

// .controller('HomeController', function($scope) {
//   $scope.things = ['hello', 'this', 'is', 'dug'];
// });

// .controller('HomeController', function($scope, weatherapi) {
//   weatherapi.getWeather()
//   .then(function(data) {
//     $scope.weather = data.data;
//   });
//   $scope.things = ['hello', 'this', 'is', 'dug'];
// });

.controller('HomeController', ['$scope', 'weatherService', function($scope, weatherService) {
  function fetchWeather(zip) {
    weatherService.getWeather(zip).then(function(data){
      $scope.place = data;
    }); 
  }
  
  fetchWeather('90034');

  $scope.findWeather = function(zip) {
    $scope.place = '';
    fetchWeather(zip);
  };
}]);