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
    $scope.coordinates = $scope.lat + "," + $scope.lng;
    $scope.$apply();

    $scope.fetchWeather($scope.coordinates);
  }

  $scope.fetchWeather = function(coordinates) {
    weatherService.getWeather(coordinates).then(function(data){
      // console.log("hi");
      $scope.place = data;
      $scope.temp = data.temp;
      $scope.weather = angular.lowercase(data.condition);
      $scope.nightweather = angular.lowercase(data.nightcond);
      $scope.bkcondition = "";
      $scope.condition = "";

      switch(true) {
        case ($scope.temp < 33):
          $scope.condition = "freezing";
          break;
        case ($scope.temp < 41):
          $scope.condition = "shivering";
          break;
        case ($scope.temp < 51):
          $scope.condition = "cold";
          break;        
        case ($scope.temp < 61):
          $scope.condition = "chilly";
          break;        
        case ($scope.temp < 71):
          $scope.condition = "average";
          break;        
        case ($scope.temp < 81):
          $scope.condition = "warm";
          break;        
        case ($scope.temp < 91):
          $scope.condition = "hot";
          break;          
        case ($scope.temp > 92):
          $scope.condition = "dying";
          break;
      }

      switch($scope.weather) {
        case "rain": 
        case "heavy rain": 
        case "light rain": 
        case "thunderstrom": 
        case "thunderstroms": 
        case "chance of rain": 
        case "chance rain": 
        case "chance of thunderstroms": 
        case "chance of freezing rain": 
        case "freezing rain":
          $scope.bkcondition = "rain";
          break;
        case "chance of flurries": 
        case "flurries": 
        case "chance of snow":
        case "light snow": 
        case "snow":
        case "heavy snow": 
        case "chance of flurries": 
        case "flurries": 
        case "sleet":
          $scope.bkcondition = "snow";
          break;
        case "wind": 
        case "windy":
          $scope.bkcondition = "windy";
          break;        
        case "mostly sunny": 
        case "sunny": 
        case "clear": 
        case "partly cloudy": 
        case "partly sunny":
          $scope.bkcondition = "sunny";
          break;        
        case "fog": 
        case "haze": 
        case "cloudy": 
        case "mostly cloudy": 
        case "scattered clouds": 
        case "overcast":
          $scope.bkcondition = "cloudy";
          break;        
        default:
          $scope.bkcondition = "unknown";
      }

        switch($scope.nightweather) {
        case "rain": 
        case "heavy rain": 
        case "light rain": 
        case "thunderstrom": 
        case "thunderstroms": 
        case "chance of rain": 
        case "chance rain": 
        case "chance of thunderstroms": 
        case "chance of freezing rain": 
        case "freezing rain":
          $scope.nightcondition = "rain";
          break;
        case "chance of flurries": 
        case "flurries": 
        case "chance of snow":
        case "light snow": 
        case "snow":
        case "heavy snow": 
        case "chance of flurries": 
        case "flurries": 
        case "sleet":
          $scope.nightcondition = "snow";
          break;
        case "wind": 
        case "windy":
          $scope.nightcondition = "windy";
          break;        
        case "mostly sunny": 
        case "sunny": 
        case "clear": 
        case "partly cloudy": 
        case "partly sunny":
          $scope.nightcondition = "sunny";
          break;        
        case "fog": 
        case "haze": 
        case "cloudy": 
        case "mostly cloudy": 
        case "scattered clouds": 
        case "overcast":
          $scope.nightcondition = "cloudy";
          break;        
        default:
          $scope.nightcondition = "unknown";
      }

      $scope.fetchClothing($scope.condition, $scope.bkcondition);
      $scope.fetchNightClothing($scope.condition, $scope.nightcondition);

    });     
  }

// grabs clothing from the api that was called based on location
  $scope.fetchClothing = function(condition, bkcondition) {
    weatherService.getClothing($scope.condition, $scope.bkcondition).then(function(dataClothing) {
      $scope.weather = dataClothing;
      // $scope.condition = dataClothing;
    });
  }

  $scope.fetchNightClothing = function(nightcondition) {
    weatherService.getNightClothing($scope.nightcondition).then(function(dataClothing) {
      $scope.nightweather = dataClothing;
      // $scope.condition = dataClothing;
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