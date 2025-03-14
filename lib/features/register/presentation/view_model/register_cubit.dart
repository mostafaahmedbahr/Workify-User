import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:workify_user/features/register/presentation/view_model/register_states.dart';

import '../../../../main_importants.dart';
import '../../data/register_repos/register_repos.dart';


class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit(this.signUpRepo) : super(RegisterInitState());

  RegisterRepo? signUpRepo;
  static RegisterCubit get(context) => BlocProvider.of(context);

  bool isVisible = true;

  void changeSuffixIcon() {
    isVisible = !isVisible;
    emit(ChangeSuffixIconState());
  }

  bool isVisible2 = true;

  void changeSuffixIcon2() {
    isVisible2 = !isVisible2;
    emit(ChangeSuffixIconState2());
  }



  var nameCon = TextEditingController();
  var emailCon = TextEditingController();
  var mobileCon = TextEditingController();
  var passCon = TextEditingController();
  var confirmPassCon = TextEditingController();


  File? file;
  Future uploadOnlyImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowedExtensions: ["jpg", "png", "jpeg"],
      type: FileType.custom,
    );
    file = File(result?.files.single.path ?? "");
    debugPrint("---------- upload is done ------------");
    if(file!.path !=""){
      emit(UploadImageSuccessState());
    }

  }



}