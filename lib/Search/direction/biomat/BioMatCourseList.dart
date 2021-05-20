import 'package:flutter/material.dart';
import '../pageMode.dart';
import 'bio_data.dart';

class biomatCourseList extends StatefulWidget {
  final biomat_document;

  const biomatCourseList({this.biomat_document, Key key}) : super(key: key);

  @override
  _biomatCourseListState createState() => _biomatCourseListState();
}

class _biomatCourseListState extends State<biomatCourseList> {
  List data_doc = List<biomat_document>();
  final PageController controller = PageController(initialPage: 0);
  @override
  void initState() {
    super.initState();
    data_doc = biomat_document().document_list();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: data_doc.length,
        scrollDirection: Axis.horizontal,
        controller: controller,
        itemBuilder: (BuildContext context, int itemIndex) {
          return (bio_mat_model(
              course_name: data_doc[itemIndex].course_name,
              back_img: data_doc[itemIndex].back_img,
              course_description: data_doc[itemIndex].course_description,
              other_info: data_doc[itemIndex].other_info));
        });
  }
}
