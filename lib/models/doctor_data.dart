// lib/models/doctor_data.dart

import '../models/doctor.dart';
import 'package:flutter/material.dart';
import '../models/doctor.dart';
import '/patient_screens/patient_screen2.dart';

List<Doctor> doctors = [
  Doctor(name: 'Doctor A', specialization: 'Cardiology', rating: 4.5),
  Doctor(name: 'Doctor B', specialization: 'Neurology', rating: 4.0),
  Doctor(name: 'Doctor C', specialization: 'Orthopedics', rating: 4.2),
  Doctor(name: 'Doctor D', specialization: 'Pediatrics', rating: 3.8),
  Doctor(name: 'Doctor E', specialization: 'Dermatology', rating: 4.7),
  Doctor(name: 'Doctor F', specialization: 'Oncology', rating: 4.1),
  Doctor(name: 'Doctor G', specialization: 'Radiology', rating: 4.3),
  Doctor(name: 'Doctor H', specialization: 'Psychiatry', rating: 3.9),
  Doctor(name: 'Doctor I', specialization: 'Urology', rating: 4.4),
  Doctor(name: 'Doctor J', specialization: 'Gastroenterology', rating: 4.0),
  Doctor(name: 'Doctor K', specialization: 'Rheumatology', rating: 3.7),
  Doctor(name: 'Doctor L', specialization: 'Pulmonology', rating: 4.6),
];

// lib/widgets/doctor_card.dart



class DoctorCard extends StatelessWidget {
  final Doctor doctor;

  DoctorCard({required this.doctor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PatientScreen2(doctor: doctor),
          ),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage('https://via.placeholder.com/150'), // Replace with actual image
                radius: 20,
              ),
              SizedBox(height: 10),
              Text(
                doctor.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14, // Adjust font size
                ),
              ),
              Text(
                doctor.specialization,
                style: TextStyle(
                  fontSize: 12, // Adjust font size
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.orange, size: 16),
                  Icon(Icons.star, color: Colors.orange, size: 16),
                  Icon(Icons.star, color: Colors.orange, size: 16),
                  Icon(Icons.star_half, color: Colors.orange, size: 16),
                  Icon(Icons.star_border, size: 16),
                  SizedBox(width: 5),
                  Text(
                    '${doctor.rating}',
                    style: TextStyle(fontSize: 12), // Adjust font size
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
