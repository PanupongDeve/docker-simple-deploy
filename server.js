const express = require('express');

const app = express();

app.get('/', (req ,res) => {
    res.send(`Hello ${process.env.NODE_ENV} - update -2 With Docker build`);
});


app.listen(3000, () => {
    console.log('Server running port 3000');
})