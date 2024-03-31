'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class mhs extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  mhs.init({
    mhsID: {
      allowNull: false,
      autoIncrement: true,
      primaryKey: true,
      type: DataTypes.INTEGER
    },
    nama: DataTypes.STRING,
    jurusan: DataTypes.STRING,
    semester: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'mhs',
  });
  return mhs;
};