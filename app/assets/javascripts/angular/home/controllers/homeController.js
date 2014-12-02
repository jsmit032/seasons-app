angular.module('SeasonsApp')

// getWeather factory needs to work with user input AND geolocation
// in this controller i want to be able to detect geolocation and run it through weatherService

.controller('HomeController', ['$scope', 'weatherService', function($scope, weatherService) {

  $scope.lat = "0";
  $scope.lng = "0";
  $scope.error = "0";

  $scope.showPosition = function (position) {
    $scope.lat = position.coords.latitude;
    $scope.lng = position.coords.longitude;
    $scope.coordinates = {
      lat: $scope.lat,
      lng: $scope.lng
    };
    $scope.$apply();

    $scope.fetchWeather($scope.coordinates);

  }

  $scope.fetchWeather = function(coordinates) {
    weatherService.getWeather(coordinates).then(function(data){
      // console.log("hi");
      $scope.place = data;
      $scope.temp = data.temp;
      $scope.condition = "";

      switch(true) {
        case ($scope.temp < 33):
          $scope.condition = "freezing";
          $scope.fetchClothing($scope.condition);
          break;
        case ($scope.temp < 41):
          $scope.condition = "shivering";
          $scope.fetchClothing($scope.condition);
          break;
        case ($scope.temp < 51):
          $scope.condition = "cold";
          $scope.fetchClothing($scope.condition);
          break;        
        case ($scope.temp < 61):
          $scope.condition = "chilly";
          $scope.fetchClothing($scope.condition);
          break;        
        case ($scope.temp < 71):
          $scope.condition = "average";
          $scope.fetchClothing($scope.condition);
          break;        
        case ($scope.temp < 81):
          $scope.condition = "warm";
          $scope.fetchClothing($scope.condition);
          break;        
        case ($scope.temp < 91):
          $scope.condition = "hot";
          $scope.fetchClothing($scope.condition);
          break;          
        case ($scope.temp > 92):
          $scope.condition = "dying";
          $scope.fetchClothing($scope.condition);
          break;
      }
    });     
  }

  $scope.fetchClothing = function(condition) {
    weatherService.getClothing($scope.condition).then(function(dataClothing) {
      $scope.weather = dataClothing;
    });
  }

  $scope.getLocation = function () {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition($scope.showPosition);
    }
    else {
      $scope.error = "Geolocation is not supported by this browser.";
      $scope.fetchWeather(90034);
    }
  }

  $scope.getLocation();


  $scope.findWeather = function(zip) {
    $scope.place = '';
    $scope.fetchWeather(zip);
  };


}]);