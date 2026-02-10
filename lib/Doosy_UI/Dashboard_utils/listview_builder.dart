import 'package:flutter/material.dart';

class ListViewBuilderCustomized extends StatefulWidget {
  List<String> image_data ;
  List<String> image_title;
  ListViewBuilderCustomized({super.key,required this.image_data,required this.image_title});

  @override
  State<ListViewBuilderCustomized> createState() => _ListviewBuilderCustomizedState(image_data,image_title);
}

class _ListviewBuilderCustomizedState extends State<ListViewBuilderCustomized> {
  List<String> image_data ;
  List<String> image_title;
  _ListviewBuilderCustomizedState(this.image_data,this.image_title);
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: image_data.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                child: SizedBox(
                  height: 70,
                  width: 82,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset(
                        image_data[index % image_data.length],
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                image_title[index % image_title.length],
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
