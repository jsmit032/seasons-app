angular.module('SeasonsApp')

// factory returns object with keys that can be used in the controller to call function
.factory('weatherService', ['$http', '$q', function($http, $q) {
  function getWeather(coordinates) {
    var deferred = $q.defer();
    $http.get('/receivezip?zip='+coordinates)

      .success(function(data) {
        deferred.resolve(data);
        // console.log(data);
      })
      .error(function(err) {
        console.log('Error retrieving data');
        deferred.reject(err);
      });
    return deferred.promise;
  }

  function getClothing(condition) {
    var deferredClothing = $q.defer();
    $http.get('/getclothing?weather=' + condition)

      .success(function(dataClothing) {
        deferredClothing.resolve(dataClothing);
        // console.log(dataClothing);
      })
      .error(function(err) {
        console.log('Error retrieving data');
        deferredClothing.reject(err);
      });
    return deferredClothing.promise;
  }

  return {
    getWeather: getWeather,
    getClothing: getClothing
  };
  
}]);