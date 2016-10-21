(function() {
  "use strict";

  angular.module("app").controller("avatarCtrl", function($scope, $http) {
    $scope.setup = function() {
      $http.get("/api/v1/avatars.json").then(function(response){
        $scope.avatar = response.data;
      });                
    };
  });
}());