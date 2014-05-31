/**
 * Created by Patrick on 24.05.2014.
 */
'use strict';

angular.module('pizza').controller('ShopController', ['$scope', '$location', '$resource', 'Shops', function ($scope, $location, $resource, Shops) {

    $scope.shops = [];
    $scope.search_text = '';

    $scope.find = function() {
        Shops.all.query({search_text: $scope.search_text}, function(res) {
            $scope.shops = res;
        });
    };

    $scope.select = function(shop) {
        Global.shop = shop;
        //$location.path('/pages/products');

        //$scope.$apply(function() { $location.path("/pages/products"); });
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
