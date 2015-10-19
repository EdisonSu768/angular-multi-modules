appModule = angular.module 'appMenu',[]
appModule.controller 'appCtl',['$scope',($scope) ->
  $scope.hello = 'hello'
]

appModule2 = angular.module 'appMenu2',[]
appModule2.controller 'appCtl2',['$scope',($scope) ->
  $scope.hello2 = 'hello'
]