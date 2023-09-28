import 'package:flutter/material.dart';
import 'package:healthapp/models/doctor_model.dart';

class NearbyDoctors extends StatefulWidget {
  const NearbyDoctors({super.key});

  @override
  State<NearbyDoctors> createState() => _NearbyDoctorsState();
}

class _NearbyDoctorsState extends State<NearbyDoctors> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: List.generate(nearbyDoctors.length, (index) {
         return  Padding(
            padding: const EdgeInsets.only(bottom: 18),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: Colors.indigo,
                      image: DecorationImage(image: AssetImage(nearbyDoctors[index].profile),
                        fit: BoxFit.cover,
                      )
                  ),
                ),
                const SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nearbyDoctors[index].name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8,),
                    Text(nearbyDoctors[index].position),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 18,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4, right: 6),
                          child: Text(
                           nearbyDoctors[index].averageReview.toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Text(" ${nearbyDoctors[index].totalReview.toString()} Reviews")
                      ],
                    )
                  ],
                )
              ],
            ),
          );
  }
      ),
    );
  }
}
