import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 100.0;
  bool _checkBlock = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _createSlider(),
            _createCheckBox(),
            _createSwitch(),
            Expanded(child: _createImage())
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      // divisions: 30,
      onChanged: (_checkBlock)
          ? null
          : (value) {
              print(value);
              setState(() => _sliderValue = value);
            },
      value: _sliderValue,
      min: 10.0,
      max: 400.0,
    );
  }

  Widget _createImage() {
    return Image(
      image: NetworkImage(
          'https://i.pinimg.com/originals/a7/56/7f/a7567f714b011b75974aa6c79ca37ba5.png'),
      width: _sliderValue,
      fit: BoxFit.contain,
    );
  }

  Widget _createCheckBox() {
    // return Checkbox(
    //   value: _checkBlock,
    //   onChanged: (value) {
    //     setState(() {
    //       _checkBlock = value;
    //     });
    //   },
    // );

    return CheckboxListTile(
      onChanged: (value) {
        setState(() {
          _checkBlock = value;
        });
      },
      title: Text("Bloquear slider"),
      value: _checkBlock,
    );
  }

  _createSwitch() {
    return SwitchListTile(
      onChanged: (value) {
        setState(() {
          _checkBlock = value;
        });
      },
      title: Text("Bloquear slider"),
      value: _checkBlock,
    );
  }
}
