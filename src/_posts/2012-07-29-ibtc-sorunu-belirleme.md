---
title: "İBTÇ: Sorunu Belirleme"
excerpt: "İlk önce bilgisayardaki sorunu bulmaya çalışıyorum."
categories:
    - project
tags:
    - en
    - ibtc
toc: false
---

![İlk Bilgisayarım](/assets/images/blog/12/2012-07-29-ilk-bilgisayar.jpg)

*İlk Bilgisayarım*

Efendim, bu çalışmanın ana sayfasında belirttiğim gibi 2000 yılında aldığım ilk
bilgisayarımın çalışmaması üzerine böyle bir işe soyunmuştum. İlk olarak sorunun
ne olduğunu belirlemeye çalışıyorum.

Bilgisayarım eski güç kaynağını başka işlerde kullanmak üzere söktüğümden yeni
bir güç kaynağı alıp, takmıştım. En son bıraktığımda çalışan bilgisayarım, bu
sefer açma tuşuna bastığım zaman hiç bir tepki vermiyordu. Böyle bir durumda
adettendir, cihaz sökülür tabii ki de. :) Ben de geleneği bozmayarak kasayı
tekrar açtım. İlk işim güç kaynağını kontrol etmek oldu. Güç kaynağının
bağlantılarını ana karttan ayırdım. ATX güç kaynaklarının ana karta giren
soketindeki yeşil ve siyah kabloyu kısa devre ederek çalıştırmak mümkün. Böyle
denediğim zaman güç kaynağı çalışıyor ve çıkışlarında uygun voltaj değerleri
veriyordu. Demeki ki sorun güç kaynağında değil, anakarttaydı. Anakarttaki devre
güç kaynağını bile açamıyordu. Ben de BIOS piline bakmaya karar verdim. Pili
söktüm ve voltajını ölçtüğüm zaman 0V civarında bir değer okudum. Normalde 3.3V
olan bir pil. Bir sorun yakalamıştım, en azından BIOS pili bitmişti. BIOS
pilinin bilgisayarın açılmasına engel olmaması gerektiğini düşünüyordum. Çünkü
güç kaynağı stand-by durumda zaten ana karta 5V sağlıyordu. Bilgisayarı açma
kapama düğmesinin yapacağı tek şey, benim elle yaptığım gibi yeşil kabloyu nötre
(siyah kablo) bağlamaktı. Bunu yapacak devrenin de güç kaynağından gelen besleme
ile çalışması gerekirdi BIOS piline ihtiyaç duymadan. Neyse, bir saatçiden BIOS
pili ebatlarında bir pil alıp (3 TL’ye) anakarta taktım. Tekrar açma tuşuna
bastım ve fan sesleri gelmeye başladı. Bilgisayar açılmıştı, öndeki yeşil güç
ışığı yanıyordu. Çok ilginçtir ki bitik BIOS pili ile bilgisayar açılmıyordu.

Fakat yine bir sorun vardı. Bilgisayardan sadece fan sesi geliyor ve yeşil ışığı
yanıyordu. Yani aslında fonksiyonel olarak çalışmıyordu. Bir hata olsa BIOS’un
"bip bip" sesleri ile hata mesajı vermesi gerekirdi. Sanki BIOS, POST (Power-On
Self Test) işlemini bile yapmıyor, "boot" işlemlerine başlamıyordu. Ben de
anakarta bağlı tüm donanımları sökmeye başladım. Anakarta bağlı hiç bir kart,
sürücü kalmadan açmayı tekrar denedim. Sonuç aynıydı. Daha sonra RAMleri söktüm
tekrar denedim, bir değişiklik yok. Sağlıklı çalışan bir BIOS’un anakarta bağlı
bir hafıza olmadığında hata mesajı vermek için ötmesi gerekirdi. Son olarak
işlemciyi çıkarttım ve tekrar düğmeye bastım. Hiç işlemci olmadığı durumda BIOS
sesli mesaj verebiliyor mu bilmiyorum. Çünkü işlemci olmadan POST işlemleri
başlamıyor olabilir. O gerekli kodları işleyebilecek işlemci dışında bir yer var
mı bilmiyorum. Bu yüzden işlemciyi tekrar taktım.

İşlemciyi taktıktan sonra güç düğmesine bastığımda BIOS ötmeye başlamıştı! Demek
ki bir şeyler düzelmişti. İşlemcinin soketinde yerinde çıkması pek mükün
durmuyor. Ama söküp taktığım zaman yerine tam mı oturdu artık bilemiyorum.
Neyse, çok kurcalamadan RAMlerden birini taktım. Bu sefer BIOS’un ötemsi
değişmişti. Artık sadece tek bip sesi geliyordu. POST işleminde tek bip gelmesi
her şeyin sorunsuz olduğun gösteriyordu. Ama hard disk, cd sürücü ve disket
sürücü gibi sistemin "boot" olabileceği bir donanım olmadan BIOS’un "Her şey
tamam." demesi olağan mıdır bilmiyorum? Daha sonra hard diski ve disket
sürücüsünü anakarta bağlayıp, tekrar çalıştırdım. Sistem yine hard diskten
"boot" olmuyor ve ekrana hiçbir görüntü gelmiyordu. Fakat açılırken disket
sürücüde bir şeyler arıyordu. Bu iyi bir şey. İnternetten öğrendiğim kadarı ile
bu, "Boot Block" adı ile anılan kurtarıcı kısmın çalıştığını gösteriyor. Bu
kısım bildiğim kadarıyla BIOS kodu bozulduğu zaman size sistemi kurtarmanız için
bir şans veriyor. Sadece ISA soketiyle bağlantılı ekran kartlarını desteklediği
için de ekranda bir şey göremiyoruz. Bu da yoluma disket ile devam edeceğimi
gösteriyor. :)
