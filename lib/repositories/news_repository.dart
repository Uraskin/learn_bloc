
import 'package:learn_block/api/a_http_client.dart';
import 'package:learn_block/models/news_models.dart';

class NewsRepository {
  Future<NewsData> getActicles() async {
      return httpClient.get('/everything?q=apple');
  }
}