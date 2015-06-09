app = angular.module "saitoPortfolio"

app.controller "ssMwlAnimationCtrl", ($scope) ->
  console.log 'im from hell!'

app.directive 'ssMwlAnimation', ($timeout) ->
  return {
    templateUrl: 'components/ss-mwl-animation/ss-mwl-animation.html'
    restrict: 'E'
    scope: {
      duration: '@'
    }
    controller: 'ssMwlAnimationCtrl'
    compile: (elem, attr) ->
      console.log 'compile!'
  }
