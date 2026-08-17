import 'package:flutter/material.dart';
import 'widgets/cartao_estudante.dart';

class DesafioLista extends StatelessWidget {
  const DesafioLista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lista de Estudantes',
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 16),

            CartaoEstudante(
              nome: 'Ana Silva Santos',
              curso: 'Desenvolvimento Mobile / PPDM',
              ra: '2026109923',
              email: 'ana.silva@estudante.edu.br',
              imagem: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc5EFiPQ7vEorCoTdthjOapNe_TA1NB1x1NGmPI-ZdYQ&s=10',
            ),

            SizedBox(height: 16),

            CartaoEstudante(
              nome: 'Carlos Oliveira',
              curso: 'Desenvolvimento de Sistemas',
              ra: '2026109924',
              email: 'carlos.oliveira@estudante.edu.br',
              imagem: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_yQb-aCl6kRAAsHMtJ9YmPLsBvJ-GgLbnufBbVUH0aw&s=10',
            ),

            SizedBox(height: 16),

            CartaoEstudante(
              nome: 'Mariana Souza',
              curso: 'Análise e Desenvolvimento de Sistemas',
              ra: '2026109925',
              email: 'mariana.souza@estudante.edu.br',
              imagem: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlpW9tJljJsZSLINzW04CtuQng5_axRR5xkv9UlFM36A&s=10',
            ),

            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}