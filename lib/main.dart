//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() =>
  runApp(MaterialApp(
    home: QuoteList(),
  ));

class QuoteList extends StatefulWidget {
  

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

List <Quote> quotes = [
  Quote(author: 'Tanishka', text: 'Courage is not the absence of fear, but triumph over it'),
  Quote(author: 'Tanishka', text: 'Courage is not the absence of fear, but triumph over it'),
  Quote(author: 'Tanishka', text: 'Courage is not the absence of fear, but triumph over it'),

];


// Widget quoteTemplate(quote) {
  
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes',),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),

      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: (){
            setState(() {
              quotes.remove(quote);
            });
          })).toList(),
      ),
      
    );
  }
}

