'use strict';
const now = new Date()
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    await queryInterface.bulkInsert('mhs', [
      {
        nama: "John Doe",
        jurusan: "Listrik",
        semester: "8",
        createdAt : now,
        updatedAt : now
      },
    ])
      },

  async down (queryInterface, Sequelize) {
    await queryInterface.bulkDelete('mhs', null, {});
  }
};
