// Base class: Person
class Person {
  String name;
  int age;
  String id;

  Person(this.name, this.age, this.id);

  void displayInfo() {
    print("Name: $name, Age: $age, ID: $id");
  }
}

class Student extends Person {
  double gpa;

  Student(String name, int age, String id, this.gpa) : super(name, age, id);

  @override
  void displayInfo() {
    super.displayInfo();
    print("GPA: $gpa");
  }
}

class Instructor extends Person {
  double salary;

  Instructor(String name, int age, String id, this.salary)
      : super(name, age, id);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Salary: \$${salary.toStringAsFixed(2)}");
  }
}

class Course {
  String courseName;
  Instructor instructor;
  List<Student> students = [];

  Course(this.courseName, this.instructor);

  void addStudent(Student student) {
    students.add(student);
  }

  void displayStudents() {
    print("\nStudents enrolled in $courseName:");
    for (var student in students) {
      student.displayInfo();
      print("-------------------");
    }
  }
}

void main() {
  Instructor instructor = Instructor("Dr. Smith", 45, "I123", 50000);
  print("Instructor Details:");
  instructor.displayInfo();

  Student student1 = Student("Alice", 20, "S101", 3.8);
  Student student2 = Student("Bob", 22, "S102", 3.5);

  Course course = Course("Computer Science", instructor);

  course.addStudent(student1);
  course.addStudent(student2);

  course.displayStudents();
}
