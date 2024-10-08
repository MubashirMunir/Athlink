import 'package:flutter/material.dart';
import 'package:athlink/Common/AppText/AppTextView.dart';
import 'package:athlink/Common/AppText/font_type.dart';
import 'package:athlink/Handlers/cache_image_view.dart';
import 'package:athlink/Theme/colors.dart';

class ImagePreview extends StatelessWidget {
  final String path;
  const ImagePreview({Key? key, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              IconButton(
                  iconSize: 35,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.black,
                    size: 20,
                  )),
              const Spacer(),
              const CustomText(
                title: "Preview",
                fontType: FontType.Roboto,
                size: 18,
                color: AppColor.darkText,
                fontWeight: FontWeights.medium,
              ),
              const Spacer(),
              const SizedBox(
                width: 40,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Spacer(),
          if (path.isNotEmpty)
            Center(child: cacheImageView(image: path, boxfit: BoxFit.fill)),
          const Spacer(),
          const SizedBox(
            height: 70,
          ),
        ],
      ),
    );
  }
}
