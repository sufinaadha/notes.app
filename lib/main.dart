import 'package:flutter/material.dart';
import 'package:notes_app/notes_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  // Supabase setup
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://fmmeepbjpyvcjhshkatj.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZtbWVlcGJqcHl2Y2poc2hrYXRqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzQxNTk5OTcsImV4cCI6MjA0OTczNTk5N30.zIF_mbZwgnrWSKaKUd3JLN0jNGh8Sm6ZKTj8zfarhbc',
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NotesPage(),
    );
  }
}