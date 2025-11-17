import 'package:flutter/material.dart';

void main() => runApp(TaskApp());

class TaskApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF6FCFB),
        primaryColor: Color(0xFF9FEAD8),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TasksPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TasksPage extends StatefulWidget {
  @override
  _TasksPageState createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _tasks = [];

  void _addTask() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;
    setState(() {
      _tasks.add(text);
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    final mint = Color(0xFF9FEAD8);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(88),
        child: AppBar(
          backgroundColor: mint,
          elevation: 0,
          centerTitle: false,
          title: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              'My Tasks',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          // Main content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: _tasks.isEmpty ? _emptyState(mint) : _taskList(),
            ),
          ),

          // Left floating circular menu
          Positioned(
            left: 16,
            top: MediaQuery.of(context).size.height * 0.45,
            child: Material(
              color: Colors.white,
              elevation: 20,
              shape: CircleBorder(),
              child: InkWell(
                customBorder: CircleBorder(),
                onTap: () {
                  // open drawer or menu
                },
                child: Container(
                  width: 66,
                  height: 66,
                  alignment: Alignment.center,
                  child: Icon(Icons.menu, color: Colors.black87),
                ),
              ),
            ),
          ),

          // Bottom input area
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white.withOpacity(0.01), // keep safe area
              padding: EdgeInsets.fromLTRB(16, 12, 16, 26),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(28),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.centerLeft,
                      child: TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                          hintText: 'Add a new task...',
                          border: InputBorder.none,
                        ),
                        onSubmitted: (_) => _addTask(),
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Material(
                    shape: CircleBorder(),
                    color: Colors.grey[300],
                    child: InkWell(
                      customBorder: CircleBorder(),
                      onTap: _addTask,
                      child: Container(
                        width: 56,
                        height: 56,
                        child: Icon(Icons.add, color: Colors.black54),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _emptyState(Color mint) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // circle with check icon
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: mint.withOpacity(0.55), width: 10),
            ),
            child: Center(
              child: Icon(Icons.check, size: 56, color: mint.withOpacity(0.75)),
            ),
          ),
          SizedBox(height: 24),
          Text(
            'No tasks yet',
            style: TextStyle(fontSize: 20, color: Colors.grey[800]),
          ),
          SizedBox(height: 8),
          Text(
            'Add a task to get started',
            style: TextStyle(fontSize: 15, color: Colors.grey[500]),
          ),
        ],
      ),
    );
  }

  Widget _taskList() {
    return ListView.separated(
      padding: EdgeInsets.only(bottom: 120, top: 16),
      itemCount: _tasks.length,
      separatorBuilder: (_, __) => SizedBox(height: 8),
      itemBuilder: (context, index) {
        final t = _tasks[index];
        return Dismissible(
          key: ValueKey(t + index.toString()),
          onDismissed: (_) => setState(() => _tasks.removeAt(index)),
          background: Container(color: Colors.redAccent),
          child: ListTile(
            tileColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            leading: Icon(Icons.check_circle_outline, color: Colors.teal),
            title: Text(t),
          ),
        );
      },
    );
  }
}
