(function(){
  "use strict";

  angular.module("app").controller("stuffCtrl", function($scope){

    $scope.reviews = [
                        {
                          text: "Angular is so cool",
                          rating: 5,
                          reviewer: "Eric Cartman"
                        },
                        {
                          text: "Awesome with a capital A, is what Angular is",
                          rating: 4,
                          reviewer: "Douglas Adams"
                        },
                        {
                          text: "eh, React is better.",
                          rating: 2,
                          reviewer: "Justin Bieber"
                        }
                      ];

    $scope.addReview = function(newText, new Rating, newReviewer) {
      if (newText && newRating && newReviewer) {
        var review = {
                      text: newText,
                      rating: newRating,
                      reviewer: newReviewer
                      }
        $scope.reviews.push(review);
        $scope.newReview = null;
      }
    };                  

    $scope.deleteReview = function(selectedIndex) {
      $scope.reviews.splice(selectedIndex, 1);
    };

    $scope.isPositive = function(theReview) {
      return theReview.indexOf("stupid") === -1;
    };

    window.scope = $scope;
  });
}());