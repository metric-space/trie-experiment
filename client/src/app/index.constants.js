/* global malarkey:false, moment:false */
(function() {
  'use strict';

  angular
    .module('trieExperimentFrontend')
    .constant('malarkey', malarkey)
    .constant('moment', moment)
    .constant('BACKEND','http://localhost:3000');
})();
