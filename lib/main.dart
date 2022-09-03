// ignore_for_file: public_member_api_docs, sort_constructors_first
// Getter and Setter

class Worker {
  String name;
  List<int> salary;

  Worker({
    required this.name,
    required this.salary,
  });

  double get avarageSalary {
    var result = 0;
    for (var i = 0; i < salary.length; i++) {
      result = result + salary[i];
    }
    return result / salary.length;
  }

  set fourthSalary(value) {
    salary.add(value);
  }
}

void main() {
  var Ivan = Worker(name: 'Ivan', salary: [140, 250, 30]);
  var Ira = Worker(name: 'Ira', salary: [100, 200, 300]);

  print(Ivan.salary);
  print(Ivan.avarageSalary);

  Ivan.fourthSalary = 555;

  print(Ivan.salary);
  print(Ivan.avarageSalary);
}
