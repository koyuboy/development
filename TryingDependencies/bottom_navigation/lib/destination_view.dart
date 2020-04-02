

import './models/destinations.dart';

class DestinationView extends StatefulWidget {
  const DestinationView({Key key, this.singleDestination}) : super(key: key);

  final DestinationItem singleDestination;

  @override
  _DestinationViewState createState() => _DestinationViewState();
}

class _DestinationViewState extends State<DestinationView> {
  TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(
        text: 'sample text ${widget.singleDestination.title}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.singleDestination.title} Text'),
        backgroundColor: widget.singleDestination.color,
      ),
      backgroundColor: widget.singleDestination.color[100],
      body: Container(
        padding: EdgeInsets.all(32),
        alignment: Alignment.center,
        child: TextField(
          controller: _textController,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _textController.dispose();
  }
}
