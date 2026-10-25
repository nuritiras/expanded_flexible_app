# Flutter'da `Expanded` ve `Flexible` Widget'ları: Değerler Eğitimi Uygulaması

Bu proje, Flutter'da `Expanded` widget'ının `Column` ve `Row` içinde
nasıl kullanılabileceğini, **Değerler Eğitimi** temalı basit bir mobil
uygulama üzerinden gösterir. Uygulamada adalet, yardımlaşma, dürüstlük
ve sorumluluk değerleri listelenir.

📘 **İlgili makale:** [Flutter'da Expanded ve Flexible
Widget'ları](https://pardusflutter.blogspot.com/2026/10/flutterda-expanded-ve-flexible-widgetlar.html)

## 📱 Projenin Amacı

Örnek uygulama hazırlanırken şu konuların pekiştirilmesi hedeflenmiştir:

-   `Expanded` widget'ı ile kullanılabilir alanın paylaşılması
-   `Column` içinde sabit bölümler ile kaydırılabilir listenin birlikte
    kullanılması
-   `Row` içinde metin alanının kalan yatay boşluğu kullanması
-   `ListView.builder` ile dinamik liste oluşturulması
-   `Card`, `Icon`, `Text`, `Container` ve `Padding` widget'larının
    birlikte kullanılması
-   Material 3 tema ayarlarının uygulanması
-   Eğitim amaçlı bir arayüzün düzenli ve okunabilir biçimde
    tasarlanması

## ✨ Uygulama Özellikleri

-   **Günün Değeri:** Kullanıcıya olumlu davranışları hatırlatan bir
    bilgilendirme alanı.
-   **Değerler Listesi:** Adalet, yardımlaşma, dürüstlük ve sorumluluk
    başlıklarını ikonları ve açıklamalarıyla gösterir.
-   **Kaydırılabilir içerik:** Değerler listesi ekranın kullanılabilir
    alanında kaydırılabilir.
-   **Alt bilgi:** Güzel davranışların önemini vurgulayan kısa bir mesaj
    içerir.
-   **Material 3 tasarımı:** Yeşil renk teması ve sade bir arayüz
    kullanır.

## 🧩 `Expanded` Kullanımı

Bu örnekte `Expanded` iki farklı yerde kullanılır.

### 1. `Column` içinde listeye kalan alanı verme

``` dart
Expanded(
  child: ListView.builder(
    padding: const EdgeInsets.all(12),
    itemCount: degerler.length,
    itemBuilder: (context, index) {
      // Liste öğesi burada oluşturulur.
    },
  ),
)
```

Üstteki "Günün Değeri" bölümü ve alttaki bilgi alanı kendi ihtiyaçları
kadar yer kaplar. `Expanded`, `ListView.builder` widget'ının `Column`
içinde geriye kalan dikey alanı kullanmasını sağlar. Böylece listenin
kendi alanında kaydırılması mümkün olur.

### 2. `Row` içinde metne kalan yatay alanı verme

``` dart
Row(
  children: [
    const Icon(Icons.balance, size: 36),
    const SizedBox(width: 12),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Adalet'),
          const SizedBox(height: 4),
          const Text('Herkesin hakkını gözet.'),
        ],
      ),
    ),
    const Icon(Icons.arrow_forward_ios, size: 18),
  ],
)
```

Burada `Expanded`, başlık ve açıklamayı içeren `Column` widget'ının ikon
ile ileri simgesi arasında kalan yatay alanı kullanmasını sağlar. Metin
uzun olduğunda da satırın kullanılabilir genişliği içinde düzenlenmesine
yardımcı olur.

## 🔍 `Expanded` ve `Flexible` Arasındaki Fark

-   **`Expanded`:** Çocuğunu, ana eksende kendisine ayrılan
    kullanılabilir alanı dolduracak şekilde genişletir. Teknik olarak
    `FlexFit.tight` davranışını kullanır.
-   **`Flexible`:** Çocuğunun ayrılan alana sığmasına izin verir;
    varsayılan `FlexFit.loose` davranışında çocuk, kendisine ayrılan
    alanın tamamını kullanmak zorunda değildir.
-   Her iki widget da `Row`, `Column` veya `Flex` gibi bir Flex
    düzeninin içinde kullanılmalıdır.
-   `Expanded`, özellikle kalan alanın tamamen kullanılmasının istendiği
    durumlarda uygundur. `Flexible`, içeriğin doğal boyutunu korumasına
    daha fazla esneklik tanımak istediğinizde tercih edilebilir.

Bu projenin mevcut kodunda `Flexible` kullanılmamaktadır. Metin alanı
`Expanded` ile düzenlenmiş, açıklama metninden önce kullanılan gereksiz
bir `Flexible` kaldırılmıştır.

## 🗂️ Proje Yapısı

Basit bir Flutter projesinde örnek kodu `lib/main.dart` dosyasına
yerleştirebilirsiniz:

``` text
degerler_egitimi/
├── lib/
│   └── main.dart
├── pubspec.yaml
└── README.md
```

## 🚀 Çalıştırma

Bilgisayarınızda Flutter SDK ve uygun bir çalıştırma ortamı kurulu
olmalıdır.

1.  Yeni bir Flutter projesi oluşturun:

    ``` bash
    flutter create degerler_egitimi
    ```

2.  Proje klasörüne geçin:

    ``` bash
    cd degerler_egitimi
    ```

3.  Verilen Dart kodunu `lib/main.dart` dosyasına ekleyin.

4.  Bağımlılıkları kontrol edin:

    ``` bash
    flutter pub get
    ```

5.  Uygulamayı çalıştırın:

    ``` bash
    flutter run
    ```

> Not: Uygulama, Flutter SDK ile gelen `material.dart` kütüphanesi
> dışında ek bir paket gerektirmez.

## 🛠️ Kullanılan Teknolojiler

-   **Flutter**
-   **Dart**
-   **Material Design 3**

## 🎓 Eğitimde Kullanım

Bu proje; bilişim teknolojileri, mobil uygulama geliştirme ve Flutter
derslerinde `Row`, `Column`, `Expanded`, `ListView.builder` ve temel
arayüz tasarımı konularını anlatmak için kullanılabilir.

Öğrencilerden şu geliştirmeleri yapmaları istenebilir:

1.  Listeye yeni değerler eklemek.
2.  Her değere uygun bir ikon ve açıklama belirlemek.
3.  Kartların renklerini veya kenar yuvarlaklıklarını değiştirmek.
4.  Bir karta dokunulduğunda ayrıntı sayfası açılmasını sağlamak.
5.  `Expanded` yerine `Flexible` kullanıldığında arayüzün nasıl
    değiştiğini deneyerek karşılaştırmak.

## 📄 Lisans

Bu projeyi eğitim ve öğrenme amacıyla inceleyebilir, geliştirebilir ve
kendi çalışmalarınıza uyarlayabilirsiniz.

<img width="798" height="1600" alt="image" src="https://github.com/user-attachments/assets/1fe5b766-9cb1-46c4-909a-a93c5850f497" />
