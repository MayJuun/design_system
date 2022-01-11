# MayJuun Design System (MDS)

This is a design system that allows you use the [official mayjuun design](<https://www.figma.com/file/yNUOneqHN92b5QkMCnleVb/MayJuun-Design-System-(Copy)>) system in your flutter projects very easily.

## Installation

Add `mayjuun_design_system (MDS)` as a dependency in your pubspec.yaml file ([what?](https://flutter.io/using-packages/)).

Import Mayjuun Design System:

```dart
import 'package:mayjuun_design_system/mayjuun_design_system.dart';
```

### Docs & API

Here is an example calling a small sized button with prefix and suffix Icons and stlying the text with a standard mayjuun typography.

```dart
@override
Widget build(BuildContext context) {
 return ButtonSmall.elevatedButtonComponent(
    prefix: Icons.lock,
    suffix: Icons.arrow_downward_outlined,
    child: Text(
      'Small',
      style: MayJuunType.label3(),
    ),
    onPressed: () {
      debugPrint('running');
    },
  );
}
```

---

## Colors

The design system has a variety of colors that are implemented in two major ways:

- #### Color Codes

  This gives a list of all the colors that are defined in the [official mayjuun design](<https://www.figma.com/file/yNUOneqHN92b5QkMCnleVb/MayJuun-Design-System-(Copy)?node-id=2%3A2>). You can invoke a color code like so:

  >

  ```dart
  @override
  Widget build(BuildContext context) {
  return Container(
  height: 200, width: 100, color: ColorCodes.RED500;
  }
  ```

  > Avoid using color codes directly in your projects. Instead use **Color Labels** as discussed below

- #### Color Labels

  Color Labels are predefined color names that the design system uses. Under the hood, color labels are _Color Codes with a Labels._ It is done that way to improve UX. Color labels consistes of two classes which can be invoked like so.

  >

  - Light Theme Color Labels

    >

    ```dart
    @override
    Widget build(BuildContext context) {
      return Container(
      height: 200, width: 100, color: LightThemeColors.negative);
    }
    ```

  - Dark Theme Color Labels

    >

    ```dart
      @override
      Widget build(BuildContext context) {
        return Container(
        height: 200, width: 100, color: DarkThemeColors.positive);
      }

    ```

    **Note :**
    You should always use the appropiate color labels for the light and dark theme of your app as the colors vary between both color classes.

>

## Buttons

The buttons used in the Mayjuun Design System (MDS) speed up development by allowing you to pass multiple parameters. Just like the Colors, the MayJuun Buttons can be called as so:

>

```dart
  @override
  Widget build(BuildContext context) {
    return ButtonMedium.elevatedButtonComponent(
      prefix: Icons.lock,
      suffix: Icons.arrow_downward_outlined,
      child: Text(
        'Medium',
        style: MayJuunType.label3(),
      ),
      onPressed: () {
        debugPrint('anonymous function called');
      },
    );
  }

```

- #### Button Sizes

  There are generally 3 sizes of buttons in the MDS which are namely:

  - Large buttons

  ```dart
  ButtonLarge;
  ```

  - Medium Buttons

  ```dart
  ButtonMedium;
  ```

  - Small buttons

  ```dart
  ButtonSmall;
  ```

  These are static button classes, so you do not need to instantiate them.
  The differnce in these are simply **varying button heights**, the widths are of adaptable pixels as your design defines.

  >

- #### Button Types

  There are generally 4 button types that exists for all button sizes, which are namely:

  - Elevated Buttons
  - Square Buttons
  - Round Buttons
  - Pill Buttons

  - ###### Example Code

    Say we want to call each of the button types on the Large button size, we will go around it like so:

    >

    ```dart
    ButtonLarge.elevatedButtonComponent();

    ButtonLarge.squareButton();

    ButtonLarge.roundButton();

    ButtonLarge.pillButton();
    ```

    >

## Typograpghy

The MDS offers you typography strictly in terms of **components**. _[See more here](<https://www.figma.com/file/yNUOneqHN92b5QkMCnleVb/MayJuun-Design-System-(Copy)?node-id=253%3A947>)_

###### What does this mean ?

This means that you have the flexibility to customize your internal app theme typography via the `TextTheme`, and only use the MDS typography as a component where needed.
There are 4 major categories of typographys which are:

- Display
- Heading
- Label
- Paragraph

  >

  Mostly, these categories vary in `font-weight`, `font-size` and `line-height`. You can call the typography class as so:

  >

  ```dart

  @override
  Widget build(BuildContext context) {
    return  Text(
      'This is the widget displaying now',
      style: MayJuunType.heading1(),
      );
  }
  ```
## Avatars
Mayjuun design System (MDS) provides the option for selecting your own Avatars.

###### What does this mean ?
They are basically a visual form to represent a user or a component through which the user will be able identify themselves.

  ```dart
  bool isVisible3 = true;
  @override
ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isVisible3 = !isVisible3;
                      });
                    },
                    child: const Text('small')),
      ],
  ),
  ```
 Say we want the small avatar size, then we will call the function small.
 Visibility(visible: isVisible3, child: const Small()),

note : Here we have been using the visibility widget

#### Avatar Sizes
  There are generally 3 sizes of avatars in the MDS which are namely:
  
  - Large avatars 
  ```dart
  child: Image.asset('assets/avatars/Female_large_1.png'),
  ```

  - Medium avatars
  ```dart
   child: Image.asset('assets/avatars/Female_medium_1.png'),
  ```

  - Small avatars
  ```dart
  child: Image.asset('assets/avatars/Female_small_1.png'),
  ```
Note : MDS gives an option to select the type ( Male, female or nuetral) and size (large, medium or small)  with a lot of flexibility. 

###### Additional Styling

You can further enhance your typography styling by using either of these three approaches

- **Using the Type class methods parameters:**
  These allows you to change only the `color` and `font-weight` of the type

  >

  ```dart

  @override
  Widget build(BuildContext context) {
    return  Text(
      'This is the widget displaying now',
      style: MayJuunType.heading1(color: Colors.red, font-weight: FontWeight.w200),
      );
  }
  ```

- **`copywith()` Method**:
  An inbuit flutter method used on the type to be styled. [Read More](https://api.flutter.dev/flutter/material/TextTheme/copyWith.html)

  >

- **`apply()` Method**:
  An inbuit flutter method used on the type to be styled. [Read More](https://api.flutter.dev/flutter/painting/TextStyle/apply.html)

>

## Tags

MDS tags allow you a lot flexibilities when using tags.

>

```dart

@override
Widget build(BuildContext context) {
  return  TagsSmall(
    child: 'Small',
    color: Colors.purple,
    dismissable: true,
    type: TagTypes.outline,
    onCancel: () {
      debugPrint('cancelled');
    },
     );
}
```

- #### Tag Sizes

  There are generally 3 sizes of tags in the MDS which are namely:

  - Large Tags
    >

  ```dart
  TagsLarge(child: 'Tag Title');
  ```

  - Medium Tags
    >

  ```dart
  TagsMedium(child: 'Tag Title');
  ```

  - Small Tags
    >

  ```dart
  TagsSmall(child: 'Tag Title');
  ```

  >

- #### Tag Types

  There are generally 3 types of tags in the MDS which are namely:

  >

  - **Outline Tag**
    To make a tag an outline tag, simply pass the `TagType.outline` enum as a parameter to the Tags widget that is being called.
    >

  ```dart
  TagsLarge(child: 'Tag Title', type: TagTypes.outline);
  ```

  >

  - **Fill Tag**
    To make a tag a fill tag, simply pass the `TagType.fill` enum as a parameter to the Tags widget that is being called.
    >

  ```dart
  TagsLarge(child: 'Tag Title', type: TagTypes.fill);
  ```

  #### Tag parameters

  ```dart
  Color? color
  ```

  ```dart
  bool? dismissable
  ```

  ```dart
  String child //required
  ```

  ```dart
  void Function? onCancel;
  ```

  ```dart
  TagTypes type;
  ```

## Theming

The MDS themes is surprisingly very minimal, and the reason for that is to ensure that users are able to be very flexbile with their own themes and design their apps to their specific taste while leveraging the widget/component based design system. On top of that, the MDS offers you a component based theming capabilities such that, you can pass the available theme components as parameters into your `ThemeData()` . It is also interesting to note that while you're configuring the internal theme of your app, the MDS already offers componenets such as color codes, Color labels and typography, which makes it easier and less repetitive for you. This is the main reason while the MDS was designed to have a relatively small and only important theming components.

Below are some themeing components that can used in your `ThemeData()` parameters / decedants parameters.

>

- ### Elevated Button Theme

  You can pass the MDS button theme class as a parameter to the `elevatedButtonTheme` constructor:

  >

  ```dart
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: LightThemeColors.GRN400,
          elevatedButtonTheme: MayJuunButtonTheme.elevatedButtonTheme()
        ),
        home: const MyHomePage(title: 'Design System Demo'),
      );
    }
  ```

  > For theming, no parameters are required, because it is a more strict way of following the design system pixel for pixel.

- ### Form Theme (InputDecorationTheme)

  You can apply a general form theme to your flutter app simply calling the `FormInputTheme` class and applying its methods.

  ```dart
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: LightThemeColors.GRN400,
        elevatedButtonTheme: MayJuunButtonTheme.elevatedButtonTheme(),
        inputDecorationTheme: FormInputTheme.formTheme(formType: FormInputType.outline)
      ),
    );
  }
  ```

  #### `FormInputTheme.formTheme()` parameters

  ```dart
  Color enabledColor // required : border color of an enabled form
  ```

  ```dart
  Color focusedColor // required : border color of a focused form
  ```

  ```dart
  FormInputType formType //required: an enuming for selecting the form style
  ```

  ```dart
  ThemeModeType themeMode //required: for intelligently matching dark and light mode colors
  ```

  > You are adviced to maintain a single form style for your entire app except where it isn't exceedingly neccessary to do otherwise.

---

## Design System

The [official mayjuun design](<https://www.figma.com/file/yNUOneqHN92b5QkMCnleVb/MayJuun-Design-System-(Copy)>) system.

## Contribution

Any complaints, reviews or suggestions can be done by making a PR [(what's that ?)](https://opensource.com/article/19/7/create-pull-request-github) to this [repo](https://github.com/MayJuun/design_system)

## Support us

You reach to us at : info@mayjuun.com
