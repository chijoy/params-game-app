(function(){
  "use strict";

  angular.module("app").controller("stuffCtrl", function($scope){

    $scope.tasks = [
                    "Take out the trash",
                    "Walk the dogs",
                    "Floors"
                    ];

    $scope.addTask = function(newThing) {
      $scope.tasks.push(newThing);

    }

      window.scope = $scope;
  });
}());