import 'package:flutter/material.dart';

/**
 * 通过自定义transitionsBuilder实现路由过渡动画
 *
 * 请切换不同注释分别查看
 */
class CustomRouter extends PageRouteBuilder {
  final Widget widget;

  CustomRouter(this.widget)
      : super(
            transitionDuration: const Duration(seconds: 2),
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return widget;
            },
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
//              淡出过度路由
//              return FadeTransition(
//                opacity: Tween(begin: 0.0, end: 1.0).animate(
//                  CurvedAnimation(
//                      parent: animation, curve: Curves.fastOutSlowIn),
//                ),
//                child: child,);

              //比例转换路由
              return ScaleTransition(
                scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                    parent: animation, curve: Curves.fastOutSlowIn)),
                child: child,
              );
              //旋转+比例转换路由
//              return RotationTransition(
//                turns: Tween(begin: -1.0, end: 1.0).animate(CurvedAnimation(
//                    parent: animation, curve: Curves.fastOutSlowIn)),
//                child: ScaleTransition(
//                    scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
//                        parent: animation, curve: Curves.fastOutSlowIn))),
//              );
              //幻灯片路由
//              return SlideTransition(
//                  position: Tween<Offset>(
//                          begin: Offset(0.0, -1.0), end: Offset(0.0, 0.0))
//                      .animate(CurvedAnimation(
//                          parent: animation, curve: Curves.fastOutSlowIn)));
            });
}
