import 'package:flutter/material.dart';

class PageViewExample extends StatefulWidget {
  @override
  State<PageViewExample> createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {
  PageController _controller = PageController(initialPage: 1);
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PageView Demo")),
      body: Column(
        children: [
          Container(
            height: 620,
            width:300,
            child: SingleChildScrollView(

              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                    child: PageView(
                      controller: _controller,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index) {
                        setState(() {
                          currentPage = index;
                        });
                      },
                      children: [
                        page(color: Colors.red, text: "Page 1"),
                        page(color: Colors.green, text: "Page 2"),
                        page(color: Colors.blue, text: "Page 3"),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  

                  SizedBox(
                    height: 400,
                    child: PageView(
                     pageSnapping: true,
                      controller: _controller,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index) {
                        setState(() {
                          currentPage = index;
                        });
                      },
                      children: [
                        Column(
                          children: [
                            Container(height: 100,width: 100,color: Colors.red),
                            SizedBox(height: 10,),
                            Container(height: 30,width: 30,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),)
                          ],
                        ),
                        Column(
                          children: [
                            Container(height: 100,width: 100,color: Colors.green),
                            SizedBox(height: 10,),
                            Container(height: 30,width: 30,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),)
                          ],
                        ),
                        Column(
                          children: [
                            Container(height: 100,width: 100,color: Colors.blue),
                            SizedBox(height: 10,),
                            Container(height: 30,width: 30,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blue),)
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.nextPage(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }

  Widget page({required Color color, required String text}) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}
