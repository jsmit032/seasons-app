angular.module('SeasonsApp')

// factory returns object with keys that can be used in the controller to call function
.factory('weatherService', ['$http', '$q', function($http, $q) {
  function getWeather(coordinates) {
    var deferred = $q.defer();
    $http.get('/receivezip?lat='+coordinates.lat+'&lng='+coordinates.lng)
      .success(function(data) {
        // deferred.resolve(data);
        console.log(data);
      })
      .error(function(err) {
        console.log('Error retrieving data');
        deferred.reject(err);
      });
    return deferred.promise;
  }
  return {
    getWeather: getWeather
  };
}]);