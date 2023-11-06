import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lab_task11/second_page.dart';
import 'package:multi_masked_formatter/multi_masked_formatter.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? gender;
  var namekey = GlobalKey<FormState>();
  var cnickey = GlobalKey<FormState>();
  var fnamekey = GlobalKey<FormState>();
  var fcnickey = GlobalKey<FormState>();
  var std_contact_key = GlobalKey<FormState>();
  var parent_contact_key = GlobalKey<FormState>();
  var emergency_contact_key = GlobalKey<FormState>();
  var emailkey = GlobalKey<FormState>();
  var dateofbirthkey = GlobalKey<FormState>();
  var citykey = GlobalKey<FormState>();
  var addresskey = GlobalKey<FormState>();

  var ssc_board_key = GlobalKey<FormState>();
  var ssc_year_key = GlobalKey<FormState>();
  var ssc_o_marks_key = GlobalKey<FormState>();
  var ssc_t_marks_key = GlobalKey<FormState>();

  var hssc_board_key = GlobalKey<FormState>();
  var hssc_year_key = GlobalKey<FormState>();
  var hssc_o_marks_key = GlobalKey<FormState>();
  var hssc_t_marks_key = GlobalKey<FormState>();
  var hssc = GlobalKey<FormState>();
  var graduation_board_key = GlobalKey<FormState>();
  var graduation_year_key = GlobalKey<FormState>();
  var cgpa_key = GlobalKey<FormState>();
  var grade_key = GlobalKey<FormState>();

  final applicant_name = TextEditingController();
  final applicant_cnic = TextEditingController();
  final father_name = TextEditingController();
  final father_cnic = TextEditingController();
  final student_contact = TextEditingController();
  final gardiean_contact = TextEditingController();
  final emergency_contact = TextEditingController();
  final dateofbirth = TextEditingController();
  final email = TextEditingController();
  final address = TextEditingController();
  final city = TextEditingController();
  final Provencecontroller = TextEditingController();

  final ssc_board = TextEditingController();
  final ssc_year = TextEditingController();
  final ssc_o_marks = TextEditingController();
  final ssc_t_marks = TextEditingController();

  final hssc_board = TextEditingController();
  final hssc_year = TextEditingController();
  final hssc_o_marks = TextEditingController();
  final hssc_t_marks = TextEditingController();

  final graduation_board = TextEditingController();
  final graduation_year = TextEditingController();
  final cgpa = TextEditingController();
  final grade = TextEditingController();

  //provence combo list
  final List<String> Provences = [
    'Punjab',
    'Sindh',
    'KPK',
    'Blochistan',
  ];
  String? selected_Provence;
  //list for degree
  final List<String> Degree_Program = [
    'BS',
    'MS',
    'M.Phil',
    'PHD',
  ];
  String? selected_Program;

  final List<String> Department = [
    'CS',
    'BBA',
    'Urdu',
    'English',
    'Applied physics',
    'IR',
    'Mathematics',
  ];
  String? selected_department;

  final List<String> Shift = [
    'MORNING',
    'EVENING',
  ];
  String? selected_shift;

  final List<String> campus = [
    'Islamabad',
    'Karachi',
  ];
  String? selected_campus;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Federal Urdu University '),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20, top: 10),
                    child: Text(
                      'Admission Form',
                      style: TextStyle(
                          color: Colors.teal,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                ),
                // TextField(
                //   controller: namecontroller,
                //   keyboardType: TextInputType.datetime,
                //   decoration: const InputDecoration(
                //     hintText:'please enter your name',
                //     border: OutlineInputBorder(),
                //
                //   ),
                // ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 100,
                        child: DropdownButton(
                          isExpanded: true,
                          hint: const Text(
                            "select Degree",
                            style: TextStyle(color: Colors.teal),
                          ),
                          dropdownColor: Colors.tealAccent,
                          items: Degree_Program.map(
                              (Degree) => DropdownMenuItem<String>(
                                    value: Degree,
                                    child: Text(
                                      Degree,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )).toList(),
                          value: selected_Program,
                          onChanged: (value) {
                            setState(() {
                              selected_Program = value as String;
                            });
                          },
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        child: DropdownButton(
                          isExpanded: true,
                          hint: const Text(
                            "select Program",
                            style: TextStyle(color: Colors.teal),
                          ),
                          dropdownColor: Colors.tealAccent,
                          items: Department.map(
                              (department) => DropdownMenuItem<String>(
                                    value: department,
                                    child: Text(
                                      department,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )).toList(),
                          value: selected_department,
                          onChanged: (value) {
                            setState(() {
                              selected_department = value as String;
                            });
                          },
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        child: DropdownButton(
                          isExpanded: true,
                          hint: const Text(
                            " select Shift",
                            style: TextStyle(color: Colors.teal),
                          ),
                          alignment: Alignment.center,
                          dropdownColor: Colors.tealAccent,
                          items: Shift.map((shift) => DropdownMenuItem<String>(
                                value: shift,
                                child: Text(
                                  shift,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              )).toList(),
                          value: selected_shift,
                          onChanged: (value) {
                            setState(() {
                              selected_shift = value as String;
                            });
                          },
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        child: DropdownButton(
                          isExpanded: true,
                          hint: const Text(
                            "select Campus",
                            style: TextStyle(color: Colors.teal),
                          ),
                          dropdownColor: Colors.tealAccent,
                          items: campus.map(
                                  (campus) => DropdownMenuItem<String>(
                                value: campus,
                                child: Text(
                                  campus,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )).toList(),
                          value: selected_campus,
                          onChanged: (value) {
                            setState(() {
                              selected_campus = value as String;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
      Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Form(
                  key: namekey,
                  child: TextFormField(
                    controller: applicant_name,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Name',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Your Name';
                      }
                    },
                  ),
                ),
              ),
              Expanded(
                child: Form(
                  key: cnickey,
                  child: TextFormField(
                    inputFormatters: [
                      MultiMaskedTextInputFormatter(
                          masks: ['aaaaa-xxxxaaa-x'], separator: '-')
                    ],
                    controller: applicant_cnic ,
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: ' CNIC',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Your Name';
                      }
                    },
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Form(
                  key: fnamekey,
                  child: TextFormField(
                    controller: father_name,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Father Name',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Father Name';
                      }
                    },
                  ),
                ),
              ),
              Expanded(
                child: Form(
                  key: fcnickey,
                  child: TextFormField(
                    inputFormatters: [
                      MultiMaskedTextInputFormatter(
                          masks: ['aaaaa-xxxxaaa-x'], separator: '-')
                    ],
                    controller: father_cnic,
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: ' CNIC',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter CNIC';
                      }
                    },
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Form(
                  key: std_contact_key,
                  child: TextFormField(
                    inputFormatters: [
                      MultiMaskedTextInputFormatter(
                          masks: ['aaaa-xxxxaaa'], separator: '-')
                    ],
                    controller: student_contact,
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Contact#',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'enter contact number';
                      }
                    },
                  ),
                ),
              ),
              Expanded(
                child: Form(
                  key: parent_contact_key,
                  child: TextFormField(
                    inputFormatters: [
                      MultiMaskedTextInputFormatter(
                          masks: ['aaaa-xxxxaaa'], separator: '-')
                    ],
                    controller: gardiean_contact,
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Parent contact',
                      hintStyle: TextStyle(fontSize: 13),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'enter gardiean contact number';
                      }
                    },
                  ),
                ),
              ),
              Expanded(
                child: Form(
                  key: emergency_contact_key,
                  child: TextFormField(
                    inputFormatters: [
                      MultiMaskedTextInputFormatter(
                          masks: ['aaaa-xxxxaaa'], separator: '-')
                    ],
                    controller: emergency_contact,
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Emergency Contact',
                      hintStyle: TextStyle(fontSize: 10.33),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'enter emergency contact number';
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Form(
                  key: emailkey,
                  child: TextFormField(

                    controller: email,
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: ' Email',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Email';
                      }
                    },
                  ),
                ),
              ),
              Expanded(
                child: Form(
                  key:dateofbirthkey,
                  child: TextFormField(
                    inputFormatters: [
                      MultiMaskedTextInputFormatter(
                          masks: ['MM/DD/YYYY'], separator: '/')
                    ],
                    controller: dateofbirth,
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'DOB (MM/DD/YYYY)',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter DOB';
                      }
                    },
                  ),
                ),
              ),
            ],
          ),

          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  width: 100,
                  child: DropdownButton(
                    isExpanded: true,
                    hint: const Text(
                      "select Provence",
                      style: TextStyle(color: Colors.teal),
                    ),
                    dropdownColor: Colors.tealAccent,
                    items: Provences.map(
                        (provence) => DropdownMenuItem<String>(
                              value: provence,
                              child: Text(
                                provence,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            )).toList(),
                    value: selected_Provence,
                    onChanged: (value) {
                      setState(() {
                        selected_Provence = value as String;
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: Form(
                  key: citykey,
                  child: TextFormField(
                    controller: city,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'City',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Your City';
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Form(
                  key: addresskey,
                  child: TextFormField(
                    maxLines: 2,
                    controller: address,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Address',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Your Address';
                      }
                    },
                  ),
                ),
              ),

            ],
          ),
           Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,

             children: [
              Text('SSC',style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold,fontSize: 18),),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Expanded(
                     child: Form(
                       key: ssc_board_key,
                       child: TextFormField(
                         controller: ssc_board,
                         autofocus: true,
                         keyboardType: TextInputType.text,
                         decoration: InputDecoration(
                           hintText: 'Board',
                           border: OutlineInputBorder(),
                         ),
                         validator: (value) {
                           if (value!.isEmpty) {
                             return 'fill it';
                           }
                         },
                       ),
                     ),
                   ),
                   Expanded(
                     child: Form(
                       key: ssc_year_key,
                       child: TextFormField(
                     controller: ssc_year,
                         autofocus: true,
                         keyboardType: TextInputType.number,
                         decoration: InputDecoration(
                           hintText: 'Year',
                           border: OutlineInputBorder(),
                         ),
                         validator: (value) {
                           if (value!.isEmpty) {
                             return 'fill it';
                           }
                         },
                       ),
                     ),
                   ),
                   Expanded(
                     child: Form(
                       key: ssc_o_marks_key,
                       child: TextFormField(
                         controller: ssc_o_marks,
                         autofocus: true,
                         keyboardType: TextInputType.number,
                         decoration: InputDecoration(
                           hintText: 'Obt.Marks',
                           border: OutlineInputBorder(),
                         ),
                         validator: (value) {
                           if (value!.isEmpty) {
                             return 'Enter obtained marks';
                           }
                         },
                       ),
                     ),
                   ),
                   Expanded(
                     child: Form(
                       key: ssc_t_marks_key,
                       child: TextFormField(
                         controller: ssc_t_marks,
                         autofocus: true,
                         keyboardType: TextInputType.number,
                         decoration: InputDecoration(
                           hintText: 'T.Marks',
                           border: OutlineInputBorder(),
                         ),
                         validator: (value) {
                           if (value!.isEmpty) {
                             return 'fill it';
                           }
                         },
                       ),
                     ),
                   ),
                 ],
               ),
               Text('HSSC',style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold,fontSize: 18),),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Expanded(
                     child: Form(
                       key: hssc_board_key,
                       child: TextFormField(
                         controller: hssc_board,
                         autofocus: true,
                         keyboardType: TextInputType.text,
                         decoration: InputDecoration(
                           hintText: 'Board',
                           border: OutlineInputBorder(),
                         ),
                         validator: (value) {
                           if (value!.isEmpty) {
                             return ' please fill it';
                           }
                         },
                       ),
                     ),
                   ),
                   Expanded(
                     child: Form(
                       key: hssc_year_key,
                       child: TextFormField(
                         controller: hssc_year,
                         autofocus: true,
                         keyboardType: TextInputType.number,
                         decoration: InputDecoration(
                           hintText: 'Year',
                           border: OutlineInputBorder(),
                         ),
                         validator: (value) {
                           if (value!.isEmpty) {
                             return 'fill it';
                           }
                         },
                       ),
                     ),
                   ),
                   Expanded(
                     child: Form(
                       key: hssc_o_marks_key,
                       child: TextFormField(
                         controller: hssc_o_marks,
                         autofocus: true,
                         keyboardType: TextInputType.number,
                         decoration: InputDecoration(
                           hintText: 'Obt.Marks',
                           border: OutlineInputBorder(),
                         ),
                         validator: (value) {
                           if (value!.isEmpty) {
                             return 'fill it';
                           }
                         },
                       ),
                     ),
                   ),
                   Expanded(
                     child: Form(
                       key: hssc_t_marks_key,
                       child: TextFormField(
                         controller: hssc_t_marks,
                         autofocus: true,
                         keyboardType: TextInputType.number,
                         decoration: InputDecoration(
                           hintText: 'T.Marks',
                           border: OutlineInputBorder(),
                         ),
                         validator: (value) {
                           if (value!.isEmpty) {
                             return 'fill it';
                           }
                         },
                       ),
                     ),
                   ),
                 ],
               ),
               Text('Graduation',style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold,fontSize: 18),),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Expanded(
                     child: Form(
                       key: graduation_board_key,
                       child: TextFormField(
                         controller: graduation_board,
                         autofocus: true,
                         keyboardType: TextInputType.text,
                         decoration: InputDecoration(
                           hintText: 'Board',
                           border: OutlineInputBorder(),
                         ),
                         validator: (value) {
                           if (value!.isEmpty) {
                             return 'fill it';
                           }
                         },
                       ),
                     ),
                   ),
                   Expanded(
                     child: Form(
                       key: graduation_year_key,
                       child: TextFormField(
                            controller: graduation_year,
                         autofocus: true,
                         keyboardType: TextInputType.number,
                         decoration: InputDecoration(
                           hintText: 'Year',
                           border: OutlineInputBorder(),
                         ),
                         validator: (value) {
                           if (value!.isEmpty) {
                             return 'fill it';
                           }
                         },
                       ),
                     ),
                   ),
                   Expanded(
                     child: Form(
                       key: cgpa_key,
                       child: TextFormField(
                         controller: cgpa,
                         autofocus: true,
                         keyboardType: TextInputType.number,
                         decoration: InputDecoration(
                           hintText: 'cgpa',
                           border: OutlineInputBorder(),
                         ),
                         validator: (value) {
                           if (value!.isEmpty) {
                             return 'fill it';
                           }
                         },
                       ),
                     ),
                   ),
                   Expanded(
                     child: Form(
                       key: grade_key,
                       child: TextFormField(
                         controller: grade,
                         autofocus: true,
                         keyboardType: TextInputType.text,
                         decoration: InputDecoration(
                           hintText: 'Grade',
                           border: OutlineInputBorder(),
                         ),
                         validator: (value) {
                           if (value!.isEmpty) {
                             return 'fill it';
                           }
                         },
                       ),
                     ),
                   ),
                 ],
               ),
             ],
           ),
               Padding(
                 padding: const EdgeInsets.all(12.0),
                 child:InkWell(
                   onTap:  () {
                     if(
                     namekey.currentState!.validate()
                     &cnickey.currentState!.validate()
                     &fnamekey.currentState!.validate()
                     &fcnickey.currentState!.validate()
                     &std_contact_key.currentState!.validate()
                     &parent_contact_key.currentState!.validate()
                     &emergency_contact_key.currentState!.validate()
                     &emailkey.currentState!.validate()
                     &dateofbirthkey.currentState!.validate()
                     &citykey.currentState!.validate()
                     &addresskey.currentState!.validate()
                     &ssc_board_key.currentState!.validate()
                     &ssc_year_key.currentState!.validate()
                     &ssc_t_marks_key.currentState!.validate()
                     &ssc_o_marks_key.currentState!.validate()
                     &hssc_board_key.currentState!.validate()
                     &hssc_year_key.currentState!.validate()
                     &hssc_t_marks_key.currentState!.validate()
                     &hssc_o_marks_key.currentState!.validate()
                     &graduation_board_key.currentState!.validate()
                     &graduation_year_key.currentState!.validate()
                     &cgpa_key.currentState!.validate()
                     &grade_key.currentState!.validate()
                     ){

                       Navigator.push(
                           context,
                           MaterialPageRoute(
                             builder: (context) => SecondPage(
                               applicant_name: applicant_name.text,
                               applicant_cnic: applicant_cnic.text,
                               father_name: father_name.text,
                               father_cnic: applicant_cnic.text,
                               applicant_contact: student_contact.text,
                               parent_contact: gardiean_contact.text,
                               emergency_contact: emergency_contact.text,
                               email:email.text,
                               dateofbirth:dateofbirth.text,
                               city:city.text,
                               address:address.text,

                               ssc_board:ssc_board.text,
                                ssc_year:ssc_year.text,
                               ssc_o_marks:ssc_o_marks.text,
                               ssc_t_marks:ssc_t_marks.text,

                               hssc_board:hssc_board.text,
                               hssc_year:hssc_year.text,
                               hssc_o_marks:hssc_o_marks.text,
                               hssc_t_marks:hssc_t_marks.text,

                               graduation_board:graduation_board.text,
                               graduation_year:graduation_year.text,
                               cgpa:cgpa.text,
                               grade:grade.text,


                             ),
                           ));
                     }

        },
                   child:  Container(

                     height: 30,
                     width: 100,
                     child: Text('SUBMIT',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                     alignment: Alignment.center,
                     decoration: BoxDecoration(
                         border: Border.all(),
                         borderRadius: BorderRadius.circular(9),
                         color: Colors.teal
                     ),
                   ),
                 )
               )


    //                 SingleChildScrollView(
    //                   scrollDirection: Axis.horizontal,
    //                   child: Row(
    //                     children: [
    //                       Column(
    //                         children: [
    //                           Container(
    //                             child: Text('HSSC',style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold),),
    //                           )
    //                         ],
    //                       ),
    //                       Column(
    //                         children: [
    //                           TextField(
    //
    //                             decoration: InputDecoration(
    //                               labelText: 'Year',
    //                               labelStyle: TextStyle(color: Colors.teal),
    //                               border: OutlineInputBorder(),
    //                             ),
    //                           )
    //                         ],
    //                       ),
    //                       Column(
    //                         children: [
    //                           TextField(
    //
    //                             decoration: InputDecoration(
    //                               labelText: 'Board',
    //                               labelStyle: TextStyle(color: Colors.teal),
    //                               border: OutlineInputBorder(),
    // )) ],
    //                       ),
    //                       Column(
    //                         children: [
    //                           TextField(
    //
    //                             decoration: InputDecoration(
    //                               labelText: 'Obtain Marks',
    //                               labelStyle: TextStyle(color: Colors.teal),
    //                               border: OutlineInputBorder(),
    // )) ],
    //                       ),
    //                       Column(
    //                         children: [
    //                           TextField(
    //
    //                             decoration: InputDecoration(
    //                               labelText: 'Total Marks',
    //                               labelStyle: TextStyle(color: Colors.teal),
    //                               border: OutlineInputBorder(),
    //                             )) ],
    //                       ),
    //                     ],
    //                   ),
    //                 )
        ],
      )

                // TextField(
                //   inputFormatters: [
                //     MultiMaskedTextInputFormatter(
                //         masks: ['aaaa-xxxxaaa'], separator: '-')
                //   ],
                //   controller: student_contact,
                //   autofocus: true,
                //   keyboardType: TextInputType.number,
                //   decoration: InputDecoration(
                //       labelText: 'Student contact number',
                //       hintText: '0000-0000000'),
                // ),
                // CustomCheckBoxGroup(
                //   buttonTextStyle: ButtonTextStyle(
                //     selectedColor: Colors.red,
                //     unSelectedColor: Colors.orange,
                //     textStyle:
                //         TextStyle(fontSize: 16, color: Colors.pinkAccent),
                //   ),
                //   unSelectedColor: Theme.of(context).canvasColor,
                //   buttonLables: [
                //     "M",
                //     "T",
                //     "W",
                //     "T",
                //     "F",
                //     "S",
                //     "S",
                //   ],
                //   buttonValuesList: [
                //     "Monday",
                //     "Tuesday",
                //     "Wednesday",
                //     "Thursday",
                //     "Friday",
                //     "Saturday",
                //     "Sunday",
                //   ],
                //   checkBoxButtonValues: (values) {
                //     print(values);
                //   },
                //   spacing: 0,
                //   defaultSelected: ["Monday"],
                //   horizontal: false,
                //   enableButtonWrap: false,
                //   width: 40,
                //   absoluteZeroSpacing: false,
                //   selectedColor: Theme.of(context).colorScheme.secondary,
                //   padding: 10,
                //   // enableShape: true,
                // ),
                // Column(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Text(
                //       "Gender",
                //       style: TextStyle(fontSize: 18),
                //     ),
                //     RadioListTile(
                //       title: Text("Male"),
                //       value: "male",
                //       groupValue: gender,
                //       onChanged: (value) {
                //         setState(() {
                //           gender = value.toString();
                //         });
                //       },
                //     ),
                //     RadioListTile(
                //       title: Text("Female"),
                //       value: "female",
                //       groupValue: gender,
                //       onChanged: (value) {
                //         setState(() {
                //           gender = value.toString();
                //         });
                //       },
                //     ),
                //     RadioListTile(
                //       title: Text("Other"),
                //       value: "other",
                //       groupValue: gender,
                //       onChanged: (value) {
                //         setState(() {
                //           gender = value.toString();
                //         });
                //       },
                //     ),
                //   ],
                // ),

                // ElevatedButton(
                //     onPressed: () {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //             builder: (context) => SecondPage(
                //                 name: namecontroller.text,
                //                 student_contact: student_contact.text),
                //           ));
                //     },
                //     child: Text('go to second secreen')),
              ],
            ),
          ),
        ));

  }

}
