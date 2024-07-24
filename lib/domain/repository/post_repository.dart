//only have definition


import '../entity/post_entity.dart';

abstract class PostRepo {
  Future<List<PostEntity>> getPostFromDataSource();
}