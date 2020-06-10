import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_block/bloc/news/news_bloc.dart';
import 'package:learn_block/models/news_models.dart';

class NewsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
      ),
      body: BlocBuilder(
        bloc: BlocProvider.of<NewsBloc>(context)..add(FetchNewsEvent()),
        builder: (context, state) => _buildState(context, state),
      ),
    );
  }

  _buildState(context, state) {
    if (state is LoadingNewsState) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    if (state is ErrorNewsState) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'Error: ${state.error}',
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    if (state is IdleNewsState) {
      final newsData = state.news;

      if (newsData == null || newsData.articles.isEmpty) {
        return Center(
          child: Text(
            'Empty',
          ),
        );
      }

      return ListView.separated(
        shrinkWrap: true,
        itemCount: newsData.articles.length,
        separatorBuilder: (_, __) => SizedBox(height: 10),
        itemBuilder: (_, index) => _articleItem(newsData.articles[index]),
      );
    }
  }

  Widget _articleItem(Acrticle acrticle) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueGrey.withOpacity(0.1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            acrticle.author,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(acrticle.title),
          SizedBox(height: 5),
          Text(
            acrticle.description,
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
