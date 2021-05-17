angular.module('doubtfire.admin.states.bug', [])

#
# Convenors of a unit(s) can see a list of all the units they convene
# in this view and make changes to those units.
#
# Users with an Administrator system role can create new units.
#
.config((headerServiceProvider) ->
  bugAdminViewStateData =
    url: "/admin/bug"
    views:
      main:
        controller: "bugstate"
        templateUrl: "admin/states/bug/bug.tpl.html"
    data:
      pageTitle: "_Bug Reporting Administration_"
      roleWhitelist: ['Admin', 'Convenor']
  headerServiceProvider.state "admin/bug", bugAdminViewStateData
)
.controller("bugstate", ($scope, submitRequest) ->
  
  $scope.submitRequest ->
  $scope.openTickets = [
    {
      username: 'sunil'
      email: 'negis@deakin.edu.au'
      type: 'Student'
      issue: 'testing'
    }
    {
      username: 'sunil'
      email: 'negis@deakin.edu.au'
      type: 'Student'
      issue: 'testing'
    }
    {
      username: 'sunil'
      email: 'negis@deakin.edu.au'
      type: 'Student'
      issue: 'testing'
    }
  ]
  $scope.closedTickets = [
    {
      username: 'sunil'
      email: 'negis@deakin.edu.au'
      type: 'Student'
      issue: 'testing'
    }
    {
      username: 'sunil'
      email: 'negis@deakin.edu.au'
      type: 'Student'
      issue: 'testing'
    }
    {
      username: 'sunil'
      email: 'negis@deakin.edu.au'
      type: 'Student'
      issue: 'testing'
    }
  ]
  $scope.rejectedTickets = [
    {
      username: 'sunil'
      email: 'negis@deakin.edu.au'
      type: 'Student'
      issue: 'testing'
    }
    {
      username: 'sunil'
      email: 'negis@deakin.edu.au'
      type: 'Student'
      issue: 'testing'
    }
    {
      username: 'sunil'
      email: 'negis@deakin.edu.au'
      type: 'Student'
      issue: 'testing'
    }
  ]
  
  $scope.submitRequest ->
  newTicket =
    username: @Name
    email: @email_id
    type: @type
    issue: @issue
  $scope.openTickets.push newTickets
  return
  
  @tab = 1
  @selectTab = (setTab) ($scope) ->
    @tab = setTab
    if setTab == 1
      @showDescription = true
    return

  @isSelected = (checkTab) ->
    @tab == checkTab

  return
  
)
