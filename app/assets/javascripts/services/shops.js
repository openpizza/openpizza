/**
 * Created by Patrick on 24.05.2014.
 */
'use strict';

angular.module('pizza').factory('Shops', ['$resource', function($resource) {
    return {
        all: $resource('/shops.json?q=:search_text'),
        single: $resource('/shops/:shopId.json')
    };
}]);
