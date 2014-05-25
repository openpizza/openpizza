/**
 * Created by Patrick on 24.05.2014.
 */
'use strict';

angular.module('pizza').controller('ProductController', ['$scope', '$location', '$routeParams', '$resource', 'Shops', 'Products', 'Global', function ($scope, $location, $routeParams, $resource, Shops, Products, Global) {

    $scope.products = [];
    $scope.shop = {};

    $scope.getShop = function() {

        console.log($routeParams);

        var shopId = 1;

        Shops.get({shopId: shopId}, function(res) {
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