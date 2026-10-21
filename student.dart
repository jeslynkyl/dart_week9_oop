class Student {
  //public fields
  final String studentID;
  final String name;
  final String program;

  //private field
  final Map<String, double> _grades = {};
  //constructor
  Student(this.studentID, this.name, this.program);
  //getter  
  Map<String, double> get grades => Map.unmodifiable(_grades);

  //adding of grades with validation
  void addGrade(String subject, double grade) {
    if (grade < 0 || grade > 100) {
      print('Invalid grade for $subject. Must be 0-100.');
      return;
    }
    _grades[subject] = grade;
    print('$name: $subject = $grade recorded.');
  }

  //remove grades
  void removeGrade(String subject) {
    if (_grades.remove(subject) != null) {
      print('$name: $subject removed.');
    } else {
      print('$name: no grade found for $subject.');
    }
  }

  //compute average
  double computeAverage() {
    if (_grades.isEmpty) return 0;
    double sum = 0;
    for (var g in _grades.values) {
      sum += g;
    }
    return sum / _grades.length;
  }

  String get standing =>
      computeAverage() >= 75 ? 'Passed' : 'Needs improvement';

  void showReport() {
    print('--- $name ($studentID) | $program ---');
    _grades.forEach((subject, grade) => print(' $subject: $grade'));
    print(' Average: ${computeAverage().toStringAsFixed(2)} = $standing');
  }
}

void main() {
  var s1 = Student('2026-0001', 'Jeslyn Kyl Sesma', 'BSIT');
  var s2 = Student('2026-0002', 'Juan Dela Cruz', 'BSIT');

  s1.addGrade('Mobile Development', 90);
  s1.addGrade('Integrative Programming & Technologie', 89);
  s1.addGrade('Ethics', 150);
  s1.removeGrade('Life & Works of Rizal');

  s2.addGrade('Mobile Development', 85);
  s2.addGrade('Integrative Programming & Technologies', 80);

  List<Student> section = [s1, s2];

  print('\n ==== SECTION REPORT ====');
  for (var s in section) {
    s.showReport();
  }
}
