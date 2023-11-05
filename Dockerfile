#java springboot mikroservisi oluşturmak için gereken adımları tanımlayan bir docker containeri oluşturmaktır
FROM adoptopenjdk/openjdk11:alpine-jre 

#Yukarıdaki komut docker container oluştururken kullanılacak olan base image olarak openjdk11i belirtir
#Sadece java uygulamalarını çalıştırmak için gereken dosyaları içerir

ARG JAR_FILE=target/*.jar
#Yukarıdaki komut docker build sırasında kullanılacak olan bir buildtime argüment olarak tanımlanır.
#Bu değişken maven tarafında oluşturulan jar dosyasının yolunu belirtir.
#Ön tanımlı olarak dosya target klasörü içindeki tüm jar dosyalarını içerir

WORKDIR /opt/app
#Yukarıdaki komut Docker container içinde çalıştırılacak olan komutların çalıştırılacağı dizini opt/app olarak ayarlar

COPY ${JAR_FILE} app.jar
#Yukarıdaki komut önceden tanımlanan jarfile değişkenini kullanarak docker container içine bir dosya kopyalar


ENTRYPOINT ["java","-jar","app.jar"]
#Yukarıdaki komut Docker container başlatıldığında  çalıştırılacak olan komutları belirtir
#Bu komut java komutunu kullanarak app.jar adlı dosyayı çalıştırır