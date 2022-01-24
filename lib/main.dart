// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:mayjuun_design_system/mayjuun_design_system.dart';
// ignore: unused_import
import 'package:mayjuun_design_system/src/avatars/large/AvatarLarge.dart';
import 'package:mayjuun_design_system/src/avatars/medium/AvatarMedium.dart';
import 'package:mayjuun_design_system/src/avatars/small/AvatarSmall.dart';
import 'package:mayjuun_design_system/src/enums/avartar.dart';
import 'package:mayjuun_design_system/src/enums/form_input_type.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.green,

          //TODO: add in the documentation
          elevatedButtonTheme: MayJuunButtonTheme.elevatedButtonTheme(),
          inputDecorationTheme: FormInputTheme.formTheme(
              enabledColor: LightThemeColors.enabledBorder,
              focusedColor: LightThemeColors.backgroundAccent,
              themeMode: ThemeModeType.lightTheme,
              formType: FormInputType.outline)),
      home: const MyHomePage(title: 'Design System Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isVisible = true;
  bool isVisible2 = true;
  bool isVisible3 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(20),
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //All the design system widgets to be tested should be thrown below.
            Text(
              'This is the widget displaying now',
              style: MayJuunType.heading1(),
            ),
            const SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    child: const Text('small')),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isVisible2 = !isVisible2;
                        });
                      },
                      child: const Text('Medium')),
                ),
                //MediaQuery.of(context).size.height * factor

                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isVisible3 = !isVisible3;
                      });
                    },
                    child: const Text('large')),
              ],
            ),
            Visibility(
                visible: isVisible,
                child: AvatarSmall.avatar(
                    AvatarGender.male,
                    AvatarMaturity.teenager,
                    AvatarSkinType.white,
                    Avatarhaircolor.black)),
            Visibility(
                visible: isVisible2,
                child: AvatarMedium.avatar(
                    AvatarGender.male,
                    AvatarMaturity.teenager,
                    AvatarSkinType.white,
                    Avatarhaircolor.black)),
            Visibility(
                visible: isVisible3,
                child: AvatarLarge.avatar(
                    AvatarGender.male,
                    AvatarMaturity.teenager,
                    AvatarSkinType.white,
                    Avatarhaircolor.black)),

            //This is where we display any widget that we are working on.
            Container(
                height: 200, width: 100, color: LightThemeColors.negative),
            const SizedBox(
              height: 30,
            ),
            // ElevatedButton(onPressed: () {}, child: const Text('Press me'))

            ButtonSmall.elevatedButtonComponent(
              prefix: Icons.lock,
              suffix: Icons.arrow_downward_outlined,
              child: Text(
                'Small',
                style: MayJuunType.label3(),
              ),
              onPressed: () {
                debugPrint('running');
              },
            ),
            const SizedBox(
              height: 30,
            ),

            ButtonMedium.elevatedButtonComponent(
              prefix: Icons.lock,
              suffix: Icons.arrow_downward_outlined,
              child: Text(
                'Medium',
                style: MayJuunType.label3(),
              ),
              onPressed: () {},
            ),
            const SizedBox(
              height: 30,
            ),

            ButtonLarge.elevatedButtonComponent(
              prefix: Icons.ac_unit,
              suffix: Icons.ac_unit,
              child: Text(
                'Large',
                style: MayJuunType.label3(),
              ),
              onPressed: () {},
            ),

            const SizedBox(
              height: 30,
            ),
            ButtonSmall.pillButton(
              prefix: Icons.lock,
              suffix: Icons.arrow_downward_outlined,
              // width: 150,
              child: Text(
                'Small Tag here',
                style: MayJuunType.label3(),
              ),
              onPressed: () {},
            ),
            const SizedBox(
              height: 30,
            ),

            ButtonMedium.pillButton(
              prefix: Icons.lock,
              suffix: Icons.arrow_downward_outlined,
              // width: 150,
              child: Text(
                'Medium Tag here',
                style: MayJuunType.label3(),
              ),
              onPressed: () {},
            ),
            const SizedBox(
              height: 30,
            ),
            ButtonLarge.pillButton(
              prefix: Icons.lock,
              suffix: Icons.arrow_downward_outlined,
              // width: 150,
              child: Text(
                'Medium Tag here',
                style: MayJuunType.label3(),
              ),
              onPressed: () {},
            ),
            const SizedBox(
              height: 30,
            ),
            ButtonLarge.pillButton(
              prefix: Icons.lock,
              suffix: Icons.arrow_downward_outlined,
              // width: 150,
              child: Text(
                'Medium Tag here',
                style: MayJuunType.label3(),
              ),
              onPressed: () {},
            ),
            const SizedBox(
              height: 30,
            ),
            ButtonSmall.squareButton(
              child: Text(
                '01',
                style: MayJuunType.label3(),
              ),
              onPressed: () {},
            ),
            const SizedBox(
              height: 30,
            ),
            ButtonSmall.roundButton(
              child: Text(
                '01',
                style: MayJuunType.label3(),
              ),
              onPressed: () {},
            ),
            const SizedBox(
              height: 30,
            ),
            TagsSmall(
              child: 'Small',
              color: Colors.purple,
              dismissable: true,
              type: TagTypes.outline,
              onCancel: () {
                debugPrint('cancelled');
              },
            ),
            const SizedBox(
              height: 30,
            ),

            TagsMedium(
              child: 'Medium',
              color: Colors.purple,
              dismissable: true,
              type: TagTypes.outline,
              onCancel: () {
                debugPrint('cancelled');
              },
            ),
            const SizedBox(
              height: 30,
            ),
            TagsLarge(
              child: 'Large',
              color: Colors.purple,
              dismissable: true,
              type: TagTypes.outline,
              onCancel: () {
                debugPrint('cancelled');
              },
            ),

            const SizedBox(
              height: 30,
            ),
            TextFormField(
              // controller: _formFieldControllers.firstNameController,
              decoration: const InputDecoration(
                  labelText: 'First Name',
                  hintText: 'John',
                  helperText: 'Only your name'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter a First name';
                } else {
                  return null;
                }
              },
            ),
          ],
        ),
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
