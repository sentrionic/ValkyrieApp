import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:valkyrie_app/application/account/update_account/update_account_bloc.dart';

class AccountAvatar extends StatefulWidget {
  final String image;
  const AccountAvatar({Key? key, required this.image}) : super(key: key);

  @override
  State<AccountAvatar> createState() => _AccountAvatarState();
}

class _AccountAvatarState extends State<AccountAvatar> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAccountBloc, UpdateAccountState>(
      builder: (context, state) => Stack(
        children: [
          GestureDetector(
            onTap: () => _selectProfileImage(context),
            child: CircleAvatar(
              radius: 45,
              foregroundImage:
                  state.image == null ? NetworkImage(widget.image) : null,
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
      if (!mounted) return;
      final croppedFile = await ImageCropper().cropImage(
        sourcePath: pickedFile.path,
        cropStyle: CropStyle.circle,
        uiSettings: [
          AndroidUiSettings(
            toolbarTitle: "Guild Icon",
            toolbarColor: Theme.of(context).primaryColor,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.square,
            lockAspectRatio: false,
          ),
        ],
        compressQuality: 70,
      );
      if (croppedFile != null && mounted) {
        context
            .read<UpdateAccountBloc>()
            .add(UpdateAccountEvent.imageChanged(File(croppedFile.path)));
      }
    }
  }
}
