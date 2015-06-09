app = angular.module "saitoPortfolio"

app.controller "ssMwlAnimationCtrl", ($scope) ->
  console.log 'im from controller'

#　mwl = my wonderful life :)
app.directive 'ssMwlAnimation', ($timeout, TimelineLite, TweenLite) ->
  return {
    templateUrl: 'components/ss-mwl-animation/ss-mwl-animation.html'
    restrict: 'E'
    replace: true
    scope: {
      duration: '@'
    }
    controller: 'ssMwlAnimationCtrl'
    compile: (elem, attr) ->
      handleOnComplete = () =>
        console.log 'animated!'
      tl = new TimelineLite(onComplete: handleOnComplete)
      tl.add( TweenLite.to(elem, 1, {right:100}) )
      tl.play()
  }
