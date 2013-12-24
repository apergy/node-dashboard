module.exports = function () {
    return function (request, response, next) {
        var start = process.hrtime();

        response.on('header', function () {
            var elapsed = (process.hrtime(start)[1] / 1000000).toFixed(3);
            console.log(request.method, request.originalUrl, elapsed + 'ms');
        });

        next();
    };
};
