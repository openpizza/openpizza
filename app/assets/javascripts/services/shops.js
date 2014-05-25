/**
 * Created by Patrick on 24.05.2014.
 */
'use strict';

angular.module('pizza').factory('Shops', ['$resource', function($resource) {
    return {
        all: $resource('/shops.json?postcode=:postcode'),
        single: $resource('/shops/:shopId.json')
    };
}]);