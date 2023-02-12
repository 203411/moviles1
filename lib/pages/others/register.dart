import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: viewportConstraints.maxHeight,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: ListRegister(),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class ListRegister extends StatelessWidget {
  const ListRegister({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'LastName',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'FirstName',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Username',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Email',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Confirm Password',
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            SizedBox(
              width: 150,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Year',
                ),
              ),
            ),
            SizedBox(
              width: 150,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Year',
                ),
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: ElevatedButton(
            onPressed: null,
            child: Text('Registrar'),
          ),
        ),
      ],
    );
  }
}
