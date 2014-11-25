angular.module('SeasonsApp')


// // factory returns object with keys that can be used in the controller to call function
// // $http calls 
.factory('weatherService', ['$http', '$q', function($http, $q) {
  function getWeather(zip) {
    var deferred = $q.defer();
    $http.get('http://www.corsproxy.com/api.wunderground.com/api/2f0b44146ceab5a4/hourly/q/' + zip + '.json')
      .success(function(data) {
        deferred.resolve(data);
      })
      .error(function(err) {
        console.log('Error retrieving markets');
        deferred.reject(err);
      });
    return deferred.promise;
  }
  return {
    getWeather: getWeather
  };
}]);




// yahoo weather api
// .factory('weatherService', ['$http', '$q', function ($http, $q){
//   function getWeather (zip) {
//     var deferred = $q.defer();
//     $http.get('https://query.yahooapis.com/v1/public/yql?q=SELECT%20*%20FROM%20weather.forecast%20WHERE%20location%3D%22' + zip + '%22&format=json&diagnostics=true&callback=')
//       .success(function(data){
//         deferred.resolve(data.query.results.channel);
//       })
//       .error(function(err){
//         console.log('Error retrieving markets');
//         deferred.reject(err);
//       });
//     return deferred.promise;
//   }
  
//   return {
//     getWeather: getWeather
//   };
// }]);