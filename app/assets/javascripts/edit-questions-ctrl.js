(function() {
  "use strict";

  angular.module("app").controller("editQuestionsCtrl", function($scope, $http, $window) {
    window.$scope = $scope;

    $scope.initialize = function() {
      $http.get("/api/v1/questions.json").then(function(response) {
        $scope.questions = response.data;
        $scope.originalQuestions = angular.copy($scope.questions)
      });
    }
    $scope.resetQuestions = function() {
      $scope.questions = angular.copy ($scope.originalQuestions)
    }
    $scope.submitChanges = function(index) {
      if (index < $scope.questions.length) {
        $http.patch("/api/v1/questions/" + $scope.questions[index].id + ".json", $scope.questions[index]).then(function(response) {
          $scope.submitChanges(index + 1);
        });
      } else {
        $window.location.href = "/accounts/new"
      }
    }
  });
}());