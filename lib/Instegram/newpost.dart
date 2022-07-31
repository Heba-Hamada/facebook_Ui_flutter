import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Instegram/modelInstegram/post.dart';
import 'package:flutter_application_1/Instegram/modelInstegram/postResponse.dart';
import 'package:flutter_application_1/Instegram/modelInstegram/user.dart';
import 'package:flutter_application_1/data/instegramdata.dart';
import 'package:image_picker/image_picker.dart';

class newpost extends StatefulWidget {
  @override
  State<newpost> createState() => _newpostState();
}

class _newpostState extends State<newpost> {
  TextEditingController controller = TextEditingController();
  File? selectedimage;
  GlobalKey<FormState> keyform = GlobalKey();
  String? title;

  addnewpost() {}

  getimage() async {
    XFile? file = await ImagePicker().pickImage(source: ImageSource.gallery);
    selectedimage = File(file!.path);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('add post'),
      ),
      body: Form(
        key: keyform,
        child: Column(
          children: [
            InkWell(
              onTap: () {
                getimage();
              },
              child: Container(
                height: 300,
                width: double.infinity,
                child: selectedimage == null
                    ? Icon(Icons.add)
                    : Image.file(selectedimage!),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "its required ";
                } else if (value.length < 10) {
                  return "the v must e 10 ";
                }
              },
              controller: controller,
              //   onSubmitted: (V){},//ما بتاخد القيمة الا لمن يخلص ع الاخر ويحط ع الصح بالكيبورد
              // onChanged: (v){},//طول م انا بكتب ضل يعدل ع النص و ياخد قيمه جديدة ولو بدي اطبعها بطبع يعي طول م اتا بكتب بغير القيمة وهادا مش منطقي كتير
              decoration: InputDecoration(
                  hintText: "post content ",
                  filled: true,
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30))),
            ),
            ElevatedButton(
              child: Text("add post"),
              onPressed: () {
                if (selectedimage == null) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("you musr add image "),
                    action: SnackBarAction(
                      label: "ok",
                      onPressed: () {
                        ScaffoldMessenger.of(context).clearSnackBars();
                      },
                    ),
                  ));

                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text("you have add image first ".tr()),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("ok"))
                          ],
                        );
                      });
                } else if (keyform.currentState!.validate()) {
                } else {
                  User user = User("heba", "");
                  Post post = Post.fromfile(
                      content: controller.text, file: selectedimage);
                  PostResponse postResponse = PostResponse(user, post);
                  posts.add(postResponse);
                  Navigator.pop(context);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
