import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:valkyrie_app/application/account/update_account/update_account_bloc.dart';

class AccountAvatar extends StatelessWidget {
  final String image;
  const AccountAvatar({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAccountBloc, UpdateAccountState>(
      builder: (context, state) => Stack(
        children: [
          GestureDetector(
            onTap: () => _selectProfileImage(context),
            child: CircleAvatar(
              radius: 45,
              foregroundImage: state.image == null ? NetworkImage(image) : null,
              child: state.image != null
                  ? ClipOval(
                      child: Image.file(
                        state.image!,
                        fit: BoxFit.cover,
                      ),
                    )
                  : null,
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              constraints: const BoxConstraints(
                minWidth: 30,
                minHeight: 30,
              ),
              child: const Icon(
                Icons.add_photo_alternate_outlined,
                color: Colors.black87,
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<void> _selectProfileImage(BuildContext context) async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      final croppedFile = await ImageCropper.cropImage(
        sourcePath: pickedFile.path,
        cropStyle: CropStyle.circle,
        androidUiSettings: AndroidUiSettings(
          toolbarTitle: "Profile Image",
          toolbarColor: Theme.of(context).primaryColor,
          toolbarWidgetColor: Colors.white,
          initAspectRatio: CropAspectRatioPreset.square,
          lockAspectRatio: false,
        ),
        iosUiSettings: const IOSUiSettings(),
        compressQuality: 70,
      );
      if (croppedFile != null) {
        context
            .read<UpdateAccountBloc>()
            .add(UpdateAccountEvent.imageChanged(croppedFile));
      }
    }
  }
}
