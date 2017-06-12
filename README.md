# Installation
### From CocoaPods
CocoaPods is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries like SVProgressHUD in your projects. First, add the following line to your Podfile:<br>
    
    pod 'LEEAlertView'
Second, install `LEEAlertView` into your project:<br>
    
    pod install  
### Manually
    Drag the LEEAlertView/LEEAlertView/LEEAlertView folder into your project.
# Swift
Even though `LEEAlertView` is written in Objective-C, it can be used in Swift with no hassle. If you use CocoaPods add the following line to your Podfile:<br>

    use_frameworks!    
 If you added LEEAlertView manually, just add a [bridging header](https://developer.apple.com/library/content/documentation/Swift/Conceptual/BuildingCocoaApps/MixandMatch.html) file to your project with the LEEAlertView header included.

# Usage
(see sample Xcode project)
![](https://github.com/jiangboLee/LEEAlertView/blob/master/1.gif)  <br><br><br>
#### simpleType
```
[LEEAlertViewController showWithTitle:@"警告" message:@"helloWoeld"];
```
```
[LEEAlertViewController showWithTitle:@"提示" message:@"你好啊" alertType:UIAlertControllerStyleActionSheet actionTitles:@[@"你", @"我"] handles:@[^(UIAlertAction *action){
       
        NSLog(@"你");
    }, ^(UIAlertAction *action){
        
        NSLog(@"我");
    }]];
```
```
[LEEAlertViewController setCancleActionStyle:0];
    [LEEAlertViewController setDestructiveActionStyle:1];
    [LEEAlertViewController showWithTitle:@"提示" message:@"你好啊" alertType:UIAlertControllerStyleActionSheet actionTitles:@[@"取消", @"警告"] handles:@[^(UIAlertAction *action){
        
        NSLog(@"取消");
    }, ^(UIAlertAction *action){
        
        NSLog(@"警告");
    }]];
```
```
[LEEAlertViewController showTextFieldWithTitle:@"提示" message:@"你好啊" actionTitles:@[@"取消"] handles:@[^(UIAlertAction *action){
        
        NSLog(@"输入的用户名%@",self.textField.text);
    }] textFieldHandles:@[^(UITextField * _Nonnull textField){
    
        textField.placeholder = @"登录";
        self.textField = textField;
    },^(UITextField * _Nonnull textField){
        
        textField.placeholder = @"密码";
    }]];
```
# License
LEEAlertView is distributed under the terms and conditions of the MIT license. The success, error and info icons are made by Freepik from Flaticon and are licensed under Creative Commons BY 3.0.
# contact me
if has some problem,send me msg: li15712691251@163.com, thanks~
