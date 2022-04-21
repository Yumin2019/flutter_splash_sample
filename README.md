# Flutter Splash Sample
Code from https://github.com/crazycodeboy/flutter_splash_screen

if you want to customize your own splash screen, you should use this sample for using it.  
The way that uses one bitmap and backgrond with theme can't easily customizing like [flutter_native_splash package](https://pub.dev/packages/flutter_native_splash)

and even you want to open dialog on it, it's not supporting.  
(flutter_native_splash uses their LaunchTheme, showing dialog on it didn't work for me)  
but with this sample. you can do it whatever.

the original sample is using old embedding v1.  
so I just moved code to new one with MethodChannel on Android.

it has 2 steps showing splash screen  
- android: FlutterActivity -> Dialog for customizing -> Dart screen  
- ios: LaunchScreen with storyboard -> Dart screen  
*Dart screen uses same pattern of splash screen using dp

on ios, we can easily customize the splash screen  
on android, use custom xml

# Steps
#### flutter android folder
1. copy and paste folder of android
- MainActivity and SplashScreen in app/main/kotlin folder.
- drawable, layout, values' style. (you can use your own image or others with flutter_activity.xml)
- app/build.gradle (add androidx dependency)

#### flutter ios folder
1. set LaunchScreen with storyboard, that's it

### dart lib folder
1. copy and past assets folder and update pubspec.yaml
2. main.dart
```
  assets:
     - assets/images/
```

in sample, I guess you cannot see your dialog screen(cause it's lightweight)  
if you want to see the change more clearly. follow these steps.
1. uncomment 40 ~ 45 line in SplashScreen of app/main/kotlin folder
2. comment 42 line in main.dart  

you can see easily these screens, all done.  
![녹화_2022_04_21_09_29_47_836](https://user-images.githubusercontent.com/49779139/164346200-a919d074-8116-418d-ab95-2cee441f4621.gif)
