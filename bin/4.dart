void main() {
  List<Post> posts = [];

  for (int i = 1; i <= 5; i++) {
    Post post = Post();
    post.title = "Posts $i";
    post.description = "Posts Explain $i";
    posts.add(post);
  }


  for (var post in posts) {
    print("${post.title} - ${post.description} - LIkes numbers: ${post.likeCount}");
  }
}

class Post {
  late String title;
  late String description;
  int likeCount = 0;
  List<String> comments = [];
  bool isPublished = false;

  void publish() {
    print("this posted .");
    isPublished = true;
  }

  void like() {
    likeCount++;
  }

  void comment(String message) {
    comments.add(message);
  }
}