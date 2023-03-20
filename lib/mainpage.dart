import 'package:flutter/material.dart';
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green,
        toolbarHeight: 80,
        centerTitle: true,
        title: Text("Driver Registration",style: TextStyle(fontSize: 25),),
       actions: [
         IconButton(
           icon: Icon(Icons.ac_unit_sharp),
           iconSize: 25,
           onPressed: () {  },
         ),
       ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("Enter the Following Details:",style: TextStyle(fontSize: 20,fontFamily: 'Roboto'),),
              ),
               SizedBox(height: 20,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person,color:Colors.red,),
                  labelText: "First Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
              ),

              ),
          ),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.contact_mail,color: Colors.red,),
                    labelText: "Last Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                ),
              ),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone_outlined,color: Colors.red,),
                    labelText: "Telephone Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  autofocus: true,
                ),
              ),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.credit_card,color: Colors.red,),
                    labelText: "CNIC Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                ),
              ),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.drive_eta,color: Colors.red),
                    labelText: "Driver License Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                ),
              ),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.drive_eta_outlined,color: Colors.red,),
                    labelText: "Vehicle Registration number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                ),
              ),
              SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Cancel",),
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                   minimumSize: Size(100, 40),
                   ),
                   ),
              ),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Save",),
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(100, 40),
                  ),
                ),
              ),


            ],
          ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
      ),
    );
  }
}
