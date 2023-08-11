import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SC2 extends StatefulWidget {
  static const String routeName = "/SC2";
  const SC2({super.key});

  @override
  State<SC2> createState() => _SC2State();
}

class _SC2State extends State<SC2> {
  final _controller = PageController();
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 702,
          child: PageView(
            controller: _controller,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (value) {
              setState(() {
                _selectedIndex = value;
              });
            },
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 29,
                        height: 16,
                        margin: const EdgeInsets.only(right: 16),
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff78746D)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 115,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          width: 375,
                          height: 446,
                          padding: const EdgeInsets.only(left: 16),
                          child: Column(
                            children: [
                              Container(
                                  width: 375,
                                  height: 264,
                                  child: Image.asset('asset/images/Sign.png')),
                              const SizedBox(
                                height: 16,
                              ),
                              Container(
                                width: 341,
                                height: 72,
                                child: const Center(
                                  child: Text(
                                    'Learn anytime \n and anywhere',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff3C3A36)),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 341,
                                height: 64,
                                child: const Center(
                                  child: Text(
                                    'Quarantine is the perfect time to spend your \n day learning something new, from anywhere!',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff78746D)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 69,
                        ),
                        Next(controller: _controller),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 29,
                          height: 16,
                          margin: const EdgeInsets.only(right: 16),
                          child: const Text(
                            'Skip',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff78746D)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 115,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: 375,
                            height: 446,
                            child: Column(
                              children: [
                                Container(
                                    width: 375,
                                    height: 264,
                                    child:
                                        Image.asset('asset/images/Sign.png')),
                                const SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  width: 341,
                                  height: 72,
                                  child: const Center(
                                    child: Text(
                                      'Find a course\nfor you',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff3C3A36)),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  width: 341,
                                  height: 64,
                                  child: const Center(
                                    child: Text(
                                      'Quarantine is the perfect time to spend your \n day learning something new, from anywhere!',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff78746D)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 69,
                          ),
                          Next(controller: _controller),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 29,
                          height: 16,
                          margin: const EdgeInsets.only(right: 16),
                          child: const Text(
                            'Skip',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff78746D)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 115,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: 375,
                            height: 446,
                            padding: const EdgeInsets.only(left: 16),
                            child: Column(
                              children: [
                                Container(
                                    width: 375,
                                    height: 264,
                                    child: Image.asset(
                                        'asset/images/Profile.png')),
                                const SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  width: 341,
                                  height: 72,
                                  child: const Center(
                                    child: Text(
                                      'Improve your skills',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff3C3A36)),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  width: 341,
                                  height: 64,
                                  child: const Center(
                                    child: Text(
                                      'Quarantine is the perfect time to spend your \n day learning something new, from anywhere!',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff78746D)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 69,
                          ),
                          Next(controller: _controller),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 311,
          height: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffE3562A)),
            child: Text(
              _selectedIndex == 2 ? "Let's Start" : "Next",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            onPressed: () async {
              if (_selectedIndex != 2) {
                _controller.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.bounceInOut);
              } else {
                Navigator.of(context).pushNamed('/LoginScreen');
                //pushNamed cái page bạn muốn
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                await prefs.setBool('screen', true);
              }
            },
          ),
        )
      ],
    ));
  }
}

class Next extends StatelessWidget {
  const Next({
    super.key,
    required PageController controller,
  }) : _controller = controller;

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: _controller,
      count: 3,
      axisDirection: Axis.horizontal,
      effect: const WormEffect(
          spacing: 8.0,
          radius: 100.0,
          dotWidth: 5.0,
          dotHeight: 5.0,
          paintStyle: PaintingStyle.stroke,
          strokeWidth: 1.5,
          dotColor: Colors.grey,
          activeDotColor: Colors.blue),
    );
  }
}
