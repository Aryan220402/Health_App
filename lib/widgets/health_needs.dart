import 'package:flutter/material.dart';

class HealthNeeds extends StatefulWidget {
  const HealthNeeds({super.key});

  @override
  State<HealthNeeds> createState() => _HealthNeedsState();
}

class _HealthNeedsState extends State<HealthNeeds> {
  @override
  Widget build(BuildContext context) {
    List<CustomIcon> customIcons=[
      CustomIcon("assets/appointment.png", "Appointment"),
      CustomIcon("assets/hospital.png", "Hospital"),
      CustomIcon("assets/virus.png", "Covid-19"),
      CustomIcon("assets/more.png", "More"),
    ];
    List<CustomIcon> healthNeeds=[
      CustomIcon("assets/appointment.png", "Appointment"),
      CustomIcon("assets/hospital.png", "Hospital"),
      CustomIcon("assets/virus.png", "Covid-19"),
      CustomIcon("assets/drug.png", "Pharmacy"),
    ];
    List<CustomIcon> specialisedCared=[
      CustomIcon("assets/blood.png", "Diabetes"),
      CustomIcon("assets/health_care.png", "Health Care"),
      CustomIcon("assets/tooth.png", "Dental"),
      CustomIcon("assets/insurance.png", "Insured"),
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: List.generate(customIcons.length, (index) {
      return  Column(
          children: [
            InkWell(
              onTap: (){
                if(index == customIcons.length-1){
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.white,
                    showDragHandle: true,
                    builder: (context){
                    return Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      height: 350,
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Heath Needs Section
                          Text("Health Needs",
                          style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(healthNeeds.length, (index) {
                              return Column(
                                children: [
                                  InkWell(
                                    onTap:(){},
                                    borderRadius:BorderRadius.circular(90),
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      padding: const EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Theme
                                            .of(context)
                                            .colorScheme
                                            .primaryContainer
                                            .withOpacity(0.4),
                                      ),
                                      child: Image.asset(
                                          healthNeeds[index].icon
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 6,),
                                  Text(healthNeeds[index].name),
                                ],
                              );
                            },
                            ),
                          ),
                          const SizedBox(height: 30 ,),
                          //Specialised Care Section


                          Text("Specialised Care",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(specialisedCared.length, (index) {
                              return Column(
                                children: [
                                  InkWell(
                                    onTap:(){},
                                    borderRadius:BorderRadius.circular(90),
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      padding: const EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Theme
                                            .of(context)
                                            .colorScheme
                                            .primaryContainer
                                            .withOpacity(0.4),
                                      ),
                                      child: Image.asset(
                                          specialisedCared[index].icon
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 6,),
                                  Text(specialisedCared[index].name),
                                ],
                              );
                            },
                            ),
                          ),
                        ],
                      ),
                    );
                  },);
                }
              },
              borderRadius: BorderRadius.circular(90),
              child: Container(
                width: 60,
                height: 60,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme
                      .of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.4),
                ),
                child: Image.asset(customIcons[index].icon),
              ),
            ),
            const SizedBox(height: 6,),
            Text(customIcons[index].name),
          ],
        );
      }
      ),
    );
  }
}

class CustomIcon{
  final String icon;
  final String name;
  CustomIcon(this.icon, this.name);
}
