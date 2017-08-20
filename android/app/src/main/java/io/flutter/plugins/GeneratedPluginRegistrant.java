package io.flutter.plugins;

import io.flutter.plugin.common.PluginRegistry;
import io.flutter.firebaseanalytics.FirebaseAnalyticsPlugin;
import io.flutter.firebaseauth.FirebaseAuthPlugin;
import io.flutter.plugins.firebase.database.FirebaseDatabasePlugin;
import io.flutter.plugins.firebase.storage.FirebaseStoragePlugin;
import io.flutter.plugins.googlesignin.GoogleSignInPlugin;
import io.flutter.plugins.imagepicker.ImagePickerPlugin;

/**
 * Generated file. Do not edit.
 */
public final class GeneratedPluginRegistrant {
  public static void registerWith(PluginRegistry registry) {
    FirebaseAnalyticsPlugin.registerWith(registry.registrarFor("io.flutter.firebaseanalytics.FirebaseAnalyticsPlugin"));
    FirebaseAuthPlugin.registerWith(registry.registrarFor("io.flutter.firebaseauth.FirebaseAuthPlugin"));
    FirebaseDatabasePlugin.registerWith(registry.registrarFor("io.flutter.plugins.firebase.database.FirebaseDatabasePlugin"));
    FirebaseStoragePlugin.registerWith(registry.registrarFor("io.flutter.plugins.firebase.storage.FirebaseStoragePlugin"));
    GoogleSignInPlugin.registerWith(registry.registrarFor("io.flutter.plugins.googlesignin.GoogleSignInPlugin"));
    ImagePickerPlugin.registerWith(registry.registrarFor("io.flutter.plugins.imagepicker.ImagePickerPlugin"));
  }
}
