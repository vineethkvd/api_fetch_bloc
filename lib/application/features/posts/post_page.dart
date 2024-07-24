import 'package:api_fetch_bloc/application/features/posts/post_bloc/post_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../core/service/theme_service.dart';

class PostWrapper extends StatefulWidget {
  const PostWrapper({super.key});

  @override
  State<PostWrapper> createState() => _PostWrapperState();
}

class _PostWrapperState extends State<PostWrapper> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => PostBloc(),
      )
    ], child: PostPage());
  }
}

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  void initState() {
    BlocProvider.of<PostBloc>(context).add(PostRequestEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final themeService = Provider.of<ThemeServiceProvider>(context);
    final themeData = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Post Page',
            style: themeData.textTheme.bodyLarge,
          ),
          actions: [
            IconButton(
              icon: Icon(
                themeService.isDarkModeOn ? Icons.light_mode : Icons.dark_mode,
              ),
              onPressed: () {
                themeService.toggleTheme();
              },
            ),
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(children: [
            BlocBuilder<PostBloc, PostState>(
              builder: (context, state) {
                if (state is PostInitial) {
                  return Text("Waiting for post");
                } else if (state is PostLoading) {
                  return Center(child: CircularProgressIndicator());
                } else if (state is PostLoaded) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: state.post.length,
                      itemBuilder: (context, index) {
                        return Card(
                          color: Colors.greenAccent,
                          child: ListTile(
                              leading: CircleAvatar(
                                  child: Text("${state.post![index].id}")),
                              title: Text("${state.post![index].title}")),
                        );
                      },
                    ),
                  );
                } else {
                  return Text("Unhandled state");
                }
              },
            ),
          ]),
        ));
  }
}
