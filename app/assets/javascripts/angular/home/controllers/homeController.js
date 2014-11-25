angular.module('SeasonsApp')

.controller('HomeController', ['$scope', 'weatherService', function($scope, weatherService) {
  function fetchWeather(zip) {
    weatherService.getWeather(zip).then(function(data){
      $scope.place = data;
    }); 
  }
  
  fetchWeather('');

  $scope.findWeather = function(zip) {
    $scope.place = '';
    fetchWeather(zip);
  };
}]);