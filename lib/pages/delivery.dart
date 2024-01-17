// import 'package:Mobile_CA_2/assets/colors/colors.dart';
// import 'package:flutter/material.dart';

// class Delivery extends StatefulWidget {
//   const Delivery({super.key});

//   @override
//   State<Delivery> createState() => _DeliveryState();
// }

// class _DeliveryState extends State<Delivery> {
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: AppColors.pureWhite,
//         body: SafeArea(
//           child: Column(), 
//         ),
//       ),
//     );
//   }
// }

// import 'package:Mobile_CA_2/assets/colors/colors.dart';
// import 'package:flutter/material.dart';

// class Delivery extends StatefulWidget {
//   const Delivery({super.key});

//   @override
//   State<Delivery> createState() => _DeliveryState();
// }

// class _DeliveryState extends State<Delivery> {
//   get screenHeight => 1;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: AppColors.pureWhite,
//         body: SafeArea(
//           child: Column(
//             children: [
//               // Background Image        
//               const Image(
//                 image: AssetImage('lib/assets/images/map.png'),
//               ),
//               Expanded(
//                child: Container(

//                   height: screenHeight * 0.4,
//                   color: Colors.blue, // Set the color you want
//                   // child: const Center(
//                   //   child: Text(
//                   //     'Your Container Content',
//                   //     style: TextStyle(
//                   //       color: Colors.white,
//                   //       fontSize: 18.0,
//                   //     ),
//                   //   ),
//                   // ),
//                 ),
//                ),
//             ],  
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:Mobile_CA_2/assets/colors/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});
  
  get screenWidth => 100.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            // Background image
            Image.asset(
              'lib/assets/images/map.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            // Container on top
         Positioned(
              top: 40.0,
              left: 10.0,
              child: Container(
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    // Handle back arrow press
                  },
                ),
              ),
            ),
            Positioned(
              top: 40.0,
              right: 10.0,
              child: Container(
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color:AppColors.pureWhite,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.my_location,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    // Handle search icon press
                  },
                ),
              ),
            ),
           Align(
            alignment: Alignment.bottomCenter,
              child: Container( 
               padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 300.0,
                // width: screenWidth,
                decoration: BoxDecoration(
                  color: AppColors.pureWhite.withOpacity(1.0), // Adjust opacity if needed
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 5.0,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                //scroll bar
                child: Column (
                 children: [
                  const SizedBox(height: 10.0),
                  Container(
                    padding: const EdgeInsets.all(15.0),                   
                    width: 50,
                    height: 5,
                    alignment: Alignment.center,
                     decoration: BoxDecoration(
                     color: AppColors.bodyTextGrey.withOpacity(0.4), 
                     borderRadius: BorderRadius.circular(30.0),  
                     ),
                  ),

                 const SizedBox(height: 10.0),

                 Container(
                  child: const Text(
                    '10 minutes left',
                     style: TextStyle(color: AppColors.textBlack, fontFamily: 'bold'),
                  ),
                ),
                const SizedBox(height: 5.0),
                Container(
                  child: RichText(
                   text: const TextSpan(
                    style: TextStyle(
                     color: AppColors.textBlack,
                       fontFamily: 'regular',
                    ),
                 children: [
                   TextSpan(
                    text: 'Delivery to ',
                   ),
                   TextSpan(
                    text: 'JI. Kpg Sutoyo',
                    style: TextStyle(
                     fontWeight: FontWeight.bold,
                    ),
                   ),
                  ],
                 ),
                ),
               ),
              const SizedBox(height: 10.0), 
              Container(
               height: 5,
                child: Row(
                 children: [
                  Expanded(
                   child: Container(
                    color: AppColors.bargreen.withOpacity(1.0),
                    margin: const EdgeInsets.only(right: 5.0), // Adjust the gap between parts
                   ),
                  ),
                  Expanded(
                   child: Container(
                    color: AppColors.bargreen.withOpacity(1.0),
                    margin: const EdgeInsets.only(right: 5.0), // Adjust the gap between parts
                   ),
                  ),
                  Expanded(
                   child: Container(
                    color: AppColors.bargreen.withOpacity(1.0),
                    margin: const EdgeInsets.only(right: 5.0), // Adjust the gap between parts
                   ),
                  ),
                  Expanded(
                   child: Container(
                    color: AppColors.bodyTextGrey.withOpacity(1.0),
                   ),
                  ),
                 ],
               ),
              ),
              const SizedBox(height: 10.0),
             Container(          
               padding: const EdgeInsets.symmetric(horizontal: 12),
               height: 100,
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                color: AppColors.bodyTextGrey.withOpacity(0.25),
                width: 2.0,
                ),
               ),

             child: LayoutBuilder(
              builder: (context, constraints) {
              double quaterWidth = constraints.maxWidth / 4;
              return Row(
               children: [
                Container(
                 padding: const EdgeInsets.all(15),
                 width: quaterWidth,
                 height: quaterWidth,  
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(                      
                   color: AppColors.bodyTextGrey.withOpacity(0.35),
                   width: 2.0,        
                  ),
                 ),
            
            //  first container goes here
            child: Center(
              child: Image.asset(
                'lib/assets/images/bike.png', // Adjust the path to your image
                fit: BoxFit.contain, // Adjust the fit as needed
              ),
            ),
          ),
          
          Container(
             padding: const EdgeInsets.symmetric(horizontal:15),
             width: quaterWidth*3,
             height: quaterWidth,
            // second container goes here
            child: const Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.start,
              children:[                            
                Text(
                'Delivered your order',
                style: TextStyle(                
                     color: AppColors.textBlack,
                     fontFamily: 'bold',                     
                    ),
              ),
              Text(
                'We deliver your goods to you in the shortest posible time',
                 textAlign: TextAlign.left,
                 style: TextStyle(
                     color: AppColors.bodyTextGrey,
                       fontFamily: 'regular',
                       fontSize: 12,
                    ),
              ),

              ] 
            ),
          ),
        ],
      );
    },
  ),
)


                
                 ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

