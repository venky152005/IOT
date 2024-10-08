class ApiEndPoint {
  static String baseUrl = "https://api.ultrasonics.in/api/v1/user";

  static String login = "$baseUrl/login";

  static String register = "$baseUrl/register";

  static String otpVerification = "$baseUrl/verify-login";

  static String deviceList = "$baseUrl/devices/list";

  static String deviceView = "$baseUrl/devices/view";

  static String forgotPassword = "$baseUrl/forgot-password";

  static String forgotPasswordOtp = "$baseUrl/email/forgot-code-verification";

  static String changePassword = "$baseUrl/change-forgot-password";

  static String updateProfile = "$baseUrl/profile/update";

  static String changePasswordSettings = "$baseUrl/change-password";

  static String profile = "$baseUrl/profile";

  static String logout = "$baseUrl/delete_account";
}
