/**
 * Created by Patrick on 24.05.2014.
 */
'use strict';

angular.module('pizza.shops').controller('ShopController', ['$scope', '$location', '$resource', 'Shops', function ($scope, $location, $resource, Shops) {

    $scope.shops = [];
    $scope.postcode = '';

    $scope.find = function() {

        Shops.get({}, function(res) {
            $scope.shops = res;
        });

        $scope.shops = [
            {
                name: 'Pizza Hans1',
                rating: 5.0
            },
            {
                name: 'Pizza Hans2',
                rating: 4.0
            },
            {
                name: 'Pizza Hans3',
                rating: 1.0
            },
            {
                name: 'Pizza Hans4',
                rating: 5.0
            }
        ];


//            Shops.get({serviceId: 123, issue: 'products'}, function(res) {
//                res.foo += '!';
//                res.$save();
//            });
//
//            Shops.get({}, function(res) {
//                res.foo += '!';
//                res.$save();
//            });


    };


}]);
