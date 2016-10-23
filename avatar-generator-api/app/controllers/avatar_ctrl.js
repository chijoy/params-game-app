(function() {
  "use strict";

  angular.module("app").controller("avatarCtrl", function($scope, $http) {
    $scope.setup = function() {
      $http.get("/api/v1/avatars.json").then(function(response) {
        $scope.avatar = response.data;
      });              
    };

    $scope.toggleOrder = function(attribute) {
      if (attribute != $scope.orderAttribute) {
        $scope.descending = false;
      } else {
        $scope.descending = !$scope.descending;
      }

      $scope.orderAttribute = attribute;
    };
  });
}());