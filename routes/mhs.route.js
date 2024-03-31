const express = require('express')
const app = express()
app.use(express.json())
const mhsController = require('../controllers/mhs.controller.js')

app.get("/", mhsController.getAllMahasiswa)

app.get("/id/:id", mhsController.getMahasiswaById)

app.get("/search/:key", mhsController.findMahasiswaByKeyword)

app.post("/", mhsController.addMahasiswa)

app.put("/:id", mhsController.updateDataMahasiswa)

app.delete("/:id", mhsController.deleteMahasiswa)

module.exports = app