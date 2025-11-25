import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MediCall", style: TextStyle(color: Colors.blueAccent)),
        centerTitle: true,
        leading: Icon(Icons.menu),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.search),
          ),
          // IconButton(onPressed: (){}, icon: Icon(Icons.notifications,
          // color: Color.fromARGB(255, 64, 10, 151),
          // ))
        ],
      ),

      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey.shade200,
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                  // borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                prefixIcon: Icon(Icons.search),
                // suffix: Text("₦"), // good for currency symbol

                hintText: "Search for hospital or address",
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Image.asset(
            'assets/map.png',
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            //  width: MediaQuery.sizeOf(context).width * 0.8, 
            //   height: MediaQuery.sizeOf(context).height * 0.8,
            fit: BoxFit.fill,
          ),

          SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //first container
                Expanded(
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: Center(
                      child: Text(
                        "Nearby Hospitals",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),

                //second container
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print("Appointment booked!");
                    },
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.orangeAccent,
                      ),

                      child: Center(
                        child: Text(
                          "Book Appointment",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
