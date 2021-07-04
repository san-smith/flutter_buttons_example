import 'package:flutter/material.dart';
import 'package:flutter_buttons_example/presentation/home/label.dart';
import 'package:flutter_buttons_example/presentation/ui/base_button.dart';
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
        SizedBox(height: 20),
        _buildPrimaryRow(),
        SizedBox(height: 20),
        _buildSecondaryRow(),
        SizedBox(height: 20),
        _buildOutlinedRow(),
        SizedBox(height: 20),
        _buildErrorRow(),
      ],
    );
  }

  Widget _buildPrimaryRow() {
    return _buildRow([
      Label('Primary'),
      BaseButton(
        type: ButtonType.primary,
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
        child: _buttonTitle,
        onPressed: () {},
      ),
    ]);
  }

  Widget _buildRow(List<Widget> children) {
    return Row(
      children: children.map((e) => Expanded(child: Center(child: e))).toList(),
    );
  }
}
