const Op = require('sequelize').Op
const mhsModel = require('../models').mhs

// GET ALL
exports.getAllMahasiswa = async (request, response) => {
    let mahasiswa = await mhsModel.findAll()
    return response.json({
        success: true,
        data: mahasiswa,
        message: `All mahasiswa data have been loaded`
    })
}

// GET BY ID
exports.getMahasiswaById = async (request, response) => {
    let mhsID = request.params.id;
    mhsModel.findOne({ where: { mhsID : mhsID } })

        .then(result => {
            return response.json({
                success: true,
                data: result,
            })
        })

        .catch(error => {
            return response.json({
                success: false,
                message: error.message
            })
        })
}

// GET FILTER
exports.findMahasiswaByKeyword = async (request, response) => {
    try {
        let keyword = request.params.key;
        let mahasiswa = await mhsModel.findAll({
            where: {
                [Op.or]: [
                    { mhsID: { [Op.substring]: keyword } },
                    { nama: { [Op.substring]: keyword } },
                    { jurusan: { [Op.substring]: keyword } },
                    { semester: { [Op.substring]: keyword } }
                ]
            }
        });

        return response.json({
            success: true,
            data: mahasiswa,
            message: `Mahasiswa data with keyword "${keyword}" have been loaded`
        });
    } catch (error) {
        return response.json({
            success: false,
            message: error.message
        });
    }
}

// POST
exports.addMahasiswa = (request, response) => {

    let newMahasiswa = {
        nama: request.body.nama,
        jurusan: request.body.jurusan,
        semester: request.body.semester,
    }

    mhsModel.create(newMahasiswa)
        .then(result => {
            return response.json({
                success: true,
                data: result,
                message: `New mahasiswa has been inserted`
            })
        })
        .catch(error => {
            return response.json({
                success: false,
                message: error.message
            })
        })
}

// UPDATE
exports.updateDataMahasiswa = (request, response) => {

    let dataMahasiswa = {
        nama: request.body.nama,
        jurusan: request.body.jurusan,
        semester: request.body.semester,
    }

    let mhsID = request.params.id
    /** execute update data based on defined id user */
    mhsModel.update(dataMahasiswa, { where: { mhsID : mhsID } })
        .then(result => {
            /** if update's process success */
            return response.json({
                success: true,
                message: `Data mahasiswa has been updated`
            })
        })
        .catch(error => {
            /** if update's process fail */
            return response.json({
                success: false,
                message: error.message
            })
        })
}

// DELETE
exports.deleteMahasiswa = (request, response) => {
    let mhsID = request.params.id
    mhsModel.destroy({ where: { mhsID: mhsID } })
        .then(result => {
            /** if update's process success */
            return response.json({
                success: true,
                message: `Data mahasiswa has been deleted`
            })
        })
        .catch(error => {
            /** if update's process fail */
            return response.json({
                success: false,
                message: error.message
            })
        })
}


