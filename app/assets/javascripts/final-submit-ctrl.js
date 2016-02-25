(function() {
  "use strict";

  angular.module("app").controller("finalSubmitCtrl", function($scope, $http, $window) {
    window.$scope = $scope;

    $scope.initialize = function(account_num) {
      $http.get("/api/v1/accounts/" + account_num +".json").then(function(response) {
        $scope.account = response.data
      });
    }
    $scope.submitChoice = function(type) {
      $http.patch("/api/v1/accounts/" + $scope.account.id + ".json", $scope.account).then(function(response) {
      });
    }
  });
}());