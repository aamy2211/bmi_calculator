class BMIModel {
  final String gender;
  final int height;
  final int weight;
  final int age;

  BMIModel({
    required this.gender,
    required this.height,
    required this.weight,
    required this.age,
  });

  double calculateBMI() {
    return weight / ((height / 100) * (height / 100));
  }

  String getBMICategory(double bmi) {
    if (bmi < 18.5) {
      return 'UNDERWEIGHT';
    } else if (bmi >= 18.5 && bmi < 25) {
      return 'NORMAL';
    } else if (bmi >= 25 && bmi < 30) {
      return 'OVERWEIGHT';
    } else {
      return 'OBESE';
    }
  }

  String getAdvice(String category) {
    switch (category) {
      case 'UNDERWEIGHT':
        return 'You have a lower body weight. Eat more healthy food!';
      case 'NORMAL':
        return 'You have a normal body weight. Keep it up!';
      case 'OVERWEIGHT':
        return 'You have an increased body weight. Try to exercise more!';
      case 'OBESE':
        return 'You have a higher body weight. Please consult a doctor!';
      default:
        return 'Unknown';
    }
  }
}
