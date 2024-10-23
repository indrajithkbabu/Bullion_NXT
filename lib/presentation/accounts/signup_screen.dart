import 'package:bullionnxtnew/bloc/account/account_bloc.dart';
import 'package:bullionnxtnew/helpers/app_colors.dart';
import 'package:bullionnxtnew/helpers/app_values.dart';
import 'package:bullionnxtnew/helpers/commons/common_functions.dart';
import 'package:bullionnxtnew/helpers/commons/loading.dart';
import 'package:bullionnxtnew/helpers/commons/snackbar.dart';
import 'package:bullionnxtnew/helpers/widgets/custom_elevated_button.dart';
import 'package:bullionnxtnew/helpers/widgets/custom_text_form_field.dart';
import 'package:bullionnxtnew/utils/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreen extends StatefulWidget {
const  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        // physics: NeverScrollableScrollPhysics(),
        child: BlocBuilder<AccountBloc, AccountState>(
          builder: (accountContext, accountState) {
            return MultiBlocListener(
              listeners: [
                BlocListener<AccountBloc, AccountState>(
                  listener: (context, state) {
                    if (state.isLoading) {
                      LoadingHelper.showLoading();
                    } else {
                      LoadingHelper.hideLoading();
                    }
                  },
                  listenWhen: (previous, current) =>
                      previous.isLoading != current.isLoading,
                ),
                BlocListener<AccountBloc, AccountState>(
                  listener: (context, state) {
                    if (state.isSignUpSuccess) {
                      SnackBarHelper.showSnackbar(
                        contentWidget: Text(state.successMessage),
                      );
                    }
                  },
                  listenWhen: (previous, current) =>
                      previous.isSignUpSuccess != current.isSignUpSuccess,
                ),
                BlocListener<AccountBloc, AccountState>(
                  listener: (context, state) {
                    if (state.isSignUpError) {
                      SnackBarHelper.showSnackbar(
                        height: (state.errorMessage.toString().length) > 100
                            ? 100
                            : null,
                        duration: const Duration(seconds: 2),
                        contentWidget: Text(state.errorMessage),
                      );
                    }
                  },
                  listenWhen: (previous, current) =>
                      previous.isSignUpError != current.isSignUpError,
                )
              ],
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: double.infinity,
                        color: AppColors.primary,
                      ),
                    ],
                  ),
                  Align(
                    alignment: const Alignment(
                        0, -0.5), // Adjust the Y value for positioning
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppValues.gapNormal),
                      child: Form(
                        key: formkey,
                        child: Column(
                          // mainAxisSize: MainAxisSize.min, // Center the column vertically
                          children: [
                            Commons.gapNormal(),
                            Commons.gapNormal(),
                            Commons.gapNormal(),
                            // Commons.gapNormal(),
                            Commons.gapVerySmall(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Registration',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium!
                                      .copyWith(
                                          color: AppColors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500),
                                ),
                                Icon(
                                  Icons.person,
                                  color: AppColors.darkSlateGrey,
                                  size: 20,
                                )
                              ],
                            ),
                            Commons.gapNormal(),
                            // const SvgCustom(
                            //   asset: Assets.assetsIconsIcLock,
                            //   semanticsLabel: 'login icon',
                            //   size: 75,
                            // ),
                            Commons.gapNormal(),
                            Commons.gapNormal(),
                            Commons.gapNormal(),
                            Commons.gapVerySmall(),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.6,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.white, width: 2),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                        AppValues.borderRadiusMedium)),
                                color: AppColors.darkSlateGrey,
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  children: [
                                    Commons.gapNormal(),
                                    Commons.gapNormal(),
                                    Commons.gapNormal(),
                                    CustomTextFormField(
                                      hintText: 'Enter store',
                                      prefixIcon: Icon(
                                        Icons.store,
                                        color: AppColors.primary,
                                      ),
                                      validator:
                                          ValidatorsHelper.validateStoreName,
                                      keyboardType: TextInputType.text,
                                      onChanged: (value) {
                                        accountContext.read<AccountBloc>().add(
                                            SetStoreName(storeName: value));
                                      },
                                    ),
                                    Commons.gapNormal(),
                                    CustomTextFormField(
                                      hintText: 'Enter mobile number',
                                      prefixIcon: Icon(
                                        Icons.phone,
                                        color: AppColors.primary,
                                      ),
                                      validator:
                                          ValidatorsHelper.validateMobile,
                                      keyboardType: TextInputType.phone,
                                      onChanged: (value) {
                                        accountContext.read<AccountBloc>().add(
                                            SetPhoneNumber(phoneNumber: value));
                                      },
                                    ),
                                    Commons.gapNormal(),
                                    CustomTextFormField(
                                      hintText: 'Password',
                                      prefixIcon: Icon(
                                        Icons.lock_outline,
                                        color: AppColors.primary,
                                      ),
                                      validator:
                                          ValidatorsHelper.validatePassword,
                                      obscureText: true,
                                      onChanged: (value) {
                                        accountContext
                                            .read<AccountBloc>()
                                            .add(SetPassword(password: value));
                                      },
                                    ),
                                    Commons.gapNormal(),
                                    CustomTextFormField(
                                      hintText: 'City',
                                      prefixIcon: Icon(
                                        Icons.location_city_rounded,
                                        color: AppColors.primary,
                                      ),
                                      validator: ValidatorsHelper.validateCity,
                                      onChanged: (value) {
                                        accountContext
                                            .read<AccountBloc>()
                                            .add(SetCity(city: value));
                                      },
                                    ),
                                     const Spacer(),
                                    ElevatedButtonCustom(
                                      text: 'Create account',
                                      bgColor: AppColors.cadetBlue,
                                      onPressed: () {
                                        if (formkey.currentState != null &&
                                            formkey.currentState!.validate()) {
                                          accountContext
                                              .read<AccountBloc>()
                                              .add(RegisterUserEvent());
                                        }
                                      },
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          AppValues.borderRadiusVerySmall,
                                        ),
                                      ),
                                    ),
                                    const Spacer()
                                  ],
                                ),
                              ),
                            ),
                            Commons.gapNormal(),
                            Commons.gapNormal(),
                            Commons.gapNormal(),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    context.read<AccountBloc>().add(
                                        ToggleLoginAndSignUpEvent(
                                            isLogin: true));
                                  },
                                  child: Text(
                                    'Login',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .copyWith(
                                          color: AppColors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                                Commons.gapVerySmall(isHeight: false),
                                const Icon(
                                  Icons.lock,
                                  size: 15,
                                )
                              ],
                            ),
                            Commons.gapNormal(),
                            Commons.gapNormal(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
