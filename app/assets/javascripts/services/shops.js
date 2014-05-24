/**
 * Created by Patrick on 24.05.2014.
 */
'use strict';

//Shops service used for shops REST endpoint
angular.module('pizza.shops').factory('Shops', ['$resource', function($resource) {
    return $resource('Shops/:serviceId/products', {
        serviceId: '@_id'
    }, {

    });
}]);