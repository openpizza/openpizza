/**
 * Created by Patrick on 25.05.2014.
 */
'use strict';

angular.module('pizza').controller('OrderController', ['$scope', '$location', '$routeParams', '$resource', 'Shops', 'Products', 'Global', function ($scope, $location, $routeParams, $resource, Shops, Products, Global) {

    $scope.shop = {};
    $scope.currentOrder = {
        nickname: '',
        products: [],
        comment: '',
        price: 0
    };

    $scope.getShop = function(shopId) {
        Shops.single.get({shopId: shopId}, function(res) {
            $scope.shop = res;
        });
    };

    $scope.add = function(product) {

        var found = false;

        for(var i = 0; i < $scope.currentOrder.products.length; i++) {
            if ($scope.currentOrder.products[i].id == product.id) {
                $scope.currentOrder.products[i].quantity ++;
                found = true;
            }
        }

        if (!found) {
            $scope.currentOrder.products.push({
                id: product.id,
                name: product.name,
                quantity: 1
            });
        }
        $scope.currentOrder.price += product.price;
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