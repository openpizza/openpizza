/**
 * Created by Patrick on 25.05.2014.
 */
/**
 * Created by Patrick on 24.05.2014.
 */
'use strict';

angular.module('pizza').controller('PizzaCtrl', ['$scope', '$location', '$resource', 'Shops', function ($scope, $location, $resource, Shops) {

    // All shops
    $scope.shops = [];
    // Selected shop
    $scope.shop = {};
    $scope.postcode = '';

    $scope.find = function() {
        Shops.query({postcode: $scope.postcode}, function(res) {
            $scope.shops = res;
        });
    };

    $scope.select = function(shop) {
        this.shop = shop;
        console.log(this.shop);
    };


//            Shops.get({serviceId: 123, issue: 'products'}, function(res) {
//                res.foo += '!';
//                res.$save();
//            });
//
//            Shops.get({}, function(res) {
//                res.foo += '!';
//                res.$save();
//            });





}]);
