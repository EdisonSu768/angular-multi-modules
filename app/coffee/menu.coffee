moduleA = angular.module("MyModuleA", [])
moduleA.controller "MyControllerA", ['$scope',($scope) ->
  $scope.name = "Bob A"
]

moduleB = angular.module("MyModuleB", [])
moduleB.controller "MyControllerB", ['$scope',($scope) ->
  $scope.name = "Steve B"
]

# when manually use
angular.element(document).ready( () ->
  angular.bootstrap(document.getElementById("one"), ["MyModuleA"]);
  angular.bootstrap(document.getElementById("two"), ["MyModuleB"]);
)

moduleC = angular.module("MyModuleC", [])
moduleC.controller "MyControllerC", ['$scope',($scope) ->
  $scope.name = "Edison Chen"
]

