app = angular.module('liftbooking', ['ngSanitize'])

app.filter('fooLabel', ->
  return (input) ->
    if(input)
      return '-'
    else
      return '+'
)

app.directive('fooTag', ->
  return {
    restrict: 'E'
    replace: false
    transclude: true
    template: '<div class="fooclass"></div>'
    scope: {
      evaluation: '='
      property: '@'
    }
    controller: ($scope, $element, $attrs, $location) ->
      $scope.foo = (bar) ->
        return 'baz'
  }
)

app.controller "BookingController", ($scope, $location) ->
  $scope.foo = 'Bar'

angular.bootstrap document, ["liftbooking"]

$(document).ready( ->
  console.log 'document is ready...'
  $('#sampleInput').val('Sample text...')
)
