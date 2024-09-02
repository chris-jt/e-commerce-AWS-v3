let express = require('express');
let app = express();
const cors = require('cors');

app.use(cors());
app.get('/health', (req, res) => {
    res.status(200).json({ status: 'OK' });
  });
  
app.get('/', function (req, res) {
    res.json({ 
        merchandise: [{
            name: "The DevOps Handbook", 
            price: 500
        }, {
            name: "The Phoenix Project",
            price: 100
        }, {
            name: "The DevOps Adoption Playbook",
            price: 30
        }]
    });
    res.end();
});

app.listen(3003, function () {
  console.log("app listening on port 3003!");
});
