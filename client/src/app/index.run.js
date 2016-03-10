(function() {
  'use strict';

  angular
    .module('trieExperimentFrontend')
    .run(runBlock);

  /** @ngInject */
  function runBlock($log) {

    $log.debug('runBlock end');
  }

})();
