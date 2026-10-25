import 'package:flutter/material.dart';

void main() {
  runApp(const DegerlerApp());
}

class DegerlerApp extends StatelessWidget {
  const DegerlerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Değerler Eğitimi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ),
        useMaterial3: true,
      ),
      home: const DegerlerSayfasi(),
    );
  }
}

class DegerlerSayfasi extends StatelessWidget {
  const DegerlerSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    final degerler = [
      {
        'baslik': 'Adalet',
        'aciklama': 'Herkesin hakkını gözet.',
        'ikon': Icons.balance,
      },
      {
        'baslik': 'Yardımlaşma',
        'aciklama': 'İhtiyaç sahiplerine destek ol.',
        'ikon': Icons.volunteer_activism,
      },
      {
        'baslik': 'Dürüstlük',
        'aciklama': 'Doğru sözlü ve güvenilir ol.',
        'ikon': Icons.verified_user,
      },
      {
        'baslik': 'Sorumluluk',
        'aciklama': 'Görevlerini özenle yerine getir.',
        'ikon': Icons.task_alt,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Değerler Eğitimi'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),

      body: Column(
        children: [
          // Günün değeri bölümü
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            color: Colors.green.shade50,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Günün Değeri',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'İyilikte ve güzel davranışlarda '
                  'örnek olmaya çalış.',
                ),
              ],
            ),
          ),

          // Değerler listesi
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: degerler.length,
              itemBuilder: (context, index) {
                final deger = degerler[index];

                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        // Değerin ikonu
                        Icon(
                          deger['ikon'] as IconData,
                          size: 36,
                          color: Colors.green,
                        ),

                        const SizedBox(width: 12),

                        // Başlık ve açıklama
                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Text(
                                deger['baslik'] as String,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const SizedBox(height: 4),

                              // Flexible kaldırıldı.
                              // Text kendi yüksekliğine göre boyutlanır.
                              Text(
                                deger['aciklama'] as String,
                              ),
                            ],
                          ),
                        ),

                        // İleri simgesi
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          // Alt bilgi bölümü
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            color: Colors.green.shade100,
            child: const Center(
              child: Text(
                'Güzel davranışlar güzel bir gelecek oluşturur.',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}