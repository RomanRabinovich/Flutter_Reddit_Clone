import 'package:flutter/material.dart';
import 'package:flutter_application_4/models/post_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostCard extends ConsumerWidget {
  final Post post;
  const PostCard({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: Text(post.communityName),
    );
  }
}
