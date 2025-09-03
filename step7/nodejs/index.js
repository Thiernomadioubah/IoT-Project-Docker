// Load dependencies
const util    = require('util'),
      winston = require('winston'),
      app     = require('./app');

// Define API port
let port   = process.env.PORT || 1337;

// Run API
app.listen(port, function(){
    console.log(process.env.INFLUXDB_HOST)
    winston.info(util.format("server listening on port %s", port));
});
