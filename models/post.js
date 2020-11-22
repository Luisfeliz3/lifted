module.exports = function (sequelize, DataTypes) {
  const post = sequelize.define("workouts", {
    title: {
      type: DataTypes.STRING(50),
    },
    description: {
      type: DataTypes.STRING(500),
    },
    img_or_video: {
      type: DataTypes.STRING,
    }
  });

  post.associate = function (models) {
    post.belongsTo(models.exercises, {
      foreignKey: {
        allowNull: false,
      },
    });
  };
  return post;
};
