# MayJuun Design System (MDS)

This is a design system that allows you use the [official mayjuun design](<https://www.figma.com/file/yNUOneqHN92b5QkMCnleVb/MayJuun-Design-System-(Copy)>) system in your flutter projects very easily.

## Installation

Add `mayjuun_design_system (MDS)` as a dependency in your pubspec.yaml file ([what?](https://flutter.io/using-packages/)).

Import Photo View:

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

- #### Button Types

  - ###### Large Buttons
    To invoke large buttons, simply call this method
    >
    ```dart
    ButtonLarge.elevatedButtonComponent();
    ```
    ```dart
    ButtonLarge.squareButton();
    ```
    ```dart
    ButtonLarge.roundButton();
    ```
  - ###### Medium Buttons
    To invoke large buttons, simply call this method
    >
    ```dart
    ButtonMedium.elevatedButtonComponent();
    ```
  - ###### Small Buttons
    To invoke large buttons, simply call this method
    >
    ```dart
    ButtonSmall.elevatedButtonComponent();
    ```
  - ###### Large Buttons
    To invoke large buttons, simply call this method
    >
    ```dart
    ButtonLarge.elevatedButtonComponent();
    ```
  - ###### Large Buttons
    To invoke large buttons, simply call this method
    >
    ```dart
    ButtonLarge.elevatedButtonComponent();
    ```
