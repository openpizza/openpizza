/**
 * Created by Patrick on 24.05.2014.
 */
'use strict';

angular.module('pizza').factory('Products', ['$resource', function($resource) {
    return $resource('/shops/:shopId.json');
}]);