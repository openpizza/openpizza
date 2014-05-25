/**
 * Created by Patrick on 25.05.2014.
 */

angular.module('pizza').factory('Order', ['$resource', function($resource) {
    return  $resource('/orders/:id/items/:nickname.json');
}]);