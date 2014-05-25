/**
 * Created by Patrick on 25.05.2014.
 */
'use strict';

angular.module('pizza').controller('OrderController', ['$scope', '$location', '$routeParams', '$resource', 'Shops', 'Products', 'Global', function ($scope, $location, $routeParams, $resource, Shops, Products, Global) {

    $scope.shop = {};

    $scope.products = [{
        category: "Pizza",
        name: 'Pizza Salami'
    }];
    $scope.shop = {};

    $scope.getShop = function(shopId) {

        Shops.single.get({shopId: shopId}, function(res) {
            $scope.shop = res;
        });
    };

//    $scope.getProducts = function(shopId) {
//        Products.query({id: shopId}, function(res) {
//            $scope.products = res;
//        });
//    };

//    $scope.select = function(id) {
//        $scope.global.shopId = id;
//    };

}]);