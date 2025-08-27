import 'package:flutter/material.dart';

void main() {
  runApp(const ProAgenciaApp());
}

class ProAgenciaApp extends StatelessWidget {
  const ProAgenciaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MobileLanding(),
    );
  }
}

class MobileLanding extends StatelessWidget {
  const MobileLanding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              NavBar(),
              HeroSection(),
              SizedBox(height: 16),
              TrustedBy(),
              SizedBox(height: 16),
              USPFeatures(),
              SizedBox(height: 16),
              Services(),
              SizedBox(height: 16),
              Testimonials(),
              SizedBox(height: 16),
              ContactForm(),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

/// ───────────────────── NAVBAR ─────────────────────
class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          const Icon(Icons.golf_course, color: Color(0xFF0E5A4B)),
          const SizedBox(width: 8),
          const Text("pro&gencia",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xFF0E5A4B))),
          const Spacer(),
          OutlinedButton(onPressed: () {}, child: const Text("Live demo")),
        ],
      ),
    );
  }
}

/// ───────────────────── HERO ─────────────────────
class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(18)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Build by golf professionals\nfor golf professionals",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xFF0E5A4B)),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFFF6A2E),
              foregroundColor: Colors.white,
            ),
            onPressed: () {},
            child: const Text("See product demo"),
          ),
          const SizedBox(height: 16),
          Container(
            height: 160,
            decoration: BoxDecoration(
              color: Color(0xFFDDF1EB),
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Center(
              child: Icon(Icons.devices, size: 60, color: Color(0xFF0E5A4B)),
            ),
          ),
        ],
      ),
    );
  }
}

/// ───────────────────── TRUSTED BY ─────────────────────
class TrustedBy extends StatelessWidget {
  const TrustedBy({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text("We are trusted by more than 1,000 golf professionals worldwide",
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xFF0E5A4B))),
        SizedBox(height: 12),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            Chip(label: Text("Trackman")),
            Chip(label: Text("FlightScope")),
            Chip(label: Text("Foresight")),
            Chip(label: Text("TopTracer")),
          ],
        ),
      ],
    );
  }
}

/// ───────────────────── FEATURES ─────────────────────
class USPFeatures extends StatelessWidget {
  const USPFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFFEAF3EF),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("USP’s features",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xFF0E5A4B))),
          SizedBox(height: 12),
          FeatureTile(
            title: "Write your availability",
            subtitle:
                "Open booking from tracking data and private lessons in 2 clicks.",
          ),
          SizedBox(height: 10),
          FeatureTile(
            title: "Indoor Studios",
            subtitle: "Run sessions, sell packages, & keep everything connected.",
          ),
          SizedBox(height: 10),
          FeatureTile(
            title: "Academies",
            subtitle: "Manage multi-instructor bookings seamlessly.",
          ),
        ],
      ),
    );
  }
}

class FeatureTile extends StatelessWidget {
  final String title, subtitle;
  const FeatureTile({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 4),
          Text(subtitle),
        ],
      ),
    );
  }
}

/// ───────────────────── SERVICES ─────────────────────
class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFFEAF3EF),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Our services",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xFF0E5A4B))),
          SizedBox(height: 12),
          Text("Individuals - Lesson booking, video analysis, etc."),
          SizedBox(height: 6),
          Text("Teams & Academies - Shared schedules, packaged sessions."),
        ],
      ),
    );
  }
}

/// ───────────────────── TESTIMONIALS ─────────────────────
class Testimonials extends StatelessWidget {
  const Testimonials({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF0E5A4B),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: const [
          CircleAvatar(radius: 36, child: Icon(Icons.person)),
          SizedBox(height: 12),
          Text(
            "“ProAgencia.com offers a better and more complete package than others in golf business.”",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

/// ───────────────────── CONTACT FORM (STATIC) ─────────────────────
class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFFEAF3EF),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Tell us how we can help\nand we’ll get in touch shortly.",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xFF0E5A4B))),
          SizedBox(height: 12),
          TextField(decoration: InputDecoration(labelText: "Email")),
          SizedBox(height: 8),
          TextField(decoration: InputDecoration(labelText: "Full name")),
          SizedBox(height: 8),
          TextField(
              maxLines: 3, decoration: InputDecoration(labelText: "Message")),
          SizedBox(height: 12),
          ElevatedButton(onPressed: null, child: Text("Submit")),
        ],
      ),
    );
  }
}
