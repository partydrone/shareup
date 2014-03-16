angular.module('myApp.controllers', [])
.controller('HomeController', function($scope, session, ArticleService, SessionService, Share) {
  $scope.user = session.user;
  ArticleService.getLatestFeed().then(function(data) {
    $scope.articles = data;
  })
});
