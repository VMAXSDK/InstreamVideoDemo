-keepattributes *Annotation*,JavascriptInterface,Exceptions,InnerClasses,Signature,*Annotation*,EnclosingMethod,*Annotation*,Signature

-dontwarn com.google.**
-dontwarn com.google.firebase.**
-dontwarn com.google.android.gms.**

-keep public class com.vmax.android.ads.api.VmaxAdView {
    public <fields>;
    public <methods>;
}

-keep public class com.vmax.android.ads.api.NativeAd {
    public <fields>;
    public <methods>;
}

-keep public class com.vmax.android.ads.api.VmaxSdk {
    public <fields>;
    public <methods>;
}

-keep public class com.vmax.android.ads.api.BitmapSampler {
    public <fields>;
    public <methods>;
}
-keep public class com.vmax.android.ads.api.AdContainer {
    public <fields>;
    public <methods>;
}
-keep public class com.vmax.android.ads.api.ImageLoader {
    public <fields>;
    public <methods>;
}

-keep public class com.vmax.android.ads.api.NativeImageDownload {
    public <fields>;
    public <methods>;
}

-keep public class com.vmax.android.ads.api.NativeImageDownloadListener {
    public <fields>;
    public <methods>;
}

-keep public class com.vmax.android.ads.api.VmaxAdPartner {
    public <fields>;
    public <methods>;
}

-keep public class com.vmax.android.ads.api.VmaxAdReward {
    public <fields>;
    public <methods>;
}
-keep public class com.vmax.android.ads.common.VmaxAdListener {
    <fields>;
    <methods>;
}

-keep public class com.vmax.android.ads.common.VmaxRequestListener {
    <fields>;
    <methods>;
}

-keep public class com.vmax.android.ads.api.VmaxRequest {
    public <fields>;
    public <methods>;
}

-keep public class com.vmax.android.ads.common.User {
    public <fields>;
    public <methods>;
}

-keep public class com.vmax.android.ads.exception.** {
    public <fields>;
    public <methods>;
}


-keep public class com.vmax.android.ads.exception.VmaxAdError {
    public <fields>;
    public <methods>;
}

-keep public class com.vmax.android.ads.exception.VmaxRequestError {
    public <fields>;
    public <methods>;
}

-keep public class com.vmax.android.ads.mediation.** {
    public <fields>;
    public <methods>;
    }
-keep class com.vmax.android.ads.mediation.partners.** {
    public <fields>;
    public <methods>;
}
-keep public class com.vmax.android.ads.mediation.partners.VmaxAdPlayer {
    public <fields>;
    public <methods>;
}

-keep public class com.vmax.android.ads.nativeads.** {
    public <fields>;
    public <methods>;
}

-keep public class com.vmax.android.ads.nativeHelper.** {
    public <fields>;
    public <methods>;
}

-keep public class com.vmax.android.ads.nativeview.** {
    public <fields>;
    public <methods>;
}

-keep public class com.vmax.android.ads.util.** {
    public <fields>;
    public <methods>;
}

-keep public class com.vmax.android.ads.util.CountryAttributes {
    public <fields>;
    public <methods>;
}

-keep public class com.vmax.android.ads.util.CountryNames {
    public <fields>;
    public <methods>;
}

-keep public class com.vmax.android.ads.util.Utility {
    <fields>;
    <methods>;
}

-keep public class com.vmax.android.ads.vast.** {
    public <fields>;
    public <methods>;
}

-keep public class com.vmax.android.ads.webview.** {
    public <fields>;
    public <methods>;
}

 -keep public class com.google.android.gms.** {
    <fields>;
   <methods>;
}

-keep public class com.google.ads.** {
    public <fields>;
    public <methods>;
}


-keep public class com.google.android.gms.common.internal.safeparcel.SafeParcelable {
    public static final *** NULL;
}

# Keep names - Native method names. Keep all native class/method names.
-keepclasseswithmembers class * {
    native <methods>;
}

-keep class com.google.firebase.** {
    public <fields>;
    public <methods>;
}

-keep public final class com.google.firebase.FirebaseOptions {
    public <fields>;
    public <methods>;
}

-keep public enum  com.vmax.android.ads.api.VmaxAdView$AdState {
   <fields>;
      public static **[] values();
   public static ** valueOf(java.lang.String);
}

-keep public enum  com.vmax.android.ads.api.VmaxSdk$Environment {
   <fields>;
   public static **[] values();
   public static ** valueOf(java.lang.String);
}

-keep public enum  com.vmax.android.ads.api.VmaxSdk$LogLevel {
   <fields>;
   public static **[] values();
   public static ** valueOf(java.lang.String);
}

-keep public enum  com.vmax.android.ads.api.VmaxSdk$Gender {
   <fields>;
   public static **[] values();
   public static ** valueOf(java.lang.String);
}

-keep public enum  com.vmax.android.ads.api.VmaxSdk$ContentVideoPlayer {
   <fields>;
   public static **[] values();
   public static ** valueOf(java.lang.String);
}

-keep public enum  com.vmax.android.ads.api.VmaxSdk$ContentVideoHandler {
   <fields>;
   public static **[] values();
   public static ** valueOf(java.lang.String);
}

-keep public enum  com.vmax.android.ads.api.VmaxSdk$ViewabilityPartner {
   <fields>;
   public static **[] values();
   public static ** valueOf(java.lang.String);
}

-keep public enum  com.vmax.android.ads.api.VmaxSdk$RequestType {
   <fields>;
   public static **[] values();
   public static ** valueOf(java.lang.String);
}

-keep public enum  com.vmax.android.ads.api.VmaxSdk$UserAge {
   <fields>;
   public static **[] values();
   public static ** valueOf(java.lang.String);
}

-keep public class com.vmax.android.ads.api.Section {
    public <fields>;
    public <methods>;
}

-keep public enum  com.vmax.android.ads.api.Section$** {
   <fields>;
   public static **[] values();
   public static ** valueOf(java.lang.String);
}

-keep public class com.vmax.android.ads.common.vast.VmaxTrackingEventInterface {
    <fields>;
    <methods>;
}

-keep public class com.vmax.android.ads.api.VmaxAdEvent {
    <fields>;
    <methods>;
}

-keep public class com.vmax.android.ads.api.VmaxCustomVastAd {
    <fields>;
    <methods>;
}


-keep public class com.google.android.gms.location.FusedLocationProviderClient {
    public <fields>;
    public <methods>;
}
-keep public class com.google.android.gms.tasks.OnSuccessListener {
    <fields>;
    <methods>;
}

-keep public class com.vmax.android.ads.api.Section {
    public <fields>;
    public <methods>;
}

-keep public class com.vmax.android.ads.common.DataReceiver {
    public <fields>;
    public <methods>;
}

-keep public class com.vmax.android.ads.common.AppInstallReceiver {
    public <fields>;
    public <methods>;
}

#Chrome Custom Tab
-keep public class android.support.customtabs.CustomTabsIntent {
    public <fields>;
    public <methods>;
}

-keep,allowshrinking @com.google.android.gms.common.annotation.KeepName class *
