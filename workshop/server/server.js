const express = require('express')
const app = express()
const port = 3000

app.get('/1337h4x0r', (req, res) => res.download('./1.tar'))
app.get('/1337h4x0r69', (req, res) => res.download('./2.tar'))
app.get('/1337420h4x0r', (req, res) => res.download('./3.tar'))

app.listen(port, () => console.log(`Example app listening on port ${port}!`))
