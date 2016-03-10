(function() {
  'use strict';

  angular
    .module('trieExperimentFrontend')
    .controller('MainController', MainController);

  /** @ngInject */
  function MainController() {
    var vm = this;
    vm.getMatches = function(searchText) {
      return [{display:"hello hello"},{display:"alpha beta gamma"}]
    }
  }
})();
