class DoctorModel{
  final String name;
  final String position;
  final int averageReview;
  final int totalReview;
  final String profile;

  DoctorModel(this.name, this.position, this.averageReview, this.totalReview, this.profile);
}

List<DoctorModel> nearbyDoctors=[
  DoctorModel("Luke Holland", "General Practitioner", 4, 230, 'assets/doctor_1.jpg'),
  DoctorModel("Louise Reid", "General Practitioner", 2, 156, 'assets/doctor_4.jpeg'),
  DoctorModel("Sophie Harmon", "General Practitioner", 3, 224, 'assets/doctor_3.jpg')
];