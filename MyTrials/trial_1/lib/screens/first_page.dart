import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/humans_provider.dart';
import './second_page.dart';
import '../models/human.dart';

class FirstPage extends StatefulWidget {
  static const routeName = '/first-page';

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var _id = TextEditingController();

  var _name = TextEditingController();

  var _surname = TextEditingController();

  var _age = TextEditingController();

  Widget _buildTextField(TextEditingController controller, String labelText) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        border: UnderlineInputBorder(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var humanData = Provider.of<HumansProvider>(context, listen: false);
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Container(
          height: mediaQuery.size.height * 0.5,
          color: Colors.orange,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildTextField(_id, 'id'),
              _buildTextField(_name, 'name'),
              _buildTextField(_surname, 'surname'),
              _buildTextField(_age, 'age'),
              Container(
                width: mediaQuery.size.width * 0.5,
                child: RaisedButton(
                  onPressed: () => humanData.addHuman(
                    Human(
                      id: _id.text,
                      name: _name.text,
                      surname: _surname.text,
                      age: int.parse(_age.text),
                    ),
                  ),
                  child: Text(
                    'Create Human',
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
              ),
              Container(
                width: mediaQuery.size.width * 0.5,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(SecondPage.routeName);
                  },
                  child: Text(
                    'Go to Second-Page',
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
