import 'package:bullionnxtnew/bloc/account/account_bloc.dart';
import 'package:bullionnxtnew/helpers/app_colors.dart';
import 'package:bullionnxtnew/helpers/app_values.dart';
import 'package:bullionnxtnew/helpers/assets.dart';
import 'package:bullionnxtnew/helpers/commons/common_functions.dart';
import 'package:bullionnxtnew/helpers/commons/loading.dart';
import 'package:bullionnxtnew/helpers/commons/snackbar.dart';
import 'package:bullionnxtnew/helpers/widgets/custom_elevated_button.dart';
import 'package:bullionnxtnew/helpers/widgets/custom_text_form_field.dart';
import 'package:bullionnxtnew/helpers/widgets/svg_custom.dart';
import 'package:bullionnxtnew/utils/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
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
                    if (state.isLoginSuccess) {
                      SnackBarHelper.showSnackbar(
                        contentWidget: Text(state.successMessage),
                      );
                    }
                  },
                  listenWhen: (previous, current) =>
                      previous.isLoginSuccess != current.isLoginSuccess,
                ),
                BlocListener<AccountBloc, AccountState>(
                  listener: (context, state) {
                    if (state.isLoginError) {
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
                      previous.isLoginError != current.isLoginError,
                )
          ],
          child: Scaffold(
              backgroundColor: AppColors.white,
              body: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
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
                          key: _formkey,
                          child: Column(
                            // mainAxisSize: MainAxisSize.min, // Center the column vertically
                            children: [
                              Commons.gapNormal(),
                              Commons.gapNormal(),
                              Commons.gapNormal(),
                              // Commons.gapNormal(),
                              Commons.gapVerySmall(),
                              Text(
                                'Login',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium!
                                    .copyWith(
                                        color: AppColors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500),
                              ),
                              Commons.gapNormal(),
                              const SvgCustom(
                                asset: Assets.assetsIconsIcLock,
                                semanticsLabel: 'login icon',
                                size: 75,
                              ),
                              Commons.gapNormal(),
                              Commons.gapNormal(),
                              Commons.gapNormal(),
                              Commons.gapVerySmall(),
                              Container(
                                height: MediaQuery.of(context).size.height * 0.4,
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
                                        hintText: 'Enter mobile number',
                                        validator:
                                          ValidatorsHelper.validateMobile,
                                        prefixIcon: Icon(
                                          Icons.phone,
                                          color: AppColors.primary,
                                        ),
                                        keyboardType: TextInputType.phone,
                                        onChanged: (value) {
                                             accountContext.read<AccountBloc>().add(
                                            SetPhoneNumber(phoneNumber: value));
                                        },
                                      ),
                                      Commons.gapNormal(),
                                      CustomTextFormField(
                                        hintText: 'Password',
                                        validator:
                                          ValidatorsHelper.validatePassword,
                                        prefixIcon: Icon(
                                          Icons.lock_outline,
                                          color: AppColors.primary,
                                        ),
                                        obscureText: true,
                                        onChanged: (value) {
                                           accountContext
                                            .read<AccountBloc>()
                                            .add(SetPassword(password: value));
                                        },
                                      ),
                                     const Spacer(), 
                                      ElevatedButtonCustom(
                                        text: 'Login',
                                        bgColor: AppColors.cadetBlue,
                                        onPressed: () {
                                           if (_formkey.currentState != null &&
                                            _formkey.currentState!.validate()) {
                                            accountContext
                                              .read<AccountBloc>()
                                              .add(LoginUserEvent());
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
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      context.read<AccountBloc>().add(
                                          ToggleLoginAndSignUpEvent(
                                              isLogin: false));
                                    },
                                    child: Text(
                                      'Create new account',
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
                                    Icons.person,
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
              )),
        );
      },
    );
  }
}
