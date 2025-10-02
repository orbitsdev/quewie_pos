import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:quewie_pos/core/constants/path_helper.dart';
import 'package:quewie_pos/core/theme/app_color.dart'; // AppColor class

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundLight, // Light BG
      body: Stack(
        children: [
          /// 🔹 Bottom wave
          Positioned(

            left: 0,
            bottom: 0,
            right: 0,
            child: SvgPicture.asset(
              'assets/svg/wave.svg',

              fit: BoxFit.cover,
              width: double.infinity,
              height: Get.size.height * 0.25,
            ),
          ),

          /// 🔹 Centered login card
          Center(
            child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12))
            ), 

              child: Container(
                width: 400, // fixed for desktop
                padding: const EdgeInsets.all(24),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Logo
                      Image.asset(
                        PathHelper.imagePath('quewie_with_name.png'),
                        height: 100,
                      ),
                   
                      const Gap(30),

                      // Email
                      TextFormField(
                        controller: _emailController,
                        style: const TextStyle(color: AppColor.textDark),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColor.primaryLight.withOpacity(0.05),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 0.5),
                            borderRadius: BorderRadius.circular(12),
                           
                          ),
                          labelText: 'Email',
                          labelStyle: const TextStyle(color: AppColor.textDark),
                          prefixIcon: const Icon(Icons.email, color: AppColor.primary),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                      ),
                      const Gap(20),

                      // Password
                      TextFormField(
                        controller: _passwordController,
                        obscureText: _obscurePassword,
                        style: const TextStyle(color: AppColor.textDark),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColor.primaryLight.withOpacity(0.05),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 0.5),
                            borderRadius: BorderRadius.circular(12),
                           
                          ),
                          labelText: 'Password',
                          labelStyle: const TextStyle(color: AppColor.textDark),
                          prefixIcon: const Icon(Icons.lock, color: AppColor.primary),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscurePassword ? Icons.visibility : Icons.visibility_off,
                              color: AppColor.primaryLight,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                      ),
                      const Gap(30),

                      // Login Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.primary,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Get.snackbar(
                                "Login Success",
                                "Email: ${_emailController.text}",
                                backgroundColor: AppColor.primaryLight,
                                colorText: Colors.white,
                              );
                            }
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
