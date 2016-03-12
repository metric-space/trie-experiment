(function() {
  'use strict';

  angular
    .module('trieExperimentFrontend')
    .controller('MainController', MainController);

  /** @ngInject */
  function MainController($resource,BACKEND,$q) {
    var vm = this;

    vm.searchText= ""

    var SearchResults = $resource(BACKEND+"/:searchText");

    var successFunction = function (results) {
      console.log(results)
      return results;
    }

    vm.getMatches = function () {
      var promise =  SearchResults.query({searchText: vm.searchText}).$promise;
      promise.then(function(result){
		return result	      
      })
      return promise;
    }

    vm.setSearchText = function (searchText){
         vm.searchText = searchText;
    }
  }
})();
