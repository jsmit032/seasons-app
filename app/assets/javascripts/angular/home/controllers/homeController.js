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
      // console.log(data);
      // console.log($scope.place);
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