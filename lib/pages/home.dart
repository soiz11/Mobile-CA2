import 'package:Mobile_CA_2/assets/colors/colors.dart';
import 'package:Mobile_CA_2/components/custom_btn.dart';
import 'package:Mobile_CA_2/components/tile.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.mainBodyBackground,
        body: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.37,
                  color: AppColors.backgroundBlack,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 30),
                              child: const Text(
                                "Location",
                                style: TextStyle(
                                  color: AppColors.bodyTextGrey,
                                  fontFamily: "Regular",
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 0),
                                  child: const Text(
                                    "Bilzen, Tanjungbalai",
                                    style: TextStyle(
                                      color: AppColors.pureWhite,
                                      fontFamily: "Bold",
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Transform.rotate(
                                  angle: 3 * 3.14 / 2, // 90 degrees in radians
                                  child: const Icon(
                                    Icons.arrow_back_ios_sharp,
                                    color: Colors.white,
                                    size: 17,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        'lib/assets/images/profile.png',
                        height: 45,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 120.0,
                  left: 30,
                  right: 30,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search coffee",
                      hintStyle: const TextStyle(
                        fontSize: 16,
                        color: AppColors.bodyTextGrey,
                        fontFamily: "Regular",
                      ),
                      filled: true,
                      fillColor: AppColors.searchBoxGrey,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 18.0, horizontal: 10.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 128.0,
                  right: 38,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 45,
                      height: 45,
                      color: AppColors.btnBrown,
                      child: Image.asset(
                        'lib/assets/images/filter.png',
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -70,
                  right: 30,
                  left: 30,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: double.infinity,
                      child: Image.asset(
                        'lib/assets/images/banner.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 40,
                  left: 55,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Container(
                      alignment: Alignment.center,
                      width: 60,
                      height: 25,
                      color: Colors.red,
                      child: const Text(
                        'Promo',
                        style: TextStyle(
                            color: AppColors.pureWhite,
                            fontSize: 14,
                            fontFamily: "Regular"),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -15,
                  left: 55,
                  child: Container(
                    width: 200,
                    height: 30,
                    color: AppColors.backgroundBlack,
                  ),
                ),
                const Positioned(
                  bottom: -15,
                  left: 55,
                  child: Text(
                    'Buy one get',
                    style: TextStyle(
                        color: AppColors.pureWhite,
                        fontSize: 32,
                        fontFamily: "Bold"),
                  ),
                ),
                Positioned(
                  bottom: -52,
                  left: 55,
                  child: Container(
                    width: 155,
                    height: 25,
                    color: AppColors.backgroundBlack,
                  ),
                ),
                const Positioned(
                  bottom: -55,
                  left: 55,
                  child: Text(
                    'one FREE',
                    style: TextStyle(
                        color: AppColors.pureWhite,
                        fontSize: 32,
                        fontFamily: "Bold"),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Container(
                  margin: const EdgeInsets.only(left: 30.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        CustomBtn(
                          btnText: "Cappuccino",
                          widthFactor: 0.3,
                          heightAmount: 40,
                          fontSize: 12,
                          marginX: 6,
                          onTap: () {},
                        ),
                        CustomBtn(
                          btnText: "Machiato",
                          widthFactor: 0.25,
                          heightAmount: 40,
                          marginX: 6,
                          fontSize: 12,
                          btnColor: AppColors.pureWhite,
                          btnTextColor: AppColors.textBlack,
                          onTap: () {},
                        ),
                        CustomBtn(
                          btnText: "Latte",
                          widthFactor: 0.2,
                          heightAmount: 40,
                          fontSize: 12,
                          marginX: 6,
                          btnColor: AppColors.pureWhite,
                          btnTextColor: AppColors.textBlack,
                          onTap: () {},
                        ),
                        CustomBtn(
                          btnText: "Americano",
                          widthFactor: 0.3,
                          heightAmount: 40,
                          fontSize: 12,
                          marginX: 6,
                          btnColor: AppColors.pureWhite,
                          btnTextColor: AppColors.textBlack,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 280,
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              child: GridView(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: [
                  Tile(),
                  Tile(),
                  Tile(),
                  Tile(),
                ],
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 25,
                  crossAxisSpacing: 25,
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Stack(
          children: [
            BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_rounded,
                    size: 30,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_rounded,
                    size: 30,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_bag,
                    size: 30,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.notifications_rounded,
                    size: 30,
                  ),
                  label: '',
                ),
              ],
              selectedItemColor:
                  AppColors.btnBrown, // Color for the selected item
              unselectedItemColor: Colors.grey, // Color for unselected items
              showUnselectedLabels:
                  true, // Set to false if you want to hide labels for unselected items
            ),
            Positioned(
              bottom: 20,
              left: 43,
              child: Image.asset(
                'lib/assets/images/Rectangle.png',
              ),
            )
          ],
        ),
      ),
    );
  }
}
