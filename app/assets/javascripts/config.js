/**
 * Created by Patrick on 24.05.2014.
 */
'use strict';

////Setting up route
//angular.module('pizza').config(['$stateProvider', '$urlRouterProvider',
//    function($stateProvider, $urlRouterProvider) {
//        // For unmatched routes:
//        $urlRouterProvider.otherwise('/');
//
//        // states for the app
//        $stateProvider
//            .state('signin', {
//                url: '/signin',
//                templateUrl: 'http://www.google.de'
//            })
//            .state('shops', {
//                url: '/shops',
//                templateUrl: 'views/subviews/shops.html'
//            })
////            .state('milestones', {
////                url: '/milestones',
////                templateUrl: 'views/subviews/milestones.html'
////            })
////            .state('tasks', {
////                url: '/tasks',
////                templateUrl: 'views/subviews/tasks.html'
////            })
////            .state('details', {
////                url: '/details',
////                templateUrl: 'views/subviews/details.html'
////            });
//    }
//]);
//
////Setting HTML5 Location Mode
//angular.module('pizza').config(['$locationProvider',
//    function($locationProvider) {
//        $locationProvider.hashPrefix('!');
//    }
//]);

var app = angular.module("pizza", ["ngRoute", "ngResource"]);

app.config(function($routeProvider, $locationProvider) {
    $locationProvider.html5Mode(true);
    $routeProvider
        .when("/",
        { templateUrl: "<%= asset_path('test.html') %>",
            controller: "ContactsIndexCtrl" })
        .when("/contacts/new",
        { templateUrl: "<%= asset_path('contacts/edit.html') %> ",
            controller: "ContactsEditCtrl" })
        .when("/contacts/:id",
        { templateUrl: "<%= asset_path('contacts/show.html') %> ",
            controller: "ContactsShowCtrl" })
        .when("/contacts/:id/edit",
        { templateUrl: "<%= asset_path('contacts/edit.html') %> ",
            controller: "ContactsEditCtrl" })
        .otherwise({ redirectTo: "/contacts" });
});