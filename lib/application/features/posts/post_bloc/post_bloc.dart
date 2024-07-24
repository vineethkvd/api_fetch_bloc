import 'package:api_fetch_bloc/domain/entity/post_entity.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../domain/usecases/post_usecase.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostInitial()) {
    on<PostRequestEvent>((event, emit) async {
      try {
        final posts = await PostUseCase().getDataFromDataSource();
        emit(PostLoaded(post: posts));
      } catch (e) {
        emit(PostError(errorMsg: e.toString()));
      }
    });
  }
}
