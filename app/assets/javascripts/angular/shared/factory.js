angular.module('SeasonsApp')

// factory returns object with keys that can be used in the controller to call function
.factory('weatherService', ['$http', '$q', function($http, $q) {
  function getWeather(zip) {
    var deferred = $q.defer();
    $http.get('http://www.corsproxy.com/api.wunderground.com/api/2f0b44146ceab5a4/forecast/conditions/q/' + zip + '.json')
      .success(function(data) {
        deferred.resolve(data);
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