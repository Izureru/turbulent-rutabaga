"use strict"

let express = require('express')
let bodyParser = require('body-parser')

const port = 3000
const root_path = '/'
const users_path = '/users'

let app = express()
app.use(bodyParser.json())

let users = []

app.get(root_path, (req, res) => {
    res.send(`Hello TDD! There are currently ${users.length} tdd users`)
})

app.get(users_path, (req, res) => {
    res.send(users)
})

app.post(users_path, (req, res) => {
    let user = req.body.user
    if (user && user.name) {
        users.push({
            name: user.name
        })
        res.send('OK')
    } else {
        res.status(422).send('No user or user without name')
    }
})

app.listen(port, () => {
    console.log(`Example app listening at port ${port}`)
})