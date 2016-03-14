(function() {
  'use strict';

  angular
    .module('trieExperimentFrontend')
    .controller('MainController', MainController);

  /** @ngInject */
  function MainController($http,BACKEND,$q) {
    var vm = this;
    vm.searchText = "";

    vm.mispelling = "";

    vm.getMatches = function () {
      return $http.get(BACKEND+"/"+vm.searchText)
                  .then(function(result){
                    if(!!result.data.correct){
                      vm.mispelling = result.data.wrong[0];
		    }
	            return result.data.correct;   
                   })
    }

    vm.setSearchText = function (searchText){
         vm.searchText = searchText;
    }
  }
})();
