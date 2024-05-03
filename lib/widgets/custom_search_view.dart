import 'package:bb_app/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomSearchView extends StatelessWidget {
  CustomSearchView({
    Key? key,
    this.alignment,
    this.width,
    this.margin,
    this.controller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.fillColor,
    this.filled = false,
    this.contentPadding,
    this.defaultBorderDecoration,
    this.enabledBorderDecoration,
    this.focusedBorderDecoration,
    this.disabledBorderDecoration,
    this.validator,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? width;

  final EdgeInsetsGeometry? margin;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final Color? fillColor;

  final bool? filled;

  final EdgeInsets? contentPadding;

  final InputBorder? defaultBorderDecoration;

  final InputBorder? enabledBorderDecoration;

  final InputBorder? focusedBorderDecoration;

  final InputBorder? disabledBorderDecoration;

  final FormFieldValidator<String>? validator;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: searchViewWidget,
          )
        : searchViewWidget;
  }

  Widget get searchViewWidget => InkWell(
        onTap: onTap,
        child: Container(
          width: width ?? double.maxFinite,
          height: 6.h,
          margin: margin,
          decoration: BoxDecoration(
            border: Border.all(
              color: appTheme.gray300,
            ),
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                8.00,
              ),
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 2.w,
              ),
              CustomImageView(
                svgPath: ImageConstant.imgIcons24Search1,
              ),
              SizedBox(
                width: 2.w,
              ),
              Text(
                // controller: controller,
                "Search",
                // focusNode: focusNode ?? FocusNode(),
                // autofocus: autofocus!,
                style: textStyle,
                // keyboardType: textInputType,
                maxLines: maxLines ?? 1,
                // decoration: decoration,
                // validator: validator,
              ),
            ],
          ),
        ),
      );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix ??
            Padding(
              padding: EdgeInsets.only(
                right: getHorizontalSize(
                  15.00,
                ),
              ),
              child: IconButton(
                onPressed: () => controller!.clear(),
                icon: Icon(
                  Icons.clear,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
        suffixIconConstraints: suffixConstraints,
        fillColor: fillColor,
        filled: filled,
        isDense: true,
        contentPadding: contentPadding,
        border: defaultBorderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  8.00,
                ),
              ),
              borderSide: BorderSide(
                color: appTheme.gray300,
                width: 1,
              ),
            ),
        enabledBorder: enabledBorderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  8.00,
                ),
              ),
              borderSide: BorderSide(
                color: appTheme.gray300,
                width: 1,
              ),
            ),
        focusedBorder: focusedBorderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  8.00,
                ),
              ),
              borderSide: BorderSide(
                color: appTheme.gray300,
                width: 1,
              ),
            ),
        disabledBorder: disabledBorderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  8.00,
                ),
              ),
              borderSide: BorderSide(
                color: appTheme.gray300,
                width: 1,
              ),
            ),
      );
}

class CustomSearchView1 extends StatelessWidget {
  CustomSearchView1({
    Key? key,
    this.alignment,
    this.width,
    this.margin,
    this.controller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.fillColor,
    this.filled = false,
    this.contentPadding,
    this.defaultBorderDecoration,
    this.enabledBorderDecoration,
    this.focusedBorderDecoration,
    this.disabledBorderDecoration,
    this.validator,
    this.onTap,
    required this.textInputAction,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? width;

  final EdgeInsetsGeometry? margin;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final Color? fillColor;

  final bool? filled;

  final EdgeInsets? contentPadding;

  final InputBorder? defaultBorderDecoration;

  final InputBorder? enabledBorderDecoration;

  final InputBorder? focusedBorderDecoration;

  final InputBorder? disabledBorderDecoration;

  final FormFieldValidator<String>? validator;
  final VoidCallback? onTap;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: searchViewWidget,
          )
        : searchViewWidget;
  }

  Widget get searchViewWidget => InkWell(
        onTap: onTap,
        child: Container(
          width: width ?? double.maxFinite,
          height: 6.h,
          margin: margin,
          child: TextFormField(
            controller: controller,
            textInputAction: textInputAction,
            // focusNode: focusNode ?? FocusNode(),
            autofocus: autofocus!,
            style: textStyle,
            keyboardType: textInputType,
            maxLines: maxLines ?? 1,
            decoration: decoration,
            validator: validator,
          ),
        ),
      );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix ??
            Padding(
              padding: EdgeInsets.only(
                right: getHorizontalSize(
                  15.00,
                ),
              ),
              child: IconButton(
                onPressed: () => controller!.clear(),
                icon: Icon(
                  Icons.clear,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
        suffixIconConstraints: suffixConstraints,
        fillColor: fillColor,
        filled: filled,
        isDense: true,
        contentPadding: contentPadding,
        border: defaultBorderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  8.00,
                ),
              ),
              borderSide: BorderSide(
                color: appTheme.gray300,
                width: 1,
              ),
            ),
        enabledBorder: enabledBorderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  8.00,
                ),
              ),
              borderSide: BorderSide(
                color: appTheme.gray300,
                width: 1,
              ),
            ),
        focusedBorder: focusedBorderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  8.00,
                ),
              ),
              borderSide: BorderSide(
                color: appTheme.gray300,
                width: 1,
              ),
            ),
        disabledBorder: disabledBorderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  8.00,
                ),
              ),
              borderSide: BorderSide(
                color: appTheme.gray300,
                width: 1,
              ),
            ),
      );
}
