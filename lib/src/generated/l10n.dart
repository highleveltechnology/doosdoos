// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `moeen_provider is your path to success`
  String get onboard_tit {
    return Intl.message(
      'moeen_provider is your path to success',
      name: 'onboard_tit',
      desc: '',
      args: [],
    );
  }

  /// `Let''s start the learning journey:`
  String get onboard_tit_info {
    return Intl.message(
      'Let\'\'s start the learning journey:',
      name: 'onboard_tit_info',
      desc: '',
      args: [],
    );
  }

  /// `1. Learn from the best trainers`
  String get onboard_head_one {
    return Intl.message(
      '1. Learn from the best trainers',
      name: 'onboard_head_one',
      desc: '',
      args: [],
    );
  }

  /// `Our courses are designed by the best instructors, ensuring you learn the ropes from the best in the industry.`
  String get onboard_info_one {
    return Intl.message(
      'Our courses are designed by the best instructors, ensuring you learn the ropes from the best in the industry.',
      name: 'onboard_info_one',
      desc: '',
      args: [],
    );
  }

  /// `2. Download content and watch anytime`
  String get onboard_head_two {
    return Intl.message(
      '2. Download content and watch anytime',
      name: 'onboard_head_two',
      desc: '',
      args: [],
    );
  }

  /// `You won''t be restricted by an internet connection, download the courses and watch them at any time that suits you. This means you can learn your skills on the go or at your leisure.`
  String get onboard_info_two {
    return Intl.message(
      'You won\'\'t be restricted by an internet connection, download the courses and watch them at any time that suits you. This means you can learn your skills on the go or at your leisure.',
      name: 'onboard_info_two',
      desc: '',
      args: [],
    );
  }

  /// `3. Coordinated and diverse content`
  String get onboard_head_three {
    return Intl.message(
      '3. Coordinated and diverse content',
      name: 'onboard_head_three',
      desc: '',
      args: [],
    );
  }

  /// `Whether you want to learn new skills or advance your existing knowledge, we have what you need. Enjoy access to a variety of topics and lessons that allow you to develop your knowledge as you need.`
  String get onboard_info_three {
    return Intl.message(
      'Whether you want to learn new skills or advance your existing knowledge, we have what you need. Enjoy access to a variety of topics and lessons that allow you to develop your knowledge as you need.',
      name: 'onboard_info_three',
      desc: '',
      args: [],
    );
  }

  /// `4. Challenge yourself`
  String get onboard_head_four {
    return Intl.message(
      '4. Challenge yourself',
      name: 'onboard_head_four',
      desc: '',
      args: [],
    );
  }

  /// `Test your knowledge with exercises and multiple-choice questions within the app. We believe in the importance of self-assessment in the learning process, which is why we provide opportunities to test your knowledge and measure your progress.`
  String get onboard_info_four {
    return Intl.message(
      'Test your knowledge with exercises and multiple-choice questions within the app. We believe in the importance of self-assessment in the learning process, which is why we provide opportunities to test your knowledge and measure your progress.',
      name: 'onboard_info_four',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get cont {
    return Intl.message('Continue', name: 'cont', desc: '', args: []);
  }

  /// `Skip`
  String get skip {
    return Intl.message('Skip', name: 'skip', desc: '', args: []);
  }

  /// `network error`
  String get network_error {
    return Intl.message(
      'network error',
      name: 'network_error',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message('Submit', name: 'submit', desc: '', args: []);
  }

  /// `CANCEL`
  String get cancel {
    return Intl.message('CANCEL', name: 'cancel', desc: '', args: []);
  }

  /// `SUCCESSFUL`
  String get successful {
    return Intl.message('SUCCESSFUL', name: 'successful', desc: '', args: []);
  }

  /// `ERROR`
  String get Error {
    return Intl.message('ERROR', name: 'Error', desc: '', args: []);
  }

  /// `Confirm`
  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  /// `TRY AGAIN`
  String get try_again {
    return Intl.message('TRY AGAIN', name: 'try_again', desc: '', args: []);
  }

  /// `Please Enter`
  String get please_enter {
    return Intl.message(
      'Please Enter',
      name: 'please_enter',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email or password`
  String get login_error {
    return Intl.message(
      'Invalid email or password',
      name: 'login_error',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get make_account {
    return Intl.message(
      'Create Account',
      name: 'make_account',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message('Name', name: 'name', desc: '', args: []);
  }

  /// `write your name`
  String get write_name {
    return Intl.message(
      'write your name',
      name: 'write_name',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get last_name {
    return Intl.message('Last Name', name: 'last_name', desc: '', args: []);
  }

  /// `write your last name`
  String get write_last_name {
    return Intl.message(
      'write your last name',
      name: 'write_last_name',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `write your email`
  String get write_email {
    return Intl.message(
      'write your email',
      name: 'write_email',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phone {
    return Intl.message('Phone Number', name: 'phone', desc: '', args: []);
  }

  /// `write your phone number`
  String get write_phone {
    return Intl.message(
      'write your phone number',
      name: 'write_phone',
      desc: '',
      args: [],
    );
  }

  /// `Jop Status`
  String get jop {
    return Intl.message('Jop Status', name: 'jop', desc: '', args: []);
  }

  /// `Specialization`
  String get spec {
    return Intl.message('Specialization', name: 'spec', desc: '', args: []);
  }

  /// `Education level (optional)`
  String get education {
    return Intl.message(
      'Education level (optional)',
      name: 'education',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get have_acc {
    return Intl.message(
      'Already have an account?',
      name: 'have_acc',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Password Confirmation`
  String get password_confirmation {
    return Intl.message(
      'Password Confirmation',
      name: 'password_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Account Confirmation`
  String get account_sure {
    return Intl.message(
      'Account Confirmation',
      name: 'account_sure',
      desc: '',
      args: [],
    );
  }

  /// `The confirmation code has been sent to the number`
  String get sended_code {
    return Intl.message(
      'The confirmation code has been sent to the number',
      name: 'sended_code',
      desc: '',
      args: [],
    );
  }

  /// `on WhatsApp`
  String get whatsapp_code {
    return Intl.message(
      'on WhatsApp',
      name: 'whatsapp_code',
      desc: '',
      args: [],
    );
  }

  /// `Send by text message`
  String get message_text {
    return Intl.message(
      'Send by text message',
      name: 'message_text',
      desc: '',
      args: [],
    );
  }

  /// `You didn''t receive the code?`
  String get code_not_sended {
    return Intl.message(
      'You didn\'\'t receive the code?',
      name: 'code_not_sended',
      desc: '',
      args: [],
    );
  }

  /// `Resend in {second} seconds`
  String send_again(Object second) {
    return Intl.message(
      'Resend in $second seconds',
      name: 'send_again',
      desc: '',
      args: [second],
    );
  }

  /// `Have a problem?`
  String get have_probelm {
    return Intl.message(
      'Have a problem?',
      name: 'have_probelm',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get contact_us {
    return Intl.message('Contact Us', name: 'contact_us', desc: '', args: []);
  }

  /// `Account successfully created`
  String get acc_created {
    return Intl.message(
      'Account successfully created',
      name: 'acc_created',
      desc: '',
      args: [],
    );
  }

  /// `is Invalid`
  String get invalid {
    return Intl.message('is Invalid', name: 'invalid', desc: '', args: []);
  }

  /// `don''t have account`
  String get dont_acc {
    return Intl.message(
      'don\'\'t have account',
      name: 'dont_acc',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Categories`
  String get categories {
    return Intl.message('Categories', name: 'categories', desc: '', args: []);
  }

  /// `My Courese`
  String get my_courses {
    return Intl.message('My Courese', name: 'my_courses', desc: '', args: []);
  }

  /// `Cart`
  String get cart {
    return Intl.message('Cart', name: 'cart', desc: '', args: []);
  }

  /// `More`
  String get more {
    return Intl.message('More', name: 'more', desc: '', args: []);
  }

  /// `Account Information`
  String get account_info {
    return Intl.message(
      'Account Information',
      name: 'account_info',
      desc: '',
      args: [],
    );
  }

  /// `Downloads`
  String get downloads {
    return Intl.message('Downloads', name: 'downloads', desc: '', args: []);
  }

  /// `Notifications`
  String get notification {
    return Intl.message(
      'Notifications',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Favorites list`
  String get fav_list {
    return Intl.message('Favorites list', name: 'fav_list', desc: '', args: []);
  }

  /// `Settings`
  String get setting {
    return Intl.message('Settings', name: 'setting', desc: '', args: []);
  }

  /// `Help Center`
  String get help_center {
    return Intl.message('Help Center', name: 'help_center', desc: '', args: []);
  }

  /// `Share App`
  String get share_app {
    return Intl.message('Share App', name: 'share_app', desc: '', args: []);
  }

  /// `Logout`
  String get logout {
    return Intl.message('Logout', name: 'logout', desc: '', args: []);
  }

  /// `Courses`
  String get courses {
    return Intl.message('Courses', name: 'courses', desc: '', args: []);
  }

  /// `Students`
  String get students {
    return Intl.message('Students', name: 'students', desc: '', args: []);
  }

  /// `Skills`
  String get skills {
    return Intl.message('Skills', name: 'skills', desc: '', args: []);
  }

  /// `Shop by stage`
  String get shop_stage {
    return Intl.message(
      'Shop by stage',
      name: 'shop_stage',
      desc: '',
      args: [],
    );
  }

  /// `Shop by department`
  String get shop_category {
    return Intl.message(
      'Shop by department',
      name: 'shop_category',
      desc: '',
      args: [],
    );
  }

  /// `All Stages`
  String get all_stages {
    return Intl.message('All Stages', name: 'all_stages', desc: '', args: []);
  }

  /// `All Department`
  String get all_dep {
    return Intl.message('All Department', name: 'all_dep', desc: '', args: []);
  }

  /// `Learning Department`
  String get learning_dep {
    return Intl.message(
      'Learning Department',
      name: 'learning_dep',
      desc: '',
      args: [],
    );
  }

  /// `Store Department`
  String get store_dep {
    return Intl.message(
      'Store Department',
      name: 'store_dep',
      desc: '',
      args: [],
    );
  }

  /// `All Products`
  String get all_product {
    return Intl.message(
      'All Products',
      name: 'all_product',
      desc: '',
      args: [],
    );
  }

  /// `Common search words`
  String get common_search {
    return Intl.message(
      'Common search words',
      name: 'common_search',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get filter {
    return Intl.message('Filter', name: 'filter', desc: '', args: []);
  }

  /// `Sort`
  String get sort {
    return Intl.message('Sort', name: 'sort', desc: '', args: []);
  }

  /// `Department`
  String get depart {
    return Intl.message('Department', name: 'depart', desc: '', args: []);
  }

  /// `Stages`
  String get stage {
    return Intl.message('Stages', name: 'stage', desc: '', args: []);
  }

  /// `Price`
  String get price {
    return Intl.message('Price', name: 'price', desc: '', args: []);
  }

  /// `Filter Search Results`
  String get result_filter {
    return Intl.message(
      'Filter Search Results',
      name: 'result_filter',
      desc: '',
      args: [],
    );
  }

  /// `Subject`
  String get subject {
    return Intl.message('Subject', name: 'subject', desc: '', args: []);
  }

  /// `Teacher`
  String get teacher {
    return Intl.message('Teacher', name: 'teacher', desc: '', args: []);
  }

  /// `Show More`
  String get show_more {
    return Intl.message('Show More', name: 'show_more', desc: '', args: []);
  }

  /// `Show Results`
  String get show_result {
    return Intl.message(
      'Show Results',
      name: 'show_result',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancl {
    return Intl.message('Cancel', name: 'cancl', desc: '', args: []);
  }

  /// `Technical Support`
  String get tech_support {
    return Intl.message(
      'Technical Support',
      name: 'tech_support',
      desc: '',
      args: [],
    );
  }

  /// `Call Us`
  String get call_us {
    return Intl.message('Call Us', name: 'call_us', desc: '', args: []);
  }

  /// `Change Phone Number`
  String get change_phone {
    return Intl.message(
      'Change Phone Number',
      name: 'change_phone',
      desc: '',
      args: [],
    );
  }

  /// `Choose Password`
  String get change_password {
    return Intl.message(
      'Choose Password',
      name: 'change_password',
      desc: '',
      args: [],
    );
  }

  /// `Delete Account`
  String get delete_acc {
    return Intl.message(
      'Delete Account',
      name: 'delete_acc',
      desc: '',
      args: [],
    );
  }

  /// `Updated Successfully`
  String get updated_successfully {
    return Intl.message(
      'Updated Successfully',
      name: 'updated_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Choose phone number`
  String get choose_phone_number {
    return Intl.message(
      'Choose phone number',
      name: 'choose_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message('Save', name: 'save', desc: '', args: []);
  }

  /// `Change Image`
  String get change_image {
    return Intl.message(
      'Change Image',
      name: 'change_image',
      desc: '',
      args: [],
    );
  }

  /// `You have not added any courses or packages yet`
  String get cart_empty {
    return Intl.message(
      'You have not added any courses or packages yet',
      name: 'cart_empty',
      desc: '',
      args: [],
    );
  }

  /// `Recently watched`
  String get watched_late {
    return Intl.message(
      'Recently watched',
      name: 'watched_late',
      desc: '',
      args: [],
    );
  }

  /// `Add To Cart`
  String get add_to_cart {
    return Intl.message('Add To Cart', name: 'add_to_cart', desc: '', args: []);
  }

  /// `Discount`
  String get discount {
    return Intl.message('Discount', name: 'discount', desc: '', args: []);
  }

  /// `Course Details`
  String get course_details {
    return Intl.message(
      'Course Details',
      name: 'course_details',
      desc: '',
      args: [],
    );
  }

  /// `Last Update`
  String get last_update {
    return Intl.message('Last Update', name: 'last_update', desc: '', args: []);
  }

  /// `Level`
  String get level {
    return Intl.message('Level', name: 'level', desc: '', args: []);
  }

  /// `Language`
  String get lang {
    return Intl.message('Language', name: 'lang', desc: '', args: []);
  }

  /// `Lecture`
  String get lecture {
    return Intl.message('Lecture', name: 'lecture', desc: '', args: []);
  }

  /// `Lectures`
  String get lectures {
    return Intl.message('Lectures', name: 'lectures', desc: '', args: []);
  }

  /// `Documents and other recourses`
  String get docs_resource {
    return Intl.message(
      'Documents and other recourses',
      name: 'docs_resource',
      desc: '',
      args: [],
    );
  }

  /// `Quizs`
  String get quizs {
    return Intl.message('Quizs', name: 'quizs', desc: '', args: []);
  }

  /// `Course Goals`
  String get course_goals {
    return Intl.message(
      'Course Goals',
      name: 'course_goals',
      desc: '',
      args: [],
    );
  }

  /// `Rates`
  String get rates {
    return Intl.message('Rates', name: 'rates', desc: '', args: []);
  }

  /// `Write Rate`
  String get wirte_rate {
    return Intl.message('Write Rate', name: 'wirte_rate', desc: '', args: []);
  }

  /// `Rate`
  String get rate {
    return Intl.message('Rate', name: 'rate', desc: '', args: []);
  }

  /// `View More`
  String get view_more {
    return Intl.message('View More', name: 'view_more', desc: '', args: []);
  }

  /// `He recommends purchasing the course`
  String get recommend_course {
    return Intl.message(
      'He recommends purchasing the course',
      name: 'recommend_course',
      desc: '',
      args: [],
    );
  }

  /// `All Rates`
  String get all_rates {
    return Intl.message('All Rates', name: 'all_rates', desc: '', args: []);
  }

  /// `Instructor`
  String get instructor {
    return Intl.message('Instructor', name: 'instructor', desc: '', args: []);
  }

  /// `Continue`
  String get continue_val {
    return Intl.message('Continue', name: 'continue_val', desc: '', args: []);
  }

  /// `Total`
  String get total {
    return Intl.message('Total', name: 'total', desc: '', args: []);
  }

  /// `Add Coupon`
  String get add_coupon {
    return Intl.message('Add Coupon', name: 'add_coupon', desc: '', args: []);
  }

  /// `Coupon applied`
  String get copoun_added {
    return Intl.message(
      'Coupon applied',
      name: 'copoun_added',
      desc: '',
      args: [],
    );
  }

  /// `Write discount coupon`
  String get write_coupon {
    return Intl.message(
      'Write discount coupon',
      name: 'write_coupon',
      desc: '',
      args: [],
    );
  }

  /// `Coupon`
  String get coupon {
    return Intl.message('Coupon', name: 'coupon', desc: '', args: []);
  }

  /// `Apply Coupon`
  String get apply_coupon {
    return Intl.message(
      'Apply Coupon',
      name: 'apply_coupon',
      desc: '',
      args: [],
    );
  }

  /// `Add To Cart`
  String get add_cart {
    return Intl.message('Add To Cart', name: 'add_cart', desc: '', args: []);
  }

  /// `Remove Cart`
  String get remove_cart {
    return Intl.message('Remove Cart', name: 'remove_cart', desc: '', args: []);
  }

  /// `Watch the first lecture for free!`
  String get first_course_free {
    return Intl.message(
      'Watch the first lecture for free!',
      name: 'first_course_free',
      desc: '',
      args: [],
    );
  }

  /// `Packages`
  String get packages {
    return Intl.message('Packages', name: 'packages', desc: '', args: []);
  }

  /// `All`
  String get all {
    return Intl.message('All', name: 'all', desc: '', args: []);
  }

  /// `Type`
  String get type {
    return Intl.message('Type', name: 'type', desc: '', args: []);
  }

  /// `No Favourites`
  String get no_fav {
    return Intl.message('No Favourites', name: 'no_fav', desc: '', args: []);
  }

  /// `you didn't buyed any courses yet`
  String get no_courses {
    return Intl.message(
      'you didn\'t buyed any courses yet',
      name: 'no_courses',
      desc: '',
      args: [],
    );
  }

  /// `you didn't buyed any bundles yet`
  String get no_bundle {
    return Intl.message(
      'you didn\'t buyed any bundles yet',
      name: 'no_bundle',
      desc: '',
      args: [],
    );
  }

  /// `Add Courses`
  String get add_courses {
    return Intl.message('Add Courses', name: 'add_courses', desc: '', args: []);
  }

  /// `Add Bunldes`
  String get add_bundles {
    return Intl.message('Add Bunldes', name: 'add_bundles', desc: '', args: []);
  }

  /// `Other Courses`
  String get other_courses {
    return Intl.message(
      'Other Courses',
      name: 'other_courses',
      desc: '',
      args: [],
    );
  }

  /// `Orders`
  String get orders {
    return Intl.message('Orders', name: 'orders', desc: '', args: []);
  }

  /// `Buy`
  String get buy {
    return Intl.message('Buy', name: 'buy', desc: '', args: []);
  }

  /// `Add address`
  String get add_address {
    return Intl.message('Add address', name: 'add_address', desc: '', args: []);
  }

  /// `Notes`
  String get notes {
    return Intl.message('Notes', name: 'notes', desc: '', args: []);
  }

  /// `Address`
  String get address {
    return Intl.message('Address', name: 'address', desc: '', args: []);
  }

  /// `Choose address`
  String get choose_address {
    return Intl.message(
      'Choose address',
      name: 'choose_address',
      desc: '',
      args: [],
    );
  }

  /// `Address Type`
  String get address_type {
    return Intl.message(
      'Address Type',
      name: 'address_type',
      desc: '',
      args: [],
    );
  }

  /// `Choose Payment Methods`
  String get choose_payment {
    return Intl.message(
      'Choose Payment Methods',
      name: 'choose_payment',
      desc: '',
      args: [],
    );
  }

  /// `Payment Methods`
  String get payment_methods {
    return Intl.message(
      'Payment Methods',
      name: 'payment_methods',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message('City', name: 'city', desc: '', args: []);
  }

  /// `Instructors`
  String get instructors {
    return Intl.message('Instructors', name: 'instructors', desc: '', args: []);
  }

  /// `Free`
  String get free {
    return Intl.message('Free', name: 'free', desc: '', args: []);
  }

  /// `Or you can`
  String get or_you_can {
    return Intl.message('Or you can', name: 'or_you_can', desc: '', args: []);
  }

  /// `Home`
  String get home_address {
    return Intl.message('Home', name: 'home_address', desc: '', args: []);
  }

  /// `Office`
  String get office {
    return Intl.message('Office', name: 'office', desc: '', args: []);
  }

  /// `Otherwise`
  String get otherwise {
    return Intl.message('Otherwise', name: 'otherwise', desc: '', args: []);
  }

  /// `VPN Connected`
  String get vpn_connected {
    return Intl.message(
      'VPN Connected',
      name: 'vpn_connected',
      desc: '',
      args: [],
    );
  }

  /// `Please disconnect the VPN to continue using the app`
  String get vpn_connected_message {
    return Intl.message(
      'Please disconnect the VPN to continue using the app',
      name: 'vpn_connected_message',
      desc: '',
      args: [],
    );
  }

  /// `Login Via Whatsapp`
  String get login_whatsapp {
    return Intl.message(
      'Login Via Whatsapp',
      name: 'login_whatsapp',
      desc: '',
      args: [],
    );
  }

  /// `Send Code`
  String get send_code {
    return Intl.message('Send Code', name: 'send_code', desc: '', args: []);
  }

  /// `Video Qualities`
  String get vido_quality {
    return Intl.message(
      'Video Qualities',
      name: 'vido_quality',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message('Profile', name: 'profile', desc: '', args: []);
  }

  /// `Select Your Quality`
  String get select_quality {
    return Intl.message(
      'Select Your Quality',
      name: 'select_quality',
      desc: '',
      args: [],
    );
  }

  /// `Available`
  String get available {
    return Intl.message('Available', name: 'available', desc: '', args: []);
  }

  /// `Unavailable`
  String get unavailavle {
    return Intl.message('Unavailable', name: 'unavailavle', desc: '', args: []);
  }

  /// `Services`
  String get services {
    return Intl.message('Services', name: 'services', desc: '', args: []);
  }

  /// `Create an Order`
  String get create_an_order {
    return Intl.message(
      'Create an Order',
      name: 'create_an_order',
      desc: '',
      args: [],
    );
  }

  /// `Overview`
  String get Overview {
    return Intl.message('Overview', name: 'Overview', desc: '', args: []);
  }

  /// `Accepted Orders`
  String get order_accepted {
    return Intl.message(
      'Accepted Orders',
      name: 'order_accepted',
      desc: '',
      args: [],
    );
  }

  /// `Completed Orders`
  String get order_ended {
    return Intl.message(
      'Completed Orders',
      name: 'order_ended',
      desc: '',
      args: [],
    );
  }

  /// `Canceled Orders`
  String get canceled_order {
    return Intl.message(
      'Canceled Orders',
      name: 'canceled_order',
      desc: '',
      args: [],
    );
  }

  /// `Total Orders`
  String get total_order {
    return Intl.message(
      'Total Orders',
      name: 'total_order',
      desc: '',
      args: [],
    );
  }

  /// `See All`
  String get see_all {
    return Intl.message('See All', name: 'see_all', desc: '', args: []);
  }

  /// `My Services`
  String get my_services {
    return Intl.message('My Services', name: 'my_services', desc: '', args: []);
  }

  /// `Plumber`
  String get plumber {
    return Intl.message('Plumber', name: 'plumber', desc: '', args: []);
  }

  /// `Electrical`
  String get electrical {
    return Intl.message('Electrical', name: 'electrical', desc: '', args: []);
  }

  /// `Ceramic`
  String get ceramic {
    return Intl.message('Ceramic', name: 'ceramic', desc: '', args: []);
  }

  /// `Paint`
  String get paint {
    return Intl.message('Paint', name: 'paint', desc: '', args: []);
  }

  /// `Spoon`
  String get spoon {
    return Intl.message('Spoon', name: 'spoon', desc: '', args: []);
  }

  /// `Others`
  String get others {
    return Intl.message('Others', name: 'others', desc: '', args: []);
  }

  /// `My Account`
  String get my_account {
    return Intl.message('My Account', name: 'my_account', desc: '', args: []);
  }

  /// `Reservations`
  String get reservations {
    return Intl.message(
      'Reservations',
      name: 'reservations',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Messages`
  String get messages {
    return Intl.message('Messages', name: 'messages', desc: '', args: []);
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `Privacy & Help`
  String get privacy_help {
    return Intl.message(
      'Privacy & Help',
      name: 'privacy_help',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Conditions`
  String get terms_conditions {
    return Intl.message(
      'Terms & Conditions',
      name: 'terms_conditions',
      desc: '',
      args: [],
    );
  }

  /// `Agreements`
  String get agreements {
    return Intl.message('Agreements', name: 'agreements', desc: '', args: []);
  }

  /// `About App`
  String get about_app {
    return Intl.message('About App', name: 'about_app', desc: '', args: []);
  }

  /// `Full Name`
  String get fullName {
    return Intl.message('Full Name', name: 'fullName', desc: '', args: []);
  }

  /// `Hello, welcome back! 👋`
  String get login_welcome_title {
    return Intl.message(
      'Hello, welcome back! 👋',
      name: 'login_welcome_title',
      desc: '',
      args: [],
    );
  }

  /// `We are happy to see you again. Enjoy our various services at competitive prices and benefit from your experience with us.`
  String get login_welcome_info {
    return Intl.message(
      'We are happy to see you again. Enjoy our various services at competitive prices and benefit from your experience with us.',
      name: 'login_welcome_info',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password?`
  String get forget_pass_ques {
    return Intl.message(
      'Forgot your password?',
      name: 'forget_pass_ques',
      desc: '',
      args: [],
    );
  }

  /// `Create a service provider account`
  String get register_welcome_title {
    return Intl.message(
      'Create a service provider account',
      name: 'register_welcome_title',
      desc: '',
      args: [],
    );
  }

  /// `Complete the registration to start using our distinguished services and get the best experiences.`
  String get register_welcome_info {
    return Intl.message(
      'Complete the registration to start using our distinguished services and get the best experiences.',
      name: 'register_welcome_info',
      desc: '',
      args: [],
    );
  }

  /// `Nationality`
  String get nationality {
    return Intl.message('Nationality', name: 'nationality', desc: '', args: []);
  }

  /// `Enter the plumber's name`
  String get name_hint {
    return Intl.message(
      'Enter the plumber\'s name',
      name: 'name_hint',
      desc: '',
      args: [],
    );
  }

  /// `The services we provide`
  String get choose_your_serviec {
    return Intl.message(
      'The services we provide',
      name: 'choose_your_serviec',
      desc: '',
      args: [],
    );
  }

  /// `By registering, you agree to `
  String get accept_one {
    return Intl.message(
      'By registering, you agree to ',
      name: 'accept_one',
      desc: '',
      args: [],
    );
  }

  /// `Terms and Conditions`
  String get accept_two {
    return Intl.message(
      'Terms and Conditions',
      name: 'accept_two',
      desc: '',
      args: [],
    );
  }

  /// ` and `
  String get and {
    return Intl.message(' and ', name: 'and', desc: '', args: []);
  }

  /// `\nPrivacy Policy`
  String get accept_three {
    return Intl.message(
      '\nPrivacy Policy',
      name: 'accept_three',
      desc: '',
      args: [],
    );
  }

  /// `Enter service provider name`
  String get fullNameHint {
    return Intl.message(
      'Enter service provider name',
      name: 'fullNameHint',
      desc: '',
      args: [],
    );
  }

  /// `Ahmed@info.com`
  String get emailHint {
    return Intl.message(
      'Ahmed@info.com',
      name: 'emailHint',
      desc: '',
      args: [],
    );
  }

  /// `Enter phone number`
  String get phoneHint {
    return Intl.message(
      'Enter phone number',
      name: 'phoneHint',
      desc: '',
      args: [],
    );
  }

  /// `Job`
  String get job {
    return Intl.message('Job', name: 'job', desc: '', args: []);
  }

  /// `Plumber`
  String get jobHint {
    return Intl.message('Plumber', name: 'jobHint', desc: '', args: []);
  }

  /// `Residential Address`
  String get address_home {
    return Intl.message(
      'Residential Address',
      name: 'address_home',
      desc: '',
      args: [],
    );
  }

  /// `Enter residential address`
  String get addressHint {
    return Intl.message(
      'Enter residential address',
      name: 'addressHint',
      desc: '',
      args: [],
    );
  }

  /// `Enter city`
  String get cityHint {
    return Intl.message('Enter city', name: 'cityHint', desc: '', args: []);
  }

  /// `Change`
  String get change {
    return Intl.message('Change', name: 'change', desc: '', args: []);
  }

  /// `Edit`
  String get edit {
    return Intl.message('Edit', name: 'edit', desc: '', args: []);
  }

  /// `Select Language`
  String get select_language {
    return Intl.message(
      'Select Language',
      name: 'select_language',
      desc: '',
      args: [],
    );
  }

  /// `Personal information`
  String get personal_information {
    return Intl.message(
      'Personal information',
      name: 'personal_information',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message('Search', name: 'search', desc: '', args: []);
  }

  /// `Logout`
  String get log_out {
    return Intl.message('Logout', name: 'log_out', desc: '', args: []);
  }

  /// `All Orders`
  String get all_orders {
    return Intl.message('All Orders', name: 'all_orders', desc: '', args: []);
  }

  /// `New Orders`
  String get new_orders {
    return Intl.message('New Orders', name: 'new_orders', desc: '', args: []);
  }

  /// `In Progress`
  String get in_progress {
    return Intl.message('In Progress', name: 'in_progress', desc: '', args: []);
  }

  /// `Accepted`
  String get accepted {
    return Intl.message('Accepted', name: 'accepted', desc: '', args: []);
  }

  /// `Rejected`
  String get rejected {
    return Intl.message('Rejected', name: 'rejected', desc: '', args: []);
  }

  /// `Received`
  String get received {
    return Intl.message('Received', name: 'received', desc: '', args: []);
  }

  /// `Completed`
  String get completed {
    return Intl.message('Completed', name: 'completed', desc: '', args: []);
  }

  /// `Canceled`
  String get canceled {
    return Intl.message('Canceled', name: 'canceled', desc: '', args: []);
  }

  /// `Accepted Order`
  String get accepted_order {
    return Intl.message(
      'Accepted Order',
      name: 'accepted_order',
      desc: '',
      args: [],
    );
  }

  /// `Rejected Order`
  String get rejected_order {
    return Intl.message(
      'Rejected Order',
      name: 'rejected_order',
      desc: '',
      args: [],
    );
  }

  /// `new`
  String get new_1 {
    return Intl.message('new', name: 'new_1', desc: '', args: []);
  }

  /// `Enter the verification code`
  String get enter_otp {
    return Intl.message(
      'Enter the verification code',
      name: 'enter_otp',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the verification code sent to your phone`
  String get otp_hint {
    return Intl.message(
      'Please enter the verification code sent to your phone',
      name: 'otp_hint',
      desc: '',
      args: [],
    );
  }

  /// `You can resend the code in `
  String get resent_text {
    return Intl.message(
      'You can resend the code in ',
      name: 'resent_text',
      desc: '',
      args: [],
    );
  }

  /// `{time} seconds`
  String resent_seconds(Object time) {
    return Intl.message(
      '$time seconds',
      name: 'resent_seconds',
      desc: '',
      args: [time],
    );
  }

  /// `Resend`
  String get resend {
    return Intl.message('Resend', name: 'resend', desc: '', args: []);
  }

  /// `مرحبا`
  String get welcome {
    return Intl.message('مرحبا', name: 'welcome', desc: '', args: []);
  }

  /// `ليبيا`
  String get lybia {
    return Intl.message('ليبيا', name: 'lybia', desc: '', args: []);
  }

  /// `Gypsum board`
  String get gyps {
    return Intl.message('Gypsum board', name: 'gyps', desc: '', args: []);
  }

  /// `job`
  String get work {
    return Intl.message('job', name: 'work', desc: '', args: []);
  }

  /// `Chose service`
  String get chose_service {
    return Intl.message(
      'Chose service',
      name: 'chose_service',
      desc: '',
      args: [],
    );
  }

  /// `An electrician is a professional who installs, maintains, and repairs electrical systems in homes, buildings, and factories.`
  String get electrical_job_description {
    return Intl.message(
      'An electrician is a professional who installs, maintains, and repairs electrical systems in homes, buildings, and factories.',
      name: 'electrical_job_description',
      desc: '',
      args: [],
    );
  }

  /// `A plumber is responsible for installing and maintaining plumbing systems, including pipes, drainage, and water supply in buildings.`
  String get plumber_job_description {
    return Intl.message(
      'A plumber is responsible for installing and maintaining plumbing systems, including pipes, drainage, and water supply in buildings.',
      name: 'plumber_job_description',
      desc: '',
      args: [],
    );
  }

  /// `A painter is a professional who applies paint to walls, ceilings, and other surfaces to enhance their appearance and protect them.`
  String get painter_job_description {
    return Intl.message(
      'A painter is a professional who applies paint to walls, ceilings, and other surfaces to enhance their appearance and protect them.',
      name: 'painter_job_description',
      desc: '',
      args: [],
    );
  }

  /// `A ceramic and porcelain installer is a professional who lays ceramic and porcelain tiles on floors and walls in homes and buildings.`
  String get ceramic_job_description {
    return Intl.message(
      'A ceramic and porcelain installer is a professional who lays ceramic and porcelain tiles on floors and walls in homes and buildings.',
      name: 'ceramic_job_description',
      desc: '',
      args: [],
    );
  }

  /// `A gypsum board installer is a professional who installs gypsum board panels on walls and ceilings to create elegant and innovative interior designs.`
  String get gypsum_job_description {
    return Intl.message(
      'A gypsum board installer is a professional who installs gypsum board panels on walls and ceilings to create elegant and innovative interior designs.',
      name: 'gypsum_job_description',
      desc: '',
      args: [],
    );
  }

  /// `A ceiling installer is responsible for installing suspended ceilings in buildings, adding an aesthetic touch and providing sound and thermal insulation.`
  String get spoon_job_description {
    return Intl.message(
      'A ceiling installer is responsible for installing suspended ceilings in buildings, adding an aesthetic touch and providing sound and thermal insulation.',
      name: 'spoon_job_description',
      desc: '',
      args: [],
    );
  }

  /// `Add Prices`
  String get add_prices {
    return Intl.message('Add Prices', name: 'add_prices', desc: '', args: []);
  }

  /// `Foundation`
  String get foundation {
    return Intl.message('Foundation', name: 'foundation', desc: '', args: []);
  }

  /// `Maintenance`
  String get maintenance {
    return Intl.message('Maintenance', name: 'maintenance', desc: '', args: []);
  }

  /// `Finishing`
  String get finishing {
    return Intl.message('Finishing', name: 'finishing', desc: '', args: []);
  }

  /// `Delete`
  String get delete {
    return Intl.message('Delete', name: 'delete', desc: '', args: []);
  }

  /// `Service Description`
  String get service_description {
    return Intl.message(
      'Service Description',
      name: 'service_description',
      desc: '',
      args: [],
    );
  }

  /// `Service Price`
  String get service_price {
    return Intl.message(
      'Service Price',
      name: 'service_price',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message('Add', name: 'add', desc: '', args: []);
  }

  /// `Added services`
  String get added_services {
    return Intl.message(
      'Added services',
      name: 'added_services',
      desc: '',
      args: [],
    );
  }

  /// `Enter rejection reason`
  String get enter_reject_reason {
    return Intl.message(
      'Enter rejection reason',
      name: 'enter_reject_reason',
      desc: '',
      args: [],
    );
  }

  /// `Logout Confirmation`
  String get logout_confirmation {
    return Intl.message(
      'Logout Confirmation',
      name: 'logout_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to log out?`
  String get logout_message {
    return Intl.message(
      'Are you sure you want to log out?',
      name: 'logout_message',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
