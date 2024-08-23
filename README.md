# user-keyboard-template
tgk keyboard firmware template for using tgk


# Q. how to build 

```
make build
```

# Q. how to flash

tinygoに対応したマイコンを繋いでおいてください。
Makefileはデフォルトで`feather-nrf52840` (秋月のnrf52840ボード)に対応させています。
適宜Makefile内のTARGETの部分をtinygoに対応しているマイコンの識別子に置き換えてください。
```
make flash
```

# Q. how to debug

tinygoのシリアルモニターを使ってください。
```
tinygo monitor
```

# Q. where of firmware uf2？

buildディレクトリに作成されます。
uf2形式なので、tinygoのflash以外にもブートローダーを起動したのちflashすることもできます。
```
make build
cd build
ls 
→ firmware.uf2
```
