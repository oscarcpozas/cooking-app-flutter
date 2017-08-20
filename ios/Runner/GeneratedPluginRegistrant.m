//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"
#import <firebase_analytics/FirebaseAnalyticsPlugin.h>
#import <firebase_auth/FirebaseAuthPlugin.h>
#import <firebase_database/FirebaseDatabasePlugin.h>
#import <firebase_storage/FirebaseStoragePlugin.h>
#import <google_sign_in/GoogleSignInPlugin.h>
#import <image_picker/ImagePickerPlugin.h>

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [FirebaseAnalyticsPlugin registerWithRegistrar:[registry registrarForPlugin:@"FirebaseAnalyticsPlugin"]];
  [FirebaseAuthPlugin registerWithRegistrar:[registry registrarForPlugin:@"FirebaseAuthPlugin"]];
  [FirebaseDatabasePlugin registerWithRegistrar:[registry registrarForPlugin:@"FirebaseDatabasePlugin"]];
  [FirebaseStoragePlugin registerWithRegistrar:[registry registrarForPlugin:@"FirebaseStoragePlugin"]];
  [GoogleSignInPlugin registerWithRegistrar:[registry registrarForPlugin:@"GoogleSignInPlugin"]];
  [ImagePickerPlugin registerWithRegistrar:[registry registrarForPlugin:@"ImagePickerPlugin"]];
}

@end
