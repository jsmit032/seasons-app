angular.module('SeasonsApp')

// factory returns object with keys that can be used in the controller to call function
.factory('weatherService', ['$http', '$q', function($http, $q) {
  function getWeather(coordinates) {
    var deferred = $q.defer();
    $http.get('/receivezip?zip='+coordinates)

      .success(function(data) {
        deferred.resolve(data);
        console.log(data);
      })
      .error(function(err) {
        console.log('Error retrieving data');
        deferred.reject(err);
      });
    return deferred.promise;
  }

  function getClothing(temp, condition) {
    var deferredClothing = $q.defer();

    // check for multiple params and count the number of params?
    // create the get url based on the # of params
    // create url that accepts condition and bkcondition
    // 
    
    $http.get('/getclothing?category1=' + temp + '&category2=' + condition)
      .success(function(dataClothing) {
        deferredClothing.resolve(dataClothing);
        console.log(dataClothing);
      })
      .error(function(err) {
        console.log('Error retrieving data');
        deferredClothing.reject(err);
      });


    return deferredClothing.promise;
  }

  function getNightClothing(temp, condition) {
    var deferredNightClothing = $q.defer();

    $http.get('/getclothing?category1=' + temp + '&category2=' + condition)
      .success(function(dataClothing) {
        deferredNightClothing.resolve(dataClothing);
        console.log(dataClothing);
      })
      .error(function(err) {
        console.log('Error retrieving data');
        deferredNightClothing.reject(err);
      });


    return deferredNightClothing.promise;
  }

  function getNightClothingA(temp) {
    var deferredNightClothingA = $q.defer();

    $http.get('/getclothing?category1=' + temp)
      .success(function(dataClothing) {
        deferredNightClothingA.resolve(dataClothing);
        console.log(dataClothing);
      })
      .error(function(err) {
        console.log('Error retrieving data');
        deferredNightClothingA.reject(err);
      });


    return deferredNightClothingA.promise;
  }

  function getNightClothingB(condition) {
    var deferredNightClothingB = $q.defer();

    $http.get('/getclothing?category1=' + condition)
      .success(function(dataClothing) {
        deferredNightClothingB.resolve(dataClothing);
        console.log(dataClothing);
      })
      .error(function(err) {
        console.log('Error retrieving data');
        deferredNightClothingB.reject(err);
      });


    return deferredNightClothingB.promise;
  }

  return {
    getWeather: getWeather,
    getClothing: getClothing,
    getNightClothing: getNightClothing,
    getNightClothingA: getNightClothingA,
    getNightClothingB: getNightClothingB
  };
  
}]);