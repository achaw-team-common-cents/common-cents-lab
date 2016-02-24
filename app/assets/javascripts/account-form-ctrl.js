(function() {
  "use strict";

  angular.module("app").controller("newAcctFormCtrl", function($scope, $http, $window) {
    window.$scope = $scope;

    $scope.initialize = function() {
      $http.get("/api/v1/difficulties.json").then(function(response) {
        $scope.difficulties = response.data;
      });
      $http.get("/api/v1/questions.json").then(function(response) {
        $scope.questions = response.data;
        $scope.categorizedQuestions = {};
        for(var i=0;i<$scope.questions.length;i++) {
          $scope.categorizedQuestions[$scope.questions[i].category] = $scope.questions[i].question;
        }
      });
      $http.get("/api/v1/pay_frequencies.json").then(function(response) {
        $scope.payFrequencies = response.data;
      });
      $scope.newAccount={};
    }

    $scope.resetArray = function() {
      if (!$scope.newAccount.incomeArray[0] && !$scope.newAccount.incomeArray[1]) {
        $scope.newAccount.incomeArray = null;
      }
    }
    
    $scope.submitAccount = function() {
      $scope.newAccountForm.savings.$dirty = true;
      $scope.newAccountForm.expenses.$dirty = true;
      $scope.newAccountForm.income.$dirty = true;
      $scope.newAccountForm.incomeArray1.$dirty = true;
      $scope.newAccountForm.incomeArray2.$dirty = true;
      $scope.newAccountForm.payFrequency.$touched = true;
      $scope.newAccountForm.difficulty.$touched = true;
      if ($scope.newAccount.savings && $scope.newAccount.expenses && ($scope.newAccount.income || $scope.newAccount.incomeArray) && $scope.newAccount.difficulty_id && $scope.newAccount.pay_frequency_id) {
        if ($scope.newAccount.incomeArray) {
          $scope.newAccount.income = ($scope.newAccount.incomeArray[0] + $scope.newAccount.incomeArray[1]) / 2;
        }
        $http.post("/api/v1/accounts.json", $scope.newAccount).then(function(response) {
          $window.location.href = "/accounts/" + response.data.id;
        });
      }
    }
  });
}());