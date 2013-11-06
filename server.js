'use strict';

var express = require('express'),
    app     = express(),
    port    = process.env.PORT || 3000;

app.get('/', function(request, response){
    response.send('Node Dashboard');
});

app.listen(port);
