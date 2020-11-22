module.exports = function (sequelize, DataTypes) {
  const categories = sequelize.define("workouts", {
    title: {
      type: DataTypes.STRING(50),
    },
    description: {
      type: DataTypes.STRING(500),
    },
    img_or_video: {
      type: DataTypes.STRING(1024),
    }
  });

  // categories.associate = function (models) {
  //   categories.belongsTo(models.legs, {
  //     foreignKey: {
  //       allowNull: false,
  //     },
  //   });
  // };
  return categories;
};
