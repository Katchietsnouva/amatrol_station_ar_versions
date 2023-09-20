import 'dart:typed_data';

import 'package:flutter/material.dart';

class ItemsUploadScreen extends StatefulWidget {
  @override
  State<ItemsUploadScreen> createState() => _ItemsUploadScreenState();
}

class _ItemsUploadScreenState extends State<ItemsUploadScreen> {
  Uint8List? imageFileUint8List;
  bool isUploading = false;

  //upload form screen

  Widget uploadFormScreen() {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Upload New Item',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: [
          isUploading == true
              ? const LinearProgressIndicator(
                  color: Colors.purpleAccent,
                )
              : Container(),
          SizedBox(
            height: 230,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Center(
              child: imageFileUint8List != null ?
              Image.memory(imageFileUint8List!) : const Icon(
                Icons.image_not_supported,
                color: Colors.grey,
                size: 40,
              ),
            ),
          ),
          const Divider(
            color: ,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return uploadFormScreen();
  }
}
