import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:homeprofessional/models/service.dart';
// import 'package:homeprofessional/animation/FadeAnimation.dart';

import "package:firebase_core/firebase_core.dart";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Service> services = [
    Service('Cleaning',
        'https://img.icons8.com/external-vitaliy-gorbachev-flat-vitaly-gorbachev/2x/external-cleaning-labour-day-vitaliy-gorbachev-flat-vitaly-gorbachev.png'),
    Service('Plumber',
        'https://img.icons8.com/external-vitaliy-gorbachev-flat-vitaly-gorbachev/2x/external-plumber-labour-day-vitaliy-gorbachev-flat-vitaly-gorbachev.png'),
    Service('Electrician',
        'https://img.icons8.com/external-wanicon-flat-wanicon/2x/external-multimeter-car-service-wanicon-flat-wanicon.png'),
    Service('Painter',
        'https://img.icons8.com/external-itim2101-flat-itim2101/2x/external-painter-male-occupation-avatar-itim2101-flat-itim2101.png'),
    Service('Carpenter', 'https://img.icons8.com/fluency/2x/drill.png'),
    Service('Gardener',
        'https://img.icons8.com/external-itim2101-flat-itim2101/2x/external-gardener-male-occupation-avatar-itim2101-flat-itim2101.png'),
  ];

  List<dynamic> workers = [
    [
      'XYZ',
      'Plumber',
      'https://images.unsplash.com/photo-1506803682981-6e718a9dd3ee?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=c3a31eeb7efb4d533647e3cad1de9257',
      4.8
    ],
    [
      'QWERTY',
      'Cleaner',
      'https://thumbs.dreamstime.com/z/female-construction-worker-cartoon-character-colorful-73190552.jpg',
      4.6
    ],
    [
      'Ram Setu',
      'Driver',
      'https://cdn4.iconfinder.com/data/icons/characters-4/512/1-09-512.png',
      4.4
    ]
  ];
  @override
  Widget build(BuildContext context) {
    bool haveaccount=false;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.teal),
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical:15.0,horizontal:35.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      padding: EdgeInsets.only(left: 20.0, top: 25.0, right: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(25.0)
                      ),
                    child: Row(
                      children: [
                    if (haveaccount) ...[
                      ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),

                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/bus-tracking-9720b.appspot.com/o/9810438054%2Fprofile.jpg?alt=media&token=7ed54af5-9911-4c4b-a626-87536b08b2c5',
                            width:100,
                          )),
                      SizedBox(
                        width:20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          Text(
                            "Manish Neupane",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize:20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Electrician",
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                                fontSize: 18),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height:50,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Center(
                                child: TextButton(
                                  onPressed: () {},
                                  child:Text(
                                    'View Profile',
                                    style: TextStyle(color: Colors.white, fontSize: 14),
                                  ),
                                )
                            ),
                          ),
                        ],
                      ),

                    ]
                    else ...[
                      // Padding(padding: EdgeInsets.only(left:0,right:0),child:
                      Container(
                        height:60,
                        width:250,
                        // padding: EdgeInsets.only(left:35),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Center(
                          child: TextButton(
                            onPressed: ()
                            {
                              print("New Profile");
                            },
                            child:Row
                              (
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.all(2.0),
                                   child: CircleAvatar(
                                     backgroundImage: NetworkImage(
                                       'https://cdn-icons.flaticon.com/png/512/3899/premium/3899618.png?token=exp=1658999407~hmac=1ecc9808dfd4eabbbc00a4568e10a3e4'
                                         // 'https://img.icons8.com/material/344/user.png'
                                     ),
                                   ),
                                 ),
                            SizedBox(
                              width: 15,
                            ),

                            Text(
                                  'CREATE PROFILE',
                                  style: TextStyle(color: Colors.white, fontSize:18),
                                ),

                               ],
                            )
                          ),
                        ),
                      ),
                      // ),
                    ]
                      ],
      ),
    ),
                  ],
                ),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.all(10.0),
                //       child: CircleAvatar(
                //         backgroundImage: NetworkImage(
                //             'https://img.icons8.com/material/344/user.png'),
                //       ),
                //     ),
                //     IconButton(
                //       onPressed: () {},
                //       icon: Icon(
                //         Icons.notifications_none,
                //         color: Colors.grey.shade700,
                //         size: 30,
                //       ),
                //     ),
                //    ],
                // ),
               ),
              // Padding(
              //   padding: EdgeInsets.only(left: 20.0, top: 10.0, right: 10.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text(
              //         'Recent',
              //         style:
              //             TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              //       ),
              //       TextButton(
              //           onPressed: () {},
              //           child: Text(
              //             'View all',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),
              //           ))
              //     ],
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        offset: Offset(0, 4),
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                                            SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Categories',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'View all',
                                  style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontSize:16,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                        height:300,
                        child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 1.0,
                              crossAxisSpacing: 10.0,
                              mainAxisSpacing: 10.0,
                            ),
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: services.length,
                            itemBuilder: (BuildContext context, int index) {
                              return serviceContainer(services[index].imageURL,
                                  services[index].name, index);
                            }),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0, right: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Top Rated',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'View all',
                                ))
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        height: 120,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: workers.length,
                            itemBuilder: (BuildContext context, int index) {
                              return workerContainer(
                                  workers[index][0],
                                  workers[index][1],
                                  workers[index][2],
                                  workers[index][3]);
                            }),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  serviceContainer(String image, String name, int index) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(right: 8),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          border: Border.all(
            color: Colors.blue.withOpacity(0),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(image, height: 30),
              SizedBox(
                height: 20,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 12),
              )
            ]),
      ),
    );
  }

  workerContainer(String name, String job, String image, double rating) {
    return GestureDetector(
      child: AspectRatio(
        aspectRatio: 3.5,
        child: Container(
          margin: EdgeInsets.only(right: 20),
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey.shade200,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.network(image)),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      job,
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      rating.toString(),
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 20,
                    )
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
