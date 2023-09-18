import 'package:flutter/material.dart';
import 'package:baburam_s_application5/presentation/splash_screen/splash_screen.dart';
import 'package:baburam_s_application5/presentation/welcome_screen/welcome_screen.dart';
import 'package:baburam_s_application5/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:baburam_s_application5/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:baburam_s_application5/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:baburam_s_application5/presentation/let_s_you_in_screen/let_s_you_in_screen.dart';
import 'package:baburam_s_application5/presentation/sign_up_blank_screen/sign_up_blank_screen.dart';
import 'package:baburam_s_application5/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:baburam_s_application5/presentation/fill_profile_screen/fill_profile_screen.dart';
import 'package:baburam_s_application5/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:baburam_s_application5/presentation/forgot_password_type_otp_screen/forgot_password_type_otp_screen.dart';
import 'package:baburam_s_application5/presentation/forgot_password_filled_type_screen/forgot_password_filled_type_screen.dart';
import 'package:baburam_s_application5/presentation/create_new_password_screen/create_new_password_screen.dart';
import 'package:baburam_s_application5/presentation/home_screen_container_screen/home_screen_container_screen.dart';
import 'package:baburam_s_application5/presentation/recently_booked_screen/recently_booked_screen.dart';
import 'package:baburam_s_application5/presentation/notifications_screen/notifications_screen.dart';
import 'package:baburam_s_application5/presentation/my_bookmarks_screen/my_bookmarks_screen.dart';
import 'package:baburam_s_application5/presentation/search_type_screen/search_type_screen.dart';
import 'package:baburam_s_application5/presentation/filter_result_screen/filter_result_screen.dart';
import 'package:baburam_s_application5/presentation/hotel_details_screen/hotel_details_screen.dart';
import 'package:baburam_s_application5/presentation/gallery_screen/gallery_screen.dart';
import 'package:baburam_s_application5/presentation/location_screen/location_screen.dart';
import 'package:baburam_s_application5/presentation/review_screen/review_screen.dart';
import 'package:baburam_s_application5/presentation/select_date_guest_screen/select_date_guest_screen.dart';
import 'package:baburam_s_application5/presentation/booking_name_screen/booking_name_screen.dart';
import 'package:baburam_s_application5/presentation/choose_payment_method_screen/choose_payment_method_screen.dart';
import 'package:baburam_s_application5/presentation/add_new_card_screen/add_new_card_screen.dart';
import 'package:baburam_s_application5/presentation/card_added_screen/card_added_screen.dart';
import 'package:baburam_s_application5/presentation/confirm_payment_screen/confirm_payment_screen.dart';
import 'package:baburam_s_application5/presentation/view_ticket_screen/view_ticket_screen.dart';
import 'package:baburam_s_application5/presentation/refund_method_screen/refund_method_screen.dart';
import 'package:baburam_s_application5/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:baburam_s_application5/presentation/notification_settings_screen/notification_settings_screen.dart';
import 'package:baburam_s_application5/presentation/security_screen/security_screen.dart';
import 'package:baburam_s_application5/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String letSYouInScreen = '/let_s_you_in_screen';

  static const String signUpBlankScreen = '/sign_up_blank_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String fillProfileScreen = '/fill_profile_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String forgotPasswordTypeOtpScreen =
      '/forgot_password_type_otp_screen';

  static const String forgotPasswordFilledTypeScreen =
      '/forgot_password_filled_type_screen';

  static const String createNewPasswordScreen = '/create_new_password_screen';

  static const String homeScreenPage = '/home_screen_page';

  static const String homeScreenContainerScreen =
      '/home_screen_container_screen';

  static const String recentlyBookedScreen = '/recently_booked_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String myBookmarksScreen = '/my_bookmarks_screen';

  static const String searchPage = '/search_page';

  static const String searchTypeScreen = '/search_type_screen';

  static const String filterResultScreen = '/filter_result_screen';

  static const String hotelDetailsScreen = '/hotel_details_screen';

  static const String galleryScreen = '/gallery_screen';

  static const String locationScreen = '/location_screen';

  static const String reviewScreen = '/review_screen';

  static const String selectDateGuestScreen = '/select_date_guest_screen';

  static const String bookingNameScreen = '/booking_name_screen';

  static const String choosePaymentMethodScreen =
      '/choose_payment_method_screen';

  static const String addNewCardScreen = '/add_new_card_screen';

  static const String cardAddedScreen = '/card_added_screen';

  static const String confirmPaymentScreen = '/confirm_payment_screen';

  static const String viewTicketScreen = '/view_ticket_screen';

  static const String bookingOngoingPage = '/booking_ongoing_page';

  static const String bookingOngoingTabContainerPage =
      '/booking_ongoing_tab_container_page';

  static const String bookingCompletedPage = '/booking_completed_page';

  static const String bookingCancelledPage = '/booking_cancelled_page';

  static const String refundMethodScreen = '/refund_method_screen';

  static const String profileSettingsPage = '/profile_settings_page';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String notificationSettingsScreen =
      '/notification_settings_screen';

  static const String securityScreen = '/security_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        welcomeScreen: WelcomeScreen.builder,
        onboardingOneScreen: OnboardingOneScreen.builder,
        onboardingTwoScreen: OnboardingTwoScreen.builder,
        onboardingThreeScreen: OnboardingThreeScreen.builder,
        letSYouInScreen: LetSYouInScreen.builder,
        signUpBlankScreen: SignUpBlankScreen.builder,
        signInScreen: SignInScreen.builder,
        fillProfileScreen: FillProfileScreen.builder,
        forgotPasswordScreen: ForgotPasswordScreen.builder,
        forgotPasswordTypeOtpScreen: ForgotPasswordTypeOtpScreen.builder,
        forgotPasswordFilledTypeScreen: ForgotPasswordFilledTypeScreen.builder,
        createNewPasswordScreen: CreateNewPasswordScreen.builder,
        homeScreenContainerScreen: HomeScreenContainerScreen.builder,
        recentlyBookedScreen: RecentlyBookedScreen.builder,
        notificationsScreen: NotificationsScreen.builder,
        myBookmarksScreen: MyBookmarksScreen.builder,
        searchTypeScreen: SearchTypeScreen.builder,
        filterResultScreen: FilterResultScreen.builder,
        hotelDetailsScreen: HotelDetailsScreen.builder,
        galleryScreen: GalleryScreen.builder,
        locationScreen: LocationScreen.builder,
        reviewScreen: ReviewScreen.builder,
        selectDateGuestScreen: SelectDateGuestScreen.builder,
        bookingNameScreen: BookingNameScreen.builder,
        choosePaymentMethodScreen: ChoosePaymentMethodScreen.builder,
        addNewCardScreen: AddNewCardScreen.builder,
        cardAddedScreen: CardAddedScreen.builder,
        confirmPaymentScreen: ConfirmPaymentScreen.builder,
        viewTicketScreen: ViewTicketScreen.builder,
        refundMethodScreen: RefundMethodScreen.builder,
        editProfileScreen: EditProfileScreen.builder,
        notificationSettingsScreen: NotificationSettingsScreen.builder,
        securityScreen: SecurityScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
