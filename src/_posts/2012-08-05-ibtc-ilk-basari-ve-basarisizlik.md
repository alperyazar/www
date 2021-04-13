---
title: "İBTÇ: İlk Başarı ve Başarısızlık"
excerpt: "Tam da oldu çalışacak derken, yine en başa döndüm."
categories:
    - project
tags:
    - en
    - ibtc
toc: false
---

En son kaldığım noktada bilgisayarım için uygun BIOS kodunu bulduğumu
düşünüyordum. Sıradaki işlem ise onu disket yardımıyla BIOS EEPROM'u içine
kaydetmekti. Şanslıyım ki elimde çalışan disketler ve masaüstü bilgisayarımın da
bir disket sürücüsü vardı. İlk olarak "bootable" bir disket yaratmak
gerekiyordu. Bunun için araştırmalarım sonucunda FreeDOS adında bir işletim
sistemi buldum. "FreeDOS, Microsoft'un 1999'da MS-DOS'u geliştirmeyi durdurması
üzerine serbest DOS'u yaşatmak için doğmuş GNU Genel Kamu Lisansı kapsamında
açık kaynaklı gelişmiş bir DOS tabanlı işletim sistemidir."
(Bknz:[http://tr.wikipedia.org/wiki/FreeDOS](http://tr.wikipedia.org/wiki/FreeDOS))
Yine internet üzerinde, bu işletim sistemini bir disket sürücüsü üzerine nasıl
kurulacağını anlatan dökümanlar mevcut. Disket sürücüsü olan bilgisayarımda
Ubuntu 10.04 kurulu olduğu için Linux üzerinde bu işin nasıl yapılacağını
anlatan kaynaklara baktım. Bir şekilde FreeDOS'u, disket üzerine kurduktan sonra
sıra BIOS dosyasını nasıl EEPROM üzerine kaydedileceğini bulmaktaydı.

Yine internet araştırmaları sonucunda AWARD marka BIOS'lar için Awdflash.exe
adlı bir yazılım olduğunu buldum. İşin kötü yanlarında biri bu yazılımın birden
fazla versiyonu olması ve benim hangi versiyonu kullanacağımı bilemememdi.
Neyse, bir tanesini indirip denemeler yaptım. Tabi bu arada monitöre herhangi
bir görüntü gelmediğini de belirtmek isterim. Sanırım bir sorun çıkıyordu
yazılımı çalıştırırken. Sanırım diyorum çünkü dediğim gibi ekrandan takip
edemiyordum işlemleri. :) Daha sonra bu iş için hazırlanmış Uniflash.exe adlı
bir yazılımı buldum ve onu denedim. Uniflash, kullanıcıyı bip sesleri ile
bilgilendiriyor. İlk bip sesi ile EEPROM yazma işleminin başladığını söylüyordu.
Ama yaklaşık 10 saniye sonra diğer bip sesleri ile işlemin başarısız olduğunu
belirtiyordu. Bilgisayarı yeniden başlattım ve sonuç şaşırtıcıydı. **Ekrana
görüntü gelmişti!** Demek ki Uniflash, bir şeyler yazmayı başarmıştı EEPROM'a.
**BIOS, AWARD'ın olmasına rağmen Awdflash EEPROM'u programlayamazken, Uniflash
bunu başarmıştı.** Ekrana görüntü geliyor, fakat sistem yine düzgün açılmıyordu.
Bu seferde internette araştırdığımda popüler olduğunu gördüğüm **"BIOS Checksum
Error"** hatası alıyordum. Yine de ekrana görüntü almak beni mutlu etmişti.
Bilgisayarı disket ile tekrar başlattığımda bu sefer ekranda görüntü geliyordu.
Yani o aldığım hata, bilgisayarın disketten çalışmasını etkilemiyordu. Bu sefer
Uniflash'ı ekrandan görerek, klavye ile çalıştırdım. 256 KByte'lık EEPROM
dosyasını 64 KByte'lık 4 parça halinde yazıyordu. Parçanın birini yazarken de
yazma hatası veriyordu. Bir kaç kere denedim fakat bir parçada yazma başarsızı
oluyordu. Ben de, disketi çıkararak yeniden başlatmayı denedim. Bu sefer ekrana
görüntü dahi gelmiyordu. Bilgisayar, ilk denemelerimde açıldığı zaman nasıl hiç
bir tepki vermiyorsa aynı o şekildeydi. Kendini kurtarmak için disket sürücüsünü
dahil okumuyordu. **Özetle, BIOS EEPROM'unun içeriğini tekrar bozmuştum.**

En azından artık bilgisayarın açılmama sorunun başta da tahmin ettiğim gibi BIOS
kaynaklı olduğundan emindim. Fakat, bir şekilde de EEPROM'u programlamam
gerekiyordu. Bu işin programlar ile olmaması bir yandan da korkutucuydu. Çünkü
bu, EEPROM entegresinin bozulduğu anlamına da gelebilirdi. 2000 li yıllarda
kullanılan bir EEPROM'u yine DIP kılıfında şu an bulmama ihtimalim de yüksek.
Neyse ki, sorunu bir şekilde çözmeyi başardım. Bunu da bir sonraki yazımda
anlatacağım. :)
