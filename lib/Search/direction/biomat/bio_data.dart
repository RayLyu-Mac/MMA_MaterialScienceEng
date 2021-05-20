import 'package:flutter/material.dart';

class biomat_document {
  String course_name;
  String course_description;
  String other_info;
  String back_img;

  biomat_document(
      {this.course_description,
      this.back_img,
      this.course_name,
      this.other_info});
  List<biomat_document> document_list() {
    List biodata = List<biomat_document>();
    return biodata
      ..add(biomat_document(
          course_name: "Biomaterial",
          course_description: "In MSE",
          back_img:
              "https://github.com/RayLyu-Mac/MMA/blob/master/assest/search/direction/biomat.jpg?raw=true",
          other_info:
              "The fundamental understanding of material structure, particularly at the nano- and micro-scale, allow us to modify materials to control interactions at biointerfaces, develop advanced characterization tools and create new biofunctional materials. The area of Biomaterials is rapidly growing and offers many opportunities for Materials Engineers to put their problem solving skills to work to improve materials used in a range of health applications.;"))
      ..add(biomat_document(
          course_name: "Matls 4B03",
          course_description: "Tissue Eng",
          back_img:
              "https://github.com/RayLyu-Mac/MMA/blob/master/assest/search/direction/biomat.jpg?raw=true",
          other_info: "None"))
      ..add(biomat_document(
          course_name: "ChE 4T03",
          course_description:
              "Applications of Chemical Engineering in Medicine",
          back_img:
              "https://github.com/RayLyu-Mac/MMA/blob/master/assest/search/direction/biomat.jpg?raw=true",
          other_info: "None"))
      ..add(biomat_document(
          course_name: "CHEMBIO 3BM3",
          course_description: "Implanted Biomaterials",
          back_img:
              "https://github.com/RayLyu-Mac/MMA/blob/master/assest/search/direction/biomat.jpg?raw=true",
          other_info: "None"));
  }
}
