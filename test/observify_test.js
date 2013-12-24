var observify = require('../lib/observify');

exports.logger = {
    'no args': function (test) {
        test.expect(1);
        test.equal(typeof observify.logger, 'function', 'should be a function.');
        test.done();
    }
};
