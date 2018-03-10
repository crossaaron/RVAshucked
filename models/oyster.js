module.exports = function (sequelize, DataTypes) {
    var Oyster = sequelize.define("oysters", {
        name: DataTypes.STRING,
        zone: DataTypes.INTEGER,
        location: DataTypes.STRING,
        profile: DataTypes.STRING
    });
    return Oyster;
};
