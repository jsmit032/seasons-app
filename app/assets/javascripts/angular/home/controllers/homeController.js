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
      $scope.nighttemp = data.templo;
      $scope.dayweather = angular.lowercase(data.condition);
      $scope.nightweather = angular.lowercase(data.nightcond);
     
      $scope.bkcondition = "";
      $scope.nightweathercondition = "";
      $scope.daytempcondition = "";
      $scope.nighttempcondition = "";

      switch(true) {
        case ($scope.temp < 33):
          $scope.daytempcondition = "freezing";
          // $scope.nighttempcondition = "freezing";
          break;
        case ($scope.temp < 41):
          $scope.daytempcondition = "shivering";
          // $scope.nighttempcondition = "shivering";
          break;
        case ($scope.temp < 51):
          $scope.daytempcondition = "cold";
          // $scope.nighttempcondition = "cold";
          break;        
        case ($scope.temp < 61):
          $scope.daytempcondition = "chilly";
          // $scope.nighttempcondition = "chilly";
          break;        
        case ($scope.temp < 71):
          $scope.daytempcondition = "average";
          // $scope.nighttempcondition = "average";
          break;        
        case ($scope.temp < 81):
          $scope.daytempcondition = "warm";
          // $scope.nighttempcondition = "warm";
          break;        
        case ($scope.temp < 91):
          $scope.daytempcondition = "hot";
          // $scope.nighttempcondition = "hot";
          break;          
        case ($scope.temp > 92):
          $scope.daytempcondition = "dying";
          // $scope.nighttempcondition = "dying";
          break;
      }      

      switch(true) {
        case ($scope.nighttemp < 33):
          $scope.nighttempcondition = "freezing";
          break;
        case ($scope.nighttemp < 41):
          $scope.nighttempcondition = "shivering";
          break;
        case ($scope.nighttemp < 51):
          $scope.nighttempcondition = "cold";
          break;        
        case ($scope.nighttemp < 61):
          $scope.nighttempcondition = "chilly";
          break;        
        case ($scope.nighttemp < 71):
          $scope.nighttempcondition = "average";
          break;        
        case ($scope.nighttemp < 81):
          $scope.nighttempcondition = "warm";
          break;        
        case ($scope.nighttemp < 91):
          $scope.nighttempcondition = "hot";
          break;          
        case ($scope.nighttemp > 92):
          $scope.nighttempcondition = "dying";
          break;
      }

      switch($scope.dayweather) {
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
          // $scope.nightweathercondition = "rain";
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
          // $scope.nightweathercondition = "snow";
          break;
        case "wind": 
        case "windy":
          $scope.bkcondition = "windy";
          // $scope.nightweathercondition = "windy";
          break;        
        case "mostly sunny": 
        case "sunny": 
        case "clear": 
        case "partly cloudy": 
        case "partly sunny":
          $scope.bkcondition = "sunny";
          // $scope.nightweathercondition = "sunny";
          break;        
        case "fog": 
        case "haze": 
        case "cloudy": 
        case "mostly cloudy": 
        case "scattered clouds": 
        case "overcast":
          $scope.bkcondition = "cloudy";
          // $scope.nightweathercondition = "cloudy";
          break;        
        default:
          $scope.bkcondition = "unknown";
          // $scope.nightweathercondition = "unknown";
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
          $scope.nightweathercondition = "rain";
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
          $scope.nightweathercondition = "snow";
          break;
        case "wind": 
        case "windy":
          $scope.nightweathercondition = "windy";
          break;        
        case "mostly sunny": 
        case "sunny": 
        case "clear": 
        case "partly cloudy": 
        case "partly sunny":
          $scope.nightweathercondition = "sunny";
          break;        
        case "fog": 
        case "haze": 
        case "cloudy": 
        case "mostly cloudy": 
        case "scattered clouds": 
        case "overcast":
          $scope.nightweathercondition = "cloudy";
          break;        
        default:
          $scope.nightweathercondition = "unknown";
      }

      $scope.fetchClothing($scope.daytempcondition, $scope.bkcondition);
      
      if($scope.bkcondition === $scope.nightweathercondition && $scope.daytempcondition === $scope.nighttempcondition){
        
      } else if ($scope.bkcondition === $scope.nightweathercondition){
        $scope.fetchNightClothingA($scope.nighttempcondition);
      } else if ($scope.daytempcondition === $scope.nighttempcondition){
        $scope.fetchNightClothingB($scope.nightweathercondition);
      } else {
        $scope.fetchNightClothing($scope.nighttempcondition, $scope.nightweathercondition);
      };

    });     
  }

// grabs clothing from the api that was called based on location
  $scope.fetchClothing = function(temp, condition) {
    weatherService.getClothing($scope.daytempcondition, $scope.bkcondition).then(function(dataClothing) {
      $scope.dayweather = dataClothing;
    });
  }

  $scope.fetchNightClothing = function(temp, condition) {
    weatherService.getNightClothing($scope.nighttempcondition, $scope.nightweathercondition).then(function(dataClothing) {
      $scope.nightweather = dataClothing;
    });
  }

  $scope.fetchNightClothingA = function(temp) {
    weatherService.getNightClothingA($scope.nighttempcondition).then(function(dataClothing) {
      $scope.nightweather = dataClothing;
    });
  }

  $scope.fetchNightClothingB = function(condition) {
    weatherService.getNightClothingB($scope.nightweathercondition).then(function(dataClothing) {
      $scope.nightweather = dataClothing;
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