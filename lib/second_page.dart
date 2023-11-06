import 'package:flutter/material.dart';
import 'package:lab_task11/Third_Page.dart';
class SecondPage extends StatelessWidget {

  final String applicant_name;
  final String applicant_cnic;
  final String applicant_contact;
  final String father_name;
  final String father_cnic;
  final String parent_contact;
  final String emergency_contact;
  final String email;
  final String dateofbirth;
  final String city;
  final String address;

   final String ssc_board;
   final String ssc_year;
  final String ssc_o_marks;
  final String ssc_t_marks;


  final String hssc_board;
  final String hssc_year;
  final String hssc_o_marks;
  final String hssc_t_marks;


  final String graduation_board;
  final String graduation_year;
  final String cgpa;
  final String grade;





    SecondPage({Key? key,
    required this.applicant_name,
    required this.applicant_cnic,
    required this.applicant_contact,
        required this.father_name,
        required this.father_cnic,
        required this.parent_contact,
    required this.emergency_contact,
  required this.email,
  required this.dateofbirth,
  required this.city,
  required this.address,

   required this.ssc_board,
   required this.ssc_year,
  required this.ssc_o_marks,
  required this.ssc_t_marks,


    required this.hssc_board,
    required this.hssc_year,
    required this.hssc_o_marks,
    required this.hssc_t_marks,


    required this.graduation_board,
    required this.graduation_year,
    required this.cgpa,
    required this.grade,



  }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return
      Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: Text('Federal Urdu University'),
          centerTitle: true,
          backgroundColor: Colors.teal,

        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               Padding(padding:EdgeInsets.all(4.0),
               child:  SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Row(children: [
                   Text('Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                   Container(
                       margin: EdgeInsets.all(8.0),
                       height: 30,
                       width: 250,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(
                           color: Colors.white,
                           border: Border.all(),
                           borderRadius: BorderRadius.circular(9)
                       ),


                       child: Text(applicant_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),
                 ],),
               ),
               ),
                Padding(padding:EdgeInsets.all(4.0),
                  child:  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      Text('CNIC',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                      Container(
                          margin: EdgeInsets.all(8.0),
                          height: 30,
                          width: 250,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(9)
                          ),


                          child: Text(applicant_cnic,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),
                    ],),
                  ),
                ),
                Padding(padding:EdgeInsets.all(4.0),
                  child:  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      Text(' Father Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                      Container(
                          height: 30,
                          width: 250,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(9)
                          ),


                          child: Text(father_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),
                    ],),
                  ),
                ),
                Padding(padding:EdgeInsets.all(4.0),
                  child:  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      Text('CNIC',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                      Container(
                          margin: EdgeInsets.all(8.0),
                          height: 30,
                          width: 250,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(9)
                          ),


                          child: Text(father_cnic,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),
                    ],),
                  ),
                ),
                Padding(padding:EdgeInsets.all(4.0),
                  child:  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      Text('Contact',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                      Container(
                          margin: EdgeInsets.all(8.0),
                          height: 30,
                          width: 250,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(9)
                          ),


                          child: Text(applicant_contact,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),
                    ],),
                  ),
                ),
                Padding(padding:EdgeInsets.all(4.0),
                  child:  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      Text('Parent Contact',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                      Container(
                          margin: EdgeInsets.all(8.0),
                          height: 30,
                          width: 250,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(9)
                          ),


                          child: Text(parent_contact,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),
                    ],),
                  ),
                ),
                Padding(padding:EdgeInsets.all(4.0),
                  child:  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      Text('Emergency Contact',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                      Container(
                          margin: EdgeInsets.all(8.0),
                          height: 30,
                          width: 250,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(9)
                          ),


                          child: Text(emergency_contact,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),
                    ],),
                  ),
                ),
                Padding(padding:EdgeInsets.all(4.0),
                  child:  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      Text('Email',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                      Container(
                          margin: EdgeInsets.all(8.0),
                          height: 30,
                          width: 250,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(9)
                          ),


                          child: Text(email,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),
                    ],),
                  ),
                ),
                Padding(padding:EdgeInsets.all(4.0),
                  child:  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      Text('DOB',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                      Container(
                          margin: EdgeInsets.all(8.0),
                          height: 30,
                          width: 250,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(9)
                          ),


                          child: Text(dateofbirth,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),
                    ],),
                  ),
                ),
                Padding(padding:EdgeInsets.all(4.0),
                  child:  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      Text('City',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                      Container(
                          margin: EdgeInsets.all(8.0),
                          height: 30,
                          width: 250,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(9)
                          ),


                          child: Text(city,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),
                    ],),
                  ),
                ),
                Padding(padding:EdgeInsets.all(4.0),
                  child:  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      Text('Address',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                      Container(
                          margin: EdgeInsets.all(8.0),
                          height: 100,
                          width: 500,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(9)
                          ),


                          child: Text(address,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),
                    ],),
                  ),
                ),
                Text('Educational History',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple,fontSize: 25),),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text('Passed Exam',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          Container(
                              margin: EdgeInsets.all(8.0),
                              height: 50,
                              width: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(9)
                              ),


                              child: Text('SSC',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.teal),)),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Board',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          Container(
                              margin: EdgeInsets.all(8.0),
                              height: 50,
                              width: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(9)
                              ),


                              child: Text(ssc_board,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Year',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          Container(
                              margin: EdgeInsets.all(8.0),
                              height: 50,
                              width: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(9)
                              ),


                              child: Text(ssc_year,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Obt.Marks',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          Container(
                              margin: EdgeInsets.all(8.0),
                              height: 50,
                              width: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(9)
                              ),


                              child: Text(ssc_o_marks,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Total Marks',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          Container(
                              margin: EdgeInsets.all(8.0),
                              height: 50,
                              width: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(9)
                              ),


                              child: Text(ssc_t_marks,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),
                        ],
                      ),

                    ],
                  ),

                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.all(8.0),
                          height: 50,
                          width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(9)
                          ),


                          child: Text('HSSC',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.teal),)),

                      Container(
                          margin: EdgeInsets.all(8.0),
                          height: 50,
                          width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(9)
                          ),


                          child: Text(hssc_board,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),

                      Container(
                          margin: EdgeInsets.all(8.0),
                          height: 50,
                          width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(9)
                          ),


                          child: Text(hssc_year,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),

                      Container(
                          margin: EdgeInsets.all(8.0),
                          height: 50,
                          width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(9)
                          ),


                          child: Text(hssc_o_marks,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),

                      Container(
                          margin: EdgeInsets.all(8.0),
                          height: 50,
                          width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(9)
                          ),


                          child: Text(hssc_t_marks,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),

                    ],
                  ),

                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.all(8.0),
                          height: 50,
                          width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(9)
                          ),


                          child: Text('Graduation',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19,color: Colors.teal),)),

                      Container(
                          margin: EdgeInsets.all(8.0),
                          height: 50,
                          width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(9)
                          ),


                          child: Text(graduation_board,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),

                      Container(
                          margin: EdgeInsets.all(8.0),
                          height: 50,
                          width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(9)
                          ),


                          child: Text(graduation_year,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),

                      Container(
                          margin: EdgeInsets.all(8.0),
                          height: 50,
                          width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(9)
                          ),


                          child: Text(cgpa,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),

                      Container(
                          margin: EdgeInsets.all(8.0),
                          height: 50,
                          width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(9)
                          ),


                          child: Text(grade,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),

                    ],
                  ),

                ),

              ],
            ),
          ),
        ),
      )
    ;
  }
}
