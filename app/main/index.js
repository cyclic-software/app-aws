
const express = require('express')
const app = express()

app.all('*', async (req, res) => {
  const msg = "Hello World from: https://github.com/cyclic-software/app-aws file: app/main/index.js"
  console.log(msg)
  res.send(JSON.stringify({
    method: req.method,
    message: msg,
    now: (new Date()).toISOString()
  }))
})

module.exports = app
