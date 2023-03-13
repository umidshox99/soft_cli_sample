
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:soft_cli_sample/core/constants/constants.dart';
import 'package:soft_cli_sample/di/get_it.dart';
import 'package:soft_cli_sample/routes/navigation_route.dart';

class BottomSheetImageWidget extends StatefulWidget {
  const BottomSheetImageWidget({Key? key}) : super(key: key);

  @override
  State<BottomSheetImageWidget> createState() => _BottomSheetImageWidgetState();
}

class _BottomSheetImageWidgetState extends State<BottomSheetImageWidget> {
  CameraController? controller;
  List<CameraDescription> cameras = [];

  @override
  void initState() {
    super.initState();
    _initCamera();
  }

  _initCamera() async {
    try {
      cameras = await availableCameras();
    } on CameraException catch (e) {
      _showCameraException(e);
    }
    _onNewCameraSelected(cameras.first);
  }

  _onNewCameraSelected(CameraDescription cameraDescription) async {
    if (controller != null) {
      await controller?.dispose();
    }
    controller = CameraController(
      cameraDescription,
      ResolutionPreset.ultraHigh,
      enableAudio: false,
      imageFormatGroup: ImageFormatGroup.jpeg,
    );

    controller?.addListener(() {
      if (mounted) setState(() {});
      if (controller?.value.hasError == true) {}
    });

    try {
      await controller?.initialize();
    } on CameraException catch (e) {
      _showCameraException(e);
    }

    if (mounted) {
      setState(() {});
    }
  }

  _showCameraException(CameraException e) {
    getItInstance<NavigationRoute>()
        .showError('${Constants.error} ${e.code}\n${e.description}');
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<EditProfileCubit, EditProfileState>(
    //   builder: (editProfileContext, state) {
    //     final cubit = editProfileContext.read<EditProfileCubit>();
    //     return Container(
    //       height: AppFunctions.getImageBottomSheetHeight(context),
    //       padding: const EdgeInsets.only(top: Sizes.dimen_16, left: Sizes.dimen_12, right: Sizes.dimen_12),
    //       child: Column(
    //         mainAxisSize: MainAxisSize.min,
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         mainAxisAlignment: MainAxisAlignment.start,
    //         children: [
    //           Center(
    //             child: Text(
    //               LocaleKeys.chooseImage.tr(),
    //               style: AppTextStyle.appBarTitle,
    //             ),
    //           ),
    //           const SizedBox(
    //             height: Sizes.dimen_12,
    //           ),
    //           SizedBox(
    //             height: AppFunctions.getImageBottomSheetHeight(context) - Sizes.dimen_52,
    //             child: GridView.builder(
    //               itemCount: state.photos.length,
    //               physics: const BouncingScrollPhysics(),
    //               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //                 crossAxisCount: Sizes.crossAxisCount3,
    //                 crossAxisSpacing: Sizes.dimen_12,
    //                 mainAxisSpacing: Sizes.dimen_12,
    //               ),
    //               itemBuilder: (BuildContext context1, int index) {
    //                 if (index == 0) {
    //                   return Stack(
    //                     children: [
    //                       Positioned.fill(
    //                         child: ClipRRect(
    //                           borderRadius: const BorderRadius.all(Radius.circular(Sizes.dimen_8)),
    //                           child: controller != null && controller?.value.isInitialized == true
    //                               ? CameraPreview(controller!)
    //                               : const SizedBox(),
    //                         ),
    //                       ),
    //                       Positioned.fill(
    //                         child: Material(
    //                           color: Colors.transparent,
    //                           child: InkWell(
    //                             splashColor: Colors.black12,
    //                             onTap: () async {
    //                               cubit.openCameraPage(controller, cameras);
    //                             },
    //                             borderRadius: const BorderRadius.all(Radius.circular(8)),
    //                             child: const Icon(
    //                               Icons.flip_camera_ios_outlined,
    //                               size: Sizes.dimen_32,
    //                             ),
    //                           ),
    //                         ),
    //                       )
    //                     ],
    //                   );
    //                 } else {
    //                   return FutureBuilder(
    //                     future: state.photos[index].thumbnailDataWithSize(const ThumbnailSize(
    //                         Sizes.pictureSIze, Sizes.pictureSIze)),
    //                     builder: (BuildContext context, AsyncSnapshot<Uint8List?> snapshot) {
    //                       if (snapshot.connectionState == ConnectionState.done) {
    //                         return Stack(
    //                           children: [
    //                             Positioned.fill(
    //                               child: ClipRRect(
    //                                 borderRadius: const BorderRadius.all(Radius.circular(Sizes.dimen_8)),
    //                                 child: Image.memory(
    //                                   snapshot.data!,
    //                                   height: AppFunctions.getBottomSheetImageHeight(context),
    //                                   width: AppFunctions.getBottomSheetImageWidth(context),
    //                                   // color: clrRedColor,
    //                                   fit: BoxFit.cover,
    //                                 ),
    //                               ),
    //                             ),
    //                             Positioned.fill(
    //                               child: Material(
    //                                 color: Colors.transparent,
    //                                 child: InkWell(
    //                                   splashColor: Colors.black12,
    //                                   onTap: () async {
    //                                     final file = await state.photos[index].file;
    //                                     cubit.changeFile(file, false);
    //                                   },
    //                                   borderRadius: const BorderRadius.all(Radius.circular(Sizes.dimen_8)),
    //                                 ),
    //                               ),
    //                             )
    //                           ],
    //                         );
    //                       }
    //                       return Container(
    //                         padding: const EdgeInsets.all(Sizes.dimen_12),
    //                         decoration: const BoxDecoration(
    //                           color: AppColor.assets,
    //                           borderRadius: BorderRadius.all(
    //                             Radius.circular(Sizes.dimen_8),
    //                           ),
    //                         ),
    //                         child: Image.asset(AppPng.logo),
    //                       );
    //                     },
    //                   );
    //                 }
    //               },
    //             ),
    //           ),
    //         ],
    //       ),
    //     );
    //   },
    // );
    return Container();
  }
}
