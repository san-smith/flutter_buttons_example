import 'package:flutter/material.dart';
import 'package:flutter_buttons_example/presentation/home/label.dart';
import 'package:flutter_buttons_example/presentation/ui/base_button.dart';
import 'package:flutter_buttons_example/presentation/ui/button_scale.dart';
import 'package:flutter_buttons_example/presentation/ui/button_type.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget get _buttonTitle => Text('button');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _buildGrid(),
      ),
    );
  }

  Widget _buildGrid() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildTitleRow(),
        SizedBox(height: 20),
        _buildPrimaryRow(),
        SizedBox(height: 20),
        _buildSecondaryRow(),
        SizedBox(height: 20),
        _buildOutlinedRow(),
        SizedBox(height: 20),
        _buildErrorRow(),
        SizedBox(height: 20),
        _buildCustomRow()
      ],
    );
  }

  Widget _buildTitleRow() {
    return _buildRow([
      SizedBox(),
      Label('Small'),
      Label('Medium'),
      Label('Large'),
    ]);
  }

  Widget _buildPrimaryRow() {
    return _buildRow([
      Label('Primary'),
      BaseButton(
        type: ButtonType.primary,
        scale: ButtonScale.small,
        child: _buttonTitle,
        onPressed: () {},
      ),
      BaseButton(
        type: ButtonType.primary,
        scale: ButtonScale.medium,
        child: _buttonTitle,
        onPressed: () {},
      ),
      BaseButton(
        type: ButtonType.primary,
        scale: ButtonScale.large,
        child: _buttonTitle,
        onPressed: () {},
      ),
    ]);
  }

  Widget _buildSecondaryRow() {
    return _buildRow([
      Label('Secondary'),
      BaseButton(
        type: ButtonType.secondary,
        scale: ButtonScale.small,
        child: _buttonTitle,
        onPressed: () {},
      ),
      BaseButton(
        type: ButtonType.secondary,
        scale: ButtonScale.medium,
        child: _buttonTitle,
        onPressed: () {},
      ),
      BaseButton(
        type: ButtonType.secondary,
        scale: ButtonScale.large,
        child: _buttonTitle,
        onPressed: () {},
      ),
    ]);
  }

  Widget _buildOutlinedRow() {
    return _buildRow([
      Label('Outlined'),
      BaseButton(
        type: ButtonType.outlined,
        scale: ButtonScale.small,
        child: _buttonTitle,
        onPressed: () {},
      ),
      BaseButton(
        type: ButtonType.outlined,
        scale: ButtonScale.medium,
        child: _buttonTitle,
        onPressed: () {},
      ),
      BaseButton(
        type: ButtonType.outlined,
        scale: ButtonScale.large,
        child: _buttonTitle,
        onPressed: () {},
      ),
    ]);
  }

  Widget _buildErrorRow() {
    return _buildRow([
      Label('Error'),
      BaseButton(
        type: ButtonType.error,
        scale: ButtonScale.small,
        child: _buttonTitle,
        onPressed: () {},
      ),
      BaseButton(
        type: ButtonType.error,
        scale: ButtonScale.medium,
        child: _buttonTitle,
        onPressed: () {},
      ),
      BaseButton(
        type: ButtonType.error,
        scale: ButtonScale.large,
        child: _buttonTitle,
        onPressed: () {},
      ),
    ]);
  }

  Widget _buildCustomRow() {
    return _buildRow([
      Label('Custom style'),
      BaseButton(
        type: ButtonType.primary,
        scale: ButtonScale.small,
        child: _buttonTitle,
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: Colors.green,
          primary: Colors.yellow,
        ),
      ),
      BaseButton(
        type: ButtonType.primary,
        scale: ButtonScale.medium,
        child: _buttonTitle,
        onPressed: () {},
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: Size(60, 60),
          shape: StadiumBorder(),
          elevation: 5,
        ),
      ),
      BaseButton(
        type: ButtonType.outlined,
        scale: ButtonScale.large,
        child: _buttonTitle,
        onPressed: () {},
        style: TextButton.styleFrom(
          side: BorderSide(color: Colors.green, width: 3),
          shape: StadiumBorder(),
        ),
      ),
    ]);
  }

  Widget _buildRow(List<Widget> children) {
    return Row(
      children: children.map((e) => Expanded(child: Center(child: e))).toList(),
    );
  }
}
