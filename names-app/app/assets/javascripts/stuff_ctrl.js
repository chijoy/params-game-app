(function(){
  "use strict";

  angular.module("app").controller("stuffCtrl", function($scope){

    $scope.people = [
                    "Snoopy",
                    "Linus",
                    "Peppermint Patty",
                    "Charlie Brown"
                    ];

    $scope.addPerson = function(newThing) {
      $scope.people.push(newThing);

    }

      window.scope = $scope;
  });
}());