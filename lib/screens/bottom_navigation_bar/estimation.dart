import 'package:agrorice/screens/popup/estimate_result.dart';
import 'package:flutter/material.dart';

class EstimationSection extends StatefulWidget {
  const EstimationSection({Key? key}) : super(key: key);

  @override
  State<EstimationSection> createState() => _EstimationSectionState();
}

class _EstimationSectionState extends State<EstimationSection> {
  bool solo = true;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(24, 24, 60, 24),
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(255, 212, 232, 231),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('lib/assets/images/logo.png'),
              const Text(
                'Calcule o uso da água na sua plantação',
                style: TextStyle(
                  color: Color.fromARGB(255, 65, 112, 110),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(24, 36, 24, 6),
          child: Text('Quantidade de hectares da sua plantação:'),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(24, 6, 24, 12),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Hectares',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(24, 12, 24, 6),
          child: Text('Tempo de plantação (em dias):'),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(24, 6, 24, 12),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Plantação',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(24, 12, 24, 6),
          child: Text('Tempo de duração (em dias):'),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(24, 6, 24, 12),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Duração',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(24, 12, 24, 6),
          child: Text('Região:'),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(24, 6, 24, 12),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Região',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Preparação do solo? ${solo ? 'Sim' : 'Não'}'),
              Switch(
                  value: solo,
                  onChanged: (value) {
                    setState(() {
                      solo = value;
                    });
                  }),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 12, 24, 48),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EstimateResultScreen(),
                ),
              );
            },
            child: const Text('CALCULAR O USO DA ÁGUA'),
          ),
        ),
      ],
    );
  }
}
