package io.flutter.plugins;

import io.flutter.plugin.common.PluginRegistry;
import io.flutter.firebase_auth.FirebaseAuthPlugin;
import io.flutter.plugins.googlesignin.GoogleSignInPlugin;

/**
 * Generated file. Do not edit.
 */
public final class GeneratedPluginRegistrant {
  public static void registerWith(PluginRegistry registry) {
    FirebaseAuthPlugin.registerWith(registry.registrarFor("io.flutter.firebase_auth.FirebaseAuthPlugin"));
    GoogleSignInPlugin.registerWith(registry.registrarFor("io.flutter.plugins.googlesignin.GoogleSignInPlugin"));
  }
}
