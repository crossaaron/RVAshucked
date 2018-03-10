module.exports = function (sequelize, DataTypes) {
    var OystId = sequelize.define("restaurants_has_oysters", {
        restaurant_id: DataTypes.INTEGER,
        oyster_id: DataTypes.INTEGER   
    });
    return OystId;
};