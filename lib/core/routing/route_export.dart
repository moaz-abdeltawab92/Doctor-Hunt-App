// Flutter and third-party packages

export 'dart:developer' hide Flow;

export 'package:date_picker_plus/date_picker_plus.dart';
export 'package:dio/dio.dart';
export 'package:flutter/material.dart';
export 'package:flutter_rating_bar/flutter_rating_bar.dart';
export 'package:flutter_screenutil/flutter_screenutil.dart';
export 'package:flutter_secure_storage/flutter_secure_storage.dart';
export 'package:flutter_svg/flutter_svg.dart';
export 'package:get_it/get_it.dart';
export 'package:google_fonts/google_fonts.dart';

// Core exports
export 'package:doctor_hunt/core/constants/app_assets.dart';
export 'package:doctor_hunt/core/constants/app_string.dart';
export 'package:doctor_hunt/core/DI/dependency_ingection.dart';
export 'package:doctor_hunt/core/helpers/spacer.dart';
export 'package:doctor_hunt/core/theming/colors/colors.dart';
export 'package:doctor_hunt/core/theming/style/app_text_styles.dart';
export 'package:doctor_hunt/core/theming/style/font_weight_helper.dart';
export 'package:doctor_hunt/core/widgets/auth_button.dart';
export 'package:doctor_hunt/core/widgets/custom_Appbar.dart';
export 'package:doctor_hunt/core/widgets/custom_background%20.dart';
export 'package:doctor_hunt/core/widgets/Text_Form_fielddd.dart';

// Authentication features
export 'package:doctor_hunt/features/auth/Data/api/api_service_login.dart';
export 'package:doctor_hunt/features/auth/Data/api/api_service_regisiter.dart';
export 'package:doctor_hunt/features/auth/Data/models/authentaction_request_model.dart';
export 'package:doctor_hunt/features/auth/Data/models/authentaction_response_sucess_model.dart';
export 'package:doctor_hunt/features/auth/Data/models/login_request_model.dart';
export 'package:doctor_hunt/features/auth/Data/repo/auth_repo.dart';
export 'package:doctor_hunt/features/auth/Data/repo/login_repo.dart';
export 'package:doctor_hunt/features/auth/Data/repo/secure_storage_service.dart';
export 'package:doctor_hunt/features/auth/presentation/screens/login_screen.dart';
export 'package:doctor_hunt/features/auth/presentation/screens/signup_screen.dart';
export 'package:doctor_hunt/features/auth/presentation/widgets/account_status_widget.dart';
export 'package:doctor_hunt/features/auth/presentation/widgets/forgot_password.dart';
export 'package:doctor_hunt/features/auth/presentation/widgets/head_text.dart';
export 'package:doctor_hunt/features/auth/presentation/widgets/login_body.dart';
export 'package:doctor_hunt/features/auth/presentation/widgets/login_screen_widget.dart';
export 'package:doctor_hunt/features/auth/presentation/widgets/password_field.dart';
export 'package:doctor_hunt/features/auth/presentation/widgets/privacy_policy_text.dart';
export 'package:doctor_hunt/features/auth/presentation/widgets/signup_body.dart';
export 'package:doctor_hunt/features/auth/presentation/widgets/signup_screen_widget.dart';
export 'package:doctor_hunt/features/auth/presentation/widgets/social_login_buttons.dart';
export 'package:doctor_hunt/features/auth/presentation/widgets/sub_title.dart';
export 'package:doctor_hunt/features/auth/presentation/widgets/text_form_field.dart';
export 'package:doctor_hunt/app.dart';

// Home features
export 'package:doctor_hunt/features/Home/presentation/screens/home_screen.dart';
export 'package:doctor_hunt/features/Home/presentation/widgets/add_comment_texy_field.dart';
export 'package:doctor_hunt/features/Home/presentation/widgets/app_text_buttton.dart';
export 'package:doctor_hunt/features/Home/presentation/widgets/bottom_navigation.dart';
export 'package:doctor_hunt/features/Home/presentation/widgets/categories.dart';
export 'package:doctor_hunt/features/Home/presentation/widgets/chat_live_background.dart';
export 'package:doctor_hunt/features/Home/presentation/widgets/comment-tile.dart';
export 'package:doctor_hunt/features/Home/presentation/widgets/custom_card_search.dart';
export 'package:doctor_hunt/features/Home/presentation/widgets/custom_heart.dart';
export 'package:doctor_hunt/features/Home/presentation/widgets/feature_doctor_card.dart';
export 'package:doctor_hunt/features/Home/presentation/widgets/feature_doctor_list.dart';
export 'package:doctor_hunt/features/Home/presentation/widgets/gradient_box.dart';
export 'package:doctor_hunt/features/Home/presentation/widgets/list_comments.dart';
export 'package:doctor_hunt/features/Home/presentation/widgets/popular_doctor.dart';
export 'package:doctor_hunt/features/Home/presentation/widgets/popular_doctor_card.dart';
export 'package:doctor_hunt/features/Home/presentation/widgets/profile_pic.dart';
export 'package:doctor_hunt/features/Home/presentation/widgets/search_result_list_view.dart';
export 'package:doctor_hunt/features/Home/presentation/widgets/search_text_field.dart';
export 'package:doctor_hunt/features/Home/presentation/widgets/see_all_geasture.dart';
export 'package:doctor_hunt/features/Home/presentation/widgets/select_time_custom_starts_rating.dart';
export 'package:doctor_hunt/features/Home/presentation/widgets/star_icon.dart';
export 'package:doctor_hunt/features/Home/presentation/widgets/top_section.dart';

