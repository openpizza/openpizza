/**
 * Created by Patrick on 24.05.2014.
 */
'use strict';

angular.module('pizza').controller('ProductController', ['$scope', '$location', '$resource', 'Shops', 'Products', 'Global', function ($scope, $location, $resource, Shops, Products, Global) {
    console.log("Enter ProductController!");
    console.log(Global);
    $scope.name = Global.name;
    console.log($scope.name);
    console.log(Global);

    $scope.products = [{
        name: 'Pizza Salami'
    }]

//    $scope.getShop = function(shopId) {
//
//        Shops.get({id: shopId}, function(res) {
//            $scope.shop = res;
//        });
//    };

//    $scope.getProducts = function(shopId) {
//        Products.query({id: shopId}, function(res) {
//            $scope.products = res;
//        });
//    };

//    $scope.select = function(id) {
//        $scope.global.shopId = id;
//    };

}]);