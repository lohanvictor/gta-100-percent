import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gta/components/@shared/layout.dart';
import 'package:gta/components/button/counter_buttons.dart';
import 'package:gta/components/button/custom_outline_button.dart';
import 'package:gta/components/button/custom_text_button.dart';
import 'package:url_launcher/url_launcher.dart';

class CollectablePage extends StatelessWidget {
  final String titlePage;
  final String imageLink;
  final CounterButtons counterButtons;
  final CustomOutlinedButton customOutlinedButton;
  final String? videoLink;

  const CollectablePage(
      {super.key,
      required this.titlePage,
      required this.imageLink,
      required this.counterButtons,
      required this.customOutlinedButton,
      this.videoLink});

  @override
  Widget build(BuildContext context) {
    return LayoutView(
        body: Flex(
          direction: Axis.vertical,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Scrollbar(
              thumbVisibility: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 500,
                    width: double.maxFinite,
                    color: Colors.black12,
                    child: InteractiveViewer(
                      maxScale: 5,
                      child: Image.network(imageLink),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  counterButtons,
                  const SizedBox(
                    height: 8,
                  ),
                  customOutlinedButton,
                  const SizedBox(
                    height: 8,
                  ),
                  if (videoLink != null)
                    CustomTextButton(
                      text: "Confira o video",
                      onPressed: () async {
                        final Uri url = Uri.parse(videoLink!);
                        if (await canLaunchUrl(url)) {
                          await launchUrl(
                            url,
                            mode: LaunchMode.externalApplication,
                          );
                        }
                      },
                    )
                ],
              ),
            )
          ],
        ),
        titlePage: titlePage);
  }
}
