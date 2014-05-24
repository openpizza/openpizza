/**
 * Created by Patrick on 24.05.2014.
 */
'use strict';

angular.module('pizza.shops').controller('ShopController', ['$scope', '$stateParams', '$location', '$anchorScroll', 'Shops', function ($scope, $stateParams, $location, $anchorScroll, Shops) {

    $scope.shops = [
        {
            name: 'Pizza Hans',
            rating: 5.0
        },
        {
            name: 'Pizza Hans',
            rating: 5.0
        },
        {
            name: 'Pizza Hans',
            rating: 5.0
        },
        {
            name: 'Pizza Hans',
            rating: 5.0
        }
    ];
    $scope.postcode = '';

    $scope.find = function() {

        console.log("Insert find :D");

        var shop = {
            id: 0,
            name: '',
            address: '',
            postcode: $scope.postcode,
            city: ''
        }

        shop.$get(function(res) {
            //$scope.shops = res;

            $scope.shops = [
                {
                    name: 'Pizza Hans',
                    rating: 5.0
                },
                {
                    name: 'Pizza Hans',
                    rating: 5.0
                },
                {
                    name: 'Pizza Hans',
                    rating: 5.0
                },
                {
                    name: 'Pizza Hans',
                    rating: 5.0
                }
            ]
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
