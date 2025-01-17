// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../themes/app_colors.dart';

// class AppTextButton extends StatelessWidget {
//   final double? borderRadius;
//   final Color? backgroundColor;
//   final double? horizontalPadding;
//   final double? verticalPadding;
//   final double? buttonWidth;
//   final double? buttonHeight;
//   final String? buttonText;
//   final TextStyle? textStyle;
//   final VoidCallback onPressed;
//   final Widget? child;
//   const AppTextButton({
//     super.key,
//     this.borderRadius,
//     this.backgroundColor,
//     this.horizontalPadding,
//     this.verticalPadding,
//     this.buttonHeight,
//     this.buttonWidth,
//     this.buttonText,
//     this.textStyle,
//     required this.onPressed,
//     this.child,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       style: ButtonStyle(
//         shape: WidgetStateProperty.all<RoundedRectangleBorder>(
//           RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(borderRadius ?? 16.0),
//           ),
//         ),
//         backgroundColor: WidgetStatePropertyAll(
//           backgroundColor ?? AppColors.blueAccent,
//         ),
//         padding: WidgetStateProperty.all<EdgeInsets>(
//           EdgeInsets.symmetric(
//             horizontal: horizontalPadding?.w ?? 12.w,
//             vertical: verticalPadding?.h ?? 14.h,
//           ),
//         ),
//         fixedSize: WidgetStateProperty.all(
//           Size(buttonWidth?.w ?? double.maxFinite, buttonHeight ?? 50.h),
//         ),
//       ),
//       onPressed: onPressed,
//       child: child ??
//           Text(
//             buttonText ?? 'No Text',
//             style: textStyle,
//           ),
//     );
//   }
// }
