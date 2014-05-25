/**
 * Created by Patrick on 25.05.2014.
 */

angular.module('pizza').factory('Shops', ['$resource', function($resource) {
    return {
        all: $resource('http://openpizza.apiary-mock.com/shops?:postcode'),
        single: $resource('http://openpizza.apiary-mock.com/shops/:shopId')
    };
}]);