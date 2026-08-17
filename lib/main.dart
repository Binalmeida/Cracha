import 'package:flutter/material.dart';
import 'widgets/cartao_estudante.dart';
import 'desafio_lista.dart';

void main() {
  runApp(const MeuCrachaApp());
}

class MeuCrachaApp extends StatelessWidget {
  const MeuCrachaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Identificação Estudantil',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ),
        useMaterial3: true,
      ),
      home: const TelaCracha(),
    );
  }
}

class TelaCracha extends StatelessWidget {
  const TelaCracha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PPDM - Identificação Estudantil',
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CartaoEstudante(
              nome: 'Ana Silva Santos',
              curso: 'Desenvolvimento Mobile / PPDM',
              ra: '2026109923',
              email: 'ana.silva@estudante.edu.br',
              imagem: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc5EFiPQ7vEorCoTdthjOapNe_TA1NB1x1NGmPI-ZdYQ&s=10',
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DesafioLista(),
                  ),
                );
              },
              child: const Text(
                'Ver 3 Crachás',
              ),
            ),
          ],
        ),
      ),
    );
  }
}