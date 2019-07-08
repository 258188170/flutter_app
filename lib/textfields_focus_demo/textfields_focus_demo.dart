import 'package:flutter/material.dart';
/**
 * 实现原理：
 * 使用FocusNode获取当前textField焦点
 * 在TextNode的textInputAction属性中选择键盘action（next/down）
 * 对于最后一个之前的TextField：在onSubmitted属性中解除当前focus状态
 * 再聚焦下一个FocusNode:FocusScope.of(context).requestFocus( nextFocusNode );
 * 对于最后一个TextField,直接解除focus并提交表单
 */

class EditFieldFocusDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return EditFieldFocusDemoState();
  }
}

class EditFieldFocusDemoState extends State<EditFieldFocusDemo> {
  TextEditingController _nameController, _passController;
  FocusNode _nameNode, _pwNode;

  @override
  void initState() {
    // TODO: implement initState
    _nameController = new TextEditingController();
    _passController = new TextEditingController();
    _nameNode = new FocusNode();
    _pwNode = new FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new SafeArea(
        child: new ListView(
          children: <Widget>[
            const SizedBox(
              height: 80.0,
            ),
            Center(
              child: new Text(
                'Login',
                style: new TextStyle(fontSize: 32.0),
              ),
            ),
            const SizedBox(
              height: 80.0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Material(
                borderRadius: BorderRadius.circular(10.0),
                child: TextField(
                  focusNode: _nameNode,
                  controller: _nameController,
                  obscureText: false,
                  textInputAction: TextInputAction.next,
                  onSubmitted: (input) {
                    _nameNode.unfocus();
                    FocusScope.of(context).requestFocus(_pwNode);
                  },
                  decoration: InputDecoration(
                    labelText: 'name',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Material(
                borderRadius: BorderRadius.circular(10.0),
                child: TextField(
                  focusNode: _pwNode,
                  controller: _passController,
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  onSubmitted: (input) {
                    _pwNode.unfocus();
                    //登录请求
                  },
                  decoration: InputDecoration(labelText: 'password'),
                ),
              ),
            ),
            const SizedBox(height: 40.0),
            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {},
                  child: Text('login'),
                  color: Colors.white,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
