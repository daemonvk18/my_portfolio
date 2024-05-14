class ProjectUtils {
  final String title;
  final String description;
  final String sourcecodelink;
  final String techstack1;
  final String techstack2;
  final String techstack3;
  final String imageurl;
  final String githubimageurl;

  ProjectUtils(
      {required this.description,
      required this.imageurl,
      required this.sourcecodelink,
      required this.techstack1,
      required this.techstack2,
      required this.techstack3,
      required this.title,
      required this.githubimageurl});
}

List<ProjectUtils> mainprojects = [
  ProjectUtils(
      description:
          "I led the development of an online education platform using Flutter and Firebase, optimizing user authentication and data storage with Google Cloud Firestore to enhance the learning experience.",
      imageurl: "Assets/course_app_coverphoto.png",
      sourcecodelink: "https://github.com/daemonvk18/course_app",
      techstack1: "Flutter",
      techstack2: "Dart",
      techstack3: "Firebase",
      title: "Course App",
      githubimageurl: "Assets/github-mark-white.png"),
  ProjectUtils(
      description:
          "A fully functional HABIT TRACKER app made with Flutter! I used Hive for the local storage backend and also used a heatmap package!",
      imageurl: "Assets/habit_tracker_cover_photo.png",
      sourcecodelink: "https://github.com/daemonvk18/habit_tracker",
      techstack1: "Flutter",
      techstack2: "Dart",
      techstack3: "Hive",
      title: "Habit Tracker",
      githubimageurl: "Assets/github-mark-white.png"),
  ProjectUtils(
      description:
          "Experience the classic Nokia Snake game, now on your mobile device. Compete for high scores and challenge friends with our Flutter and Firebase-powered remake.",
      imageurl: "Assets/snake_game_cover_photo.png",
      sourcecodelink: "https://github.com/daemonvk18/snake_game",
      techstack1: "Flutter",
      techstack2: "Dart",
      techstack3: "Firebase",
      title: "Snake Game",
      githubimageurl: "Assets/github-mark-white.png"),
  ProjectUtils(
      description:
          "Empower health decisions with our diabetic predictor powered by machine learning. Predict the likelihood of diabetes and take proactive steps towards a healthier future.",
      imageurl: "Assets/diabetics_predictor_cover_photo.png",
      sourcecodelink: "https://github.com/daemonvk18/diabetes_prediction",
      techstack1: "Keras",
      techstack2: "Python",
      techstack3: "Tensorflow",
      title: "Diabetics Predictor",
      githubimageurl: "Assets/github-mark-white.png"),
];

  ////PROJECTS////////

  
