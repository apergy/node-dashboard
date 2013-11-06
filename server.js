'use strict';

var express = require('express'),
    app     = express();

app.get('/', function(request, response){
    response.send('Node Dashboard');
});

app.listen(3000);
