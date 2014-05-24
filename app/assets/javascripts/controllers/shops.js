/**
 * Created by Patrick on 24.05.2014.
 */
'use strict';

angular.module('pizza.shops').controller('ShopController', ['$scope', '$location', '$resource', 'Shops', function ($scope, $location, $resource, Shops) {

    $scope.shops = [];
    $scope.postcode = '';

    $scope.find = function() {

        var shop = {
            id: 0,
            name: '',
            address: '',
            postcode: $scope.postcode,
            city: ''
        };

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


            Shops.get({serviceId: 123, issue: 'products'}, function(res) {
                res.foo += '!';
                res.$save();
            });

            Shops.get({}, function(res) {
                res.foo += '!';
                res.$save();
            });


    };

    $scope.create = function() {

        var project = new Projects({
            title: this.title,
            end: this.end
        });
        project.$save(function(response) {
            //$location.path('projects/' + response._id);
            $scope.find();
        });
    };

}]);
