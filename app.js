var express = require('express'),
    hbs     = require('hbs'),
    app     = express(),
    port    = process.env.PORT || 3000;

app.use(express.logger('tiny'));
app.use(express.static(__dirname + '/public'));

app.engine('hbs', hbs.__express);

app.set('view engine', 'hbs');
app.set('views', __dirname + '/view');


app.get('*', function (request, response) {
    response.render('index', { name: 'Apergy' });
});

app.listen(port);
