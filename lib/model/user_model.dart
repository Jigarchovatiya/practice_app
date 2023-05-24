class EmployeeModel {
  String? companyName;
  String? companyTime;
  List<Employee>? employeeList;
  EmployeeModel({
    this.companyName,
    this.companyTime,
    this.employeeList,
  });

  EmployeeModel.fromJson(Map<String, dynamic> json) {
    companyName = json["company_name"];
    companyTime = json["company_time"];
    employeeList = (json["emp_list"] as List).map((value) => Employee.fromJson(value)).toList();
  }
}

class Employee {
  String? name;
  int? id;
  String? department;
  int? mobile;
  String? post;
  Employee({
    this.name,
    this.id,
    this.department,
    this.mobile,
    this.post,
  });

  Employee.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    id = json["id"];
    department = json["department"];
    mobile = json["mobile"];
    post = json["post"];
  }
}