// Appointment features
export 'package:doctor_hunt/features/appointment/screens/doctor_appointment%20_screen.dart';
export 'package:doctor_hunt/features/appointment/screens/time_appointment_view.dart';
export 'package:doctor_hunt/features/appointment/screens/time_appointment_view_body.dart';
export 'package:doctor_hunt/features/appointment/widgets/active_and_inactive_appointmen.dart';
export 'package:doctor_hunt/features/appointment/widgets/active_and_inactive_appointment_items.dart';
export 'package:doctor_hunt/features/appointment/widgets/active_and_inactive_appointment_reminder_listview.dart';
export 'package:doctor_hunt/features/appointment/widgets/appointment_field.dart';
export 'package:doctor_hunt/features/appointment/widgets/custom_button.dart';
export 'package:doctor_hunt/features/appointment/widgets/custom_buttom_sheet.dart';
export 'package:doctor_hunt/features/appointment/widgets/custom_card.dart';
export 'package:doctor_hunt/features/appointment/widgets/custom_date_picker.dart';
export 'package:doctor_hunt/features/appointment/widgets/custom_image_column.dart';
export 'package:doctor_hunt/features/appointment/widgets/patient_list.dart';
export 'package:doctor_hunt/features/appointment/widgets/patient_listview.dart';
export 'package:doctor_hunt/features/appointment/widgets/show_success_dialog.dart';
export 'package:doctor_hunt/features/appointment/widgets/text_rich.dart';
export 'package:doctor_hunt/features/appointment/widgets/who_is_patient_text.dart';

// Onboarding features
export 'package:doctor_hunt/features/onboarding/presentation/widgets/circle_avatar.dart';
export 'package:doctor_hunt/features/onboarding/presentation/widgets/getstarted_button.dart';
export 'package:doctor_hunt/features/onboarding/presentation/widgets/on_boarding_item_body.dart';
export 'package:doctor_hunt/features/onboarding/presentation/widgets/onboarding_item.dart';
export 'package:doctor_hunt/features/onboarding/presentation/widgets/shape.dart';
export 'package:doctor_hunt/features/onboarding/presentation/widgets/skipbutton.dart';

// Profile features
export 'package:doctor_hunt/features/profile/widgets/continue_button.dart';
export 'package:doctor_hunt/features/profile/widgets/customAppBar.dart';
export 'package:doctor_hunt/features/profile/widgets/header_section.dart';
export 'package:doctor_hunt/features/profile/widgets/personal_information.dart';
export 'package:doctor_hunt/features/profile/widgets/profile_screen_text_form_field.dart';

// Select time features
export 'package:doctor_hunt/features/select_time/presentation/screens/doctor_details_screen.dart';
export 'package:doctor_hunt/features/select_time/presentation/screens/select_day_details.dart';
export 'package:doctor_hunt/features/select_time/presentation/screens/select_time_screen.dart';
export 'package:doctor_hunt/features/select_time/presentation/widgets/avaliable_days.dart';
export 'package:doctor_hunt/features/select_time/presentation/widgets/book_now_button.dart';
export 'package:doctor_hunt/features/select_time/presentation/widgets/bottom_buttons.dart';
export 'package:doctor_hunt/features/select_time/presentation/widgets/doctor_card_widget.dart';
export 'package:doctor_hunt/features/select_time/presentation/widgets/doctor_info.dart';
export 'package:doctor_hunt/features/select_time/presentation/widgets/doctor_info_details_screen.dart';
export 'package:doctor_hunt/features/select_time/presentation/widgets/map.dart';
export 'package:doctor_hunt/features/select_time/presentation/widgets/services.dart';
export 'package:doctor_hunt/features/select_time/presentation/widgets/slot_button.dart';
export 'package:doctor_hunt/features/select_time/presentation/widgets/slots_section.dart';
export 'package:doctor_hunt/features/select_time/presentation/widgets/stats.dart';

// Settings features
export 'package:doctor_hunt/features/settings/widgets/account_settings.dart';
export 'package:doctor_hunt/features/settings/widgets/more_options.dart';
