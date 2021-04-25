angular.module('doubtfire.admin.modals.bug-modal', [])

.factory('BugModal', ($modal) ->
  BugModal = {}

  BugModal.show = (user) ->
    $modal.open
      templateUrl: 'admin/modals/bug-modal/bug-modal.tpl.html'
      controller: 'BugModalCtrl'
      resolve:
        user: -> user

  BugModal
)

.controller('BugModalCtrl', ($scope, $modalInstance, alertService, currentUser, User, user, auth) ->
  $scope.user = user
  $scope.currentUser = currentUser
  $scope.modalState = {}

  $scope.saveBug = ->
    User.update( { id: $scope.user.id, user: $scope.user } ).$promise.then (
      (response) ->
        $modalInstance.close(response)
        user.name = user.first_name + " " + user.last_name
        if user == currentUser.profile
          auth.saveCurrentUser()
    ),
    (
      (response) ->
        if response.data.error?
          alertService.add("danger", "Error: " + response.data.error, 6000)
    )
)