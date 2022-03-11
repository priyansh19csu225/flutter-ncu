// import 'package:flutter/material.dart';

// class RegistrationScreen extends StatefulWidget {
//   const RegistrationScreen({Key? key}) : super(key: key);

//   @override
//   State<RegistrationScreen> createState() => _RegistrationScreenState();
// }

// class _RegistrationScreenState extends State<RegistrationScreen> {
//   final _formKey = GlobalKey<FormState>();
//   bool isConditionsAccepted = false;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           image: DecorationImage(
//         colorFilter: ColorFilter.mode(
//             Colors.black45.withOpacity(0.6), BlendMode.dstATop),
//         fit: BoxFit.cover,
//         image: const AssetImage('assets/images/background.jpg'),
//       )),
//       child: SafeArea(
//         child: Material(
//           color: Colors.transparent,
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Form(
//               key: _formKey,
//               child: Column(
//                   // crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: [
//                     const SizedBox(
//                       height: 35,
//                     ),
//                     const Text(
//                       'Registration Form',
//                       style: TextStyle(fontSize: 35),
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     const Text('Join Us to explore new world'),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     CircleAvatar(
//                       radius: 54,
//                       backgroundColor: Colors.white,
//                       child: CircleAvatar(
//                         child: const Text(
//                           'P',
//                           style: TextStyle(color: Colors.white, fontSize: 44),
//                         ),
//                         radius: 50,
//                         backgroundColor: Colors.orange.shade400,
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     TextFormField(
//                       style: const TextStyle(),
//                       decoration: InputDecoration(
//                           isDense: true,
//                           hintText: 'Enter Name Here',
//                           label: const Text('Name'),
//                           labelStyle: const TextStyle(fontSize: 20),
//                           errorStyle: const TextStyle(color: Colors.red),
//                           focusedErrorBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: const BorderSide(
//                                   color: Colors.red, width: 2)),
//                           errorBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: const BorderSide(
//                                   color: Colors.red, width: 2)),
//                           focusedBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: const BorderSide(
//                                   color: Colors.blue, width: 2)),
//                           enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: const BorderSide(
//                                   color: Colors.white, width: 2))),
//                       validator: (String? value) {
//                         if (value == null || value.isEmpty) {
//                           return 'This is a required Field';
//                         }
//                         if (value.length < 6) {
//                           return 'Length should be greater than 6';
//                         }
//                         return null;
//                       },
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     TextFormField(
//                       style: const TextStyle(),
//                       decoration: InputDecoration(
//                           isDense: true,
//                           hintText: 'Enter Email Here',
//                           label: const Text('Email'),
//                           labelStyle: const TextStyle(fontSize: 20),
//                           errorStyle: const TextStyle(color: Colors.red),
//                           focusedErrorBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: const BorderSide(
//                                   color: Colors.red, width: 2)),
//                           errorBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: const BorderSide(
//                                   color: Colors.red, width: 2)),
//                           focusedBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: const BorderSide(
//                                   color: Colors.blue, width: 2)),
//                           enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: const BorderSide(
//                                   color: Colors.white, width: 2))),
//                       validator: (String? value) {
//                         if (value == null || value.isEmpty) {
//                           return 'This is a required Field';
//                         }
//                         if (!(value.contains('@')) || !(value.contains('.'))) {
//                           return 'Email should be valid form';
//                         }
//                         return null;
//                       },
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     Text('Select Hobbies'),
//                     Row(
//                       children: [
//                         Checkbox(
//                             activeColor: Colors.amber,
//                             value: isConditionsAccepted,
//                             onChanged: (value) {
//                               print(value);
//                               setState(() {
//                                 isConditionsAccepted = value!;
//                               });
//                             }),
//                         Text('Accept Conditions'),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                       ],
//                     ),
//                     RawMaterialButton(
//                       constraints: const BoxConstraints.tightFor(
//                           width: double.infinity, height: 40),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(50)),
//                       fillColor: Colors.pink.shade600,
//                       hoverColor: Colors.pink.shade100,
//                       onPressed: () {
//                         if (_formKey.currentState!.validate()) {
//                           _formKey.currentState?.save();
//                         }
//                       },
//                       child: const Text('Register',
//                           style: TextStyle(fontSize: 20)),
//                     )
//                   ]),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  _FormScreenState createState() => _FormScreenState();
}

enum Gender {
  male,
  female,
  other,
}

class _FormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>();
  final Map<String, dynamic> hobbies = {
    "Football": false,
    "Cricket": false,
    "Kabbadi": false,
    "Kusti": false,
  };
  Gender selectedGender = Gender.male;
  bool isIndian = false;

  //location
  final List<String> locations = ['Delhi', 'Mumbai', 'Kolkata'];
  String selectedLocation = "Delhi";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4), BlendMode.dstATop),
            image: const AssetImage("assets/images/background.jpg"),
          ),
        ),
        child: Material(
          color: Colors.transparent,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      CircleAvatar(
                        radius: 74,
                        backgroundColor: Colors.pink,
                        child: CircleAvatar(
                          radius: 70,
                          backgroundColor: Colors.pink.shade100,
                          child: const Text(
                            "A",
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        "Registration Form",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text("register your self to have fun"),
                      const SizedBox(height: 30),
                      TextFormField(
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.account_circle_outlined,
                            color: Colors.pink.shade200,
                            size: 30,
                          ),
                          labelText: "Name",
                          labelStyle: const TextStyle(color: Colors.pink),
                          hintText: "Enter your name",
                          hintStyle: TextStyle(
                            color: Colors.pink.shade300,
                          ),
                          isDense: true,
                          filled: true,
                          fillColor: const Color(0xFF0E3311).withOpacity(0.5),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.pink,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.pink,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.red,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.red,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Name can\'t be empty';
                          }
                          if (value.length < 6) {
                            return 'Name length must be > 6';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.email,
                              color: Colors.pink.shade200,
                              size: 30,
                            ),
                            labelText: "Email",
                            labelStyle: const TextStyle(color: Colors.pink),
                            hintText: "Enter your email",
                            hintStyle: TextStyle(
                              color: Colors.pink.shade300,
                            ),
                            isDense: true,
                            filled: true,
                            fillColor: const Color(0xFF0E3311).withOpacity(0.5),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.pink,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.pink,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter email';
                            }
                          }),
                      const SizedBox(height: 20),
                      TextFormField(
                          obscureText: true,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.security,
                              color: Colors.pink.shade200,
                              size: 30,
                            ),
                            labelText: "Password",
                            labelStyle: const TextStyle(color: Colors.pink),
                            hintText: "Enter your password",
                            hintStyle: TextStyle(
                              color: Colors.pink.shade300,
                            ),
                            isDense: true,
                            filled: true,
                            fillColor: const Color(0xFF0E3311).withOpacity(0.5),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.pink,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.pink,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter password';
                            }
                          }),
                      const SizedBox(height: 20),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Select Hobbies",
                          textAlign: TextAlign.start,
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      _buildHobbiesWidget(),
                      const SizedBox(height: 20),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Select Gender",
                          textAlign: TextAlign.start,
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      RadioListTile(
                        value: Gender.male,
                        groupValue: selectedGender,
                        onChanged: (value) {
                          setState(() {
                            selectedGender = value as Gender;
                          });
                        },
                        title: const Text("Male"),
                      ),
                      RadioListTile(
                        value: Gender.female,
                        groupValue: selectedGender,
                        onChanged: (value) {
                          setState(() {
                            selectedGender = value as Gender;
                          });
                        },
                        title: Text("Female"),
                      ),
                      RadioListTile(
                        value: Gender.other,
                        groupValue: selectedGender,
                        onChanged: (value) {
                          setState(() {
                            selectedGender = value as Gender;
                          });
                        },
                        title: Text("Other"),
                      ),
                      const SizedBox(height: 20),
                      DropdownButtonFormField<String>(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFF0E3311).withOpacity(0.5),
                            isDense: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.pink,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          value: selectedLocation,
                          isExpanded: true,
                          items: locations
                              .map(
                                (location) => DropdownMenuItem<String>(
                                  value: location,
                                  child: Text(location),
                                ),
                              )
                              .toList(),
                          onChanged: (value) {
                            selectedLocation = value!;
                          }),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Text("Are you Indian?"),
                          Switch.adaptive(
                              value: isIndian,
                              onChanged: (value) {
                                setState(
                                  () {
                                    isIndian = value;
                                  },
                                );
                              }),
                        ],
                      ),
                      const SizedBox(height: 40),
                      RawMaterialButton(
                        fillColor: Colors.pink,
                        constraints: const BoxConstraints.expand(
                          width: double.infinity,
                          height: 40,
                        ),
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(50)),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                          }
                        },
                        child: const Text(
                          "SUBMIT",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _buildHobbiesWidget() {
    return ListView(
      shrinkWrap: true,
      children: hobbies.keys.map((String key) {
        return CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          value: hobbies[key],
          onChanged: (value) {
            setState(() {
              hobbies[key] = value;
            });
          },
          title: Text(key),
        );
      }).toList(),
    );

    // return hobbies
    //     .map((hobby) => CheckboxListTile(
    //           value: false,
    //           onChanged: (value) {},
    //           title: Text(hobby),
    //         ))
    //     .toList();
  }
}
