var express = require('express')  
var app = express()  
app.use('/public', express.static('public'))

app.set('port', (process.env.PORT || 5000))

app.get('/', function (req, res) {  
    res.sendFile(__dirname + '/index.html')
})

app.listen(app.get('port'), function() {
  console.log('Node app is running on port', app.get('port'))
})
