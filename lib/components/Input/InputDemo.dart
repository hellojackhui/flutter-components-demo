import 'package:flutter/material.dart';


class InputDemo extends StatefulWidget {
  @override
  _InputDemoState createState() => _InputDemoState();
}

class _InputDemoState extends State<InputDemo> {
  var _textFieldValue = '';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextField(
        obscureText: true,
        keyboardType: TextInputType.visiblePassword,
        onChanged: (value){
          setState(() {
            _textFieldValue = value;
          });
        },
        decoration: InputDecoration(
          fillColor: Color(0x30cccccc),
          filled: true,
          prefixIcon: Icon(Icons.lock),
          labelText: '密码',
          labelStyle: TextStyle(color: Colors.red),
          helperText: '密码长度为6-10个字母',
          helperStyle: TextStyle(color: Colors.blue),
          helperMaxLines: 1,
          errorText: '密码输入错误',
          errorStyle: TextStyle(fontSize: 12),
          errorMaxLines: 1,
          errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          hintText: '请输入密码',
          hintStyle: TextStyle(color: Colors.grey),
          hintMaxLines: 1,
          counterText: '${_textFieldValue.length}/32'
        ),
      ),
    );
  }
}