app.controller('dashboardController', ['$scope', '$http', '$timeout', '$interval', function($scope, $http, $timeout, $interval) {

    $("data_pane").hide();

    $scope.getData = function() {
      $http({
          
          method: 'GET',
          url: 'php/room_status.php'
          
      }).then(function (response) {

          // on success
          $scope.spice = response.data.result;
          $("data_pane").show();
          
      }, function (response) {
          
          // on error
          console.log(response.data,response.status);
          
      });
    };

    $scope.start = function() {
       $scope.myCall = $interval($scope.getData, 1000);        
    };

    $scope.stop = function() {
       $interval.cancel($scope.myCall);   
    };  

    $scope.start();

}]);

app.controller('reportController', ['$scope', '$http', function($scope, $http) {

    $("data_pane").hide();
    $scope.getData = function() {
      $http({
          
          method: 'GET',
          url: 'php/fetch.php'
          
      }).then(function (response) {

              response.data.result.forEach(function (dataItem) {

                if(dataItem.status == 1){
                      dataItem.condition = "ON Since " + dataItem.conditionTime;
                      dataItem.status = "ON";
                } else if(dataItem.status == 0){
                      dataItem.condition = "OFF Since " + dataItem.conditionTime;
                      dataItem.status = "OFF";

                }

              });
          
          // on success
          $scope.spice = response.data.result;

          $("#searchResultsTbl").bootstrapTable({
                  data: $scope.spice
          });

          $("data_pane").show();
                    
      }, function (response) {
          
          // on error
          console.log(response.data,response.status);
          
      });
    };

    $scope.getData();

}]);


app.controller('loginController', ['$scope','$location','$state', function($scope,$location,$state) {

  $scope.username = "";
  $scope.password = "";

  $scope.login = function () {
      if($scope.username == "admin" &&  $scope.username == "admin"){
          $state.go('home.dashboard')
       } else {
          alert('Wrong Username and Password');
       }

    }


}]);

