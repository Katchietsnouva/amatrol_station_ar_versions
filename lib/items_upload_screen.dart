import 'package:flutter/material.dart';

class ItemsUploadScreen extends StatefulWidget {


  @override
  State<ItemsUploadScreen> createState() => _ItemsUploadScreenState();
}

class _ItemsUploadScreenState extends State<ItemsUploadScreen>
{

  //upload form screen

  Widget uploadFormScreen()
  {
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
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return uploadFormScreen();
  }
}
