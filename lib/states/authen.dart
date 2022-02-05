import 'package:flutter/material.dart';
import 'package:myapp01/utility/my_constance.dart';
import 'package:myapp01/widgets/show_image.dart';
import 'package:myapp01/widgets/show_title.dart';

class Authen extends StatefulWidget {
  const Authen({Key? key}) : super(key: key);

  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  bool statusRedeye = true;

  @override
  Widget build(BuildContext context) {
    double wsize = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            buildImage(wsize),
            buildAppname(),
            buildUser(wsize),
            buildPassword(wsize),
          ],
        ),
      ),
    );
  }

  Row buildUser(double wsize) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16.0),
          width: wsize * 0.6,
          child: TextFormField(
            decoration: InputDecoration(
              labelStyle: myConstant().h3Style(),
              labelText: 'User',
              prefixIcon: Icon(
                Icons.account_circle_outlined,
                color: myConstant.dark,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: myConstant.dark),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: myConstant.light),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row buildPassword(double wsize) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16.0),
          width: wsize * 0.6,
          child: TextFormField(
            obscureText: statusRedeye,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    statusRedeye = !statusRedeye;
                  });
                },
                icon: Icon(
                  Icons.remove_red_eye,
                  color: myConstant.dark,
                ),
              ),
              labelStyle: myConstant().h3Style(),
              labelText: 'Password',
              prefixIcon: Icon(
                Icons.lock_outline,
                color: myConstant.dark,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: myConstant.dark),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: myConstant.light),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row buildAppname() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowTitle(
          title: myConstant.appname,
          textStyle: myConstant().h1Style(),
        ),
      ],
    );
  }

  Row buildImage(double wsize) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: wsize * 0.6,
          child: ShoeImage(pathImage: myConstant.image1),
        ),
      ],
    );
  }
}
