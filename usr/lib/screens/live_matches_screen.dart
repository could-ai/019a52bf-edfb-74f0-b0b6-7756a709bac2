import 'package:flutter/material.dart';
import 'package:couldai_user_app/models/match_model.dart';
import 'package:couldai_user_app/widgets/match_card.dart';

class LiveMatchesScreen extends StatefulWidget {
  const LiveMatchesScreen({super.key});

  @override
  State<LiveMatchesScreen> createState() => _LiveMatchesScreenState();
}

class _LiveMatchesScreenState extends State<LiveMatchesScreen> {
  final List<Match> _matches = [
    Match(
      teamA: 'Liverpool',
      teamB: 'Real Madrid',
      score: '2 - 1',
      time: '78\'',
      teamALogo: 'assets/images/liverpool.png',
      teamBLogo: 'assets/images/real_madrid.png',
    ),
    Match(
      teamA: 'PSG',
      teamB: 'Bayern Munich',
      score: '0 - 0',
      time: 'HT',
      teamALogo: 'assets/images/psg.png',
      teamBLogo: 'assets/images/bayern.png',
    ),
    Match(
      teamA: 'Man City',
      teamB: 'Dortmund',
      score: '3 - 2',
      time: 'FT',
      teamALogo: 'assets/images/mancity.png',
      teamBLogo: 'assets/images/dortmund.png',
    ),
     Match(
      teamA: 'Chelsea',
      teamB: 'FC Barcelona',
      score: '1 - 1',
      time: '62\'',
      teamALogo: 'assets/images/chelsea.png',
      teamBLogo: 'assets/images/barcelona.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Live Matches'),
        backgroundColor: Colors.green[700],
      ),
      body: ListView.builder(
        itemCount: _matches.length,
        itemBuilder: (context, index) {
          return MatchCard(match: _matches[index]);
        },
      ),
    );
  }
}
