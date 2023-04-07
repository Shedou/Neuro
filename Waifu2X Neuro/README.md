# Waifu2X (DeadSix27)
### Внимание! Репозиторий [Waifu2X-Converter-CPP (DeadSix27)](https://github.com/DeadSix27/waifu2x-converter-cpp).
### Waifu2X Neuro это не более чем "сборка", её цель упрощение работы над уже существующим инструментом с помощью вспомогательных "скриптов" в виде BAT/REG файлов.
# Сборка Waifu2X Neuro
## Пожалуйста, воздержитесь от использования любых файлов и информации из репозитория если вы не готовы взять ответственность за любые возможные и невозможные последствия!
# Системные требования
Windows 7+
VC Redists 2015 и новее.
(https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist)

# Установка Waifu2X Neuro
Скачать сборку Waifu2X Neuro и распаковать в корень системного разделa.\
**[Ссылка на скачивание Waifu2X Neuro](https://github.com/Shedou/Neuro/releases/tag/W2XNv2)**\
Путь к исполняемому файлу Waifu2X (waifu2x-converter-cpp.exe) должен выглядеть следующим образом:
```
C:\_PORTABLE_\waifu2x_533_neuro
```
![Screenshot_path_w](https://user-images.githubusercontent.com/19572158/230600897-b0cf2e37-6fe4-475b-b69a-acde64f4beeb.png)\
Или как вариант, если вы осознаёте что делаете, можно скачать файлы из репозитория и расположить в одной папке с "waifu2x-converter-cpp.exe".
# Использование
Провести слияние файла "_context_sub.reg" с реестром Windows, после чего будет доступно контекстное меню для работы с изображениями.\
![reg](https://user-images.githubusercontent.com/19572158/229882146-b717f17a-56b0-4123-ba6f-139843042f1f.png)\
Чтобы удалить из контекстного меню Waifu2X, достаточно использовать "_context_sub_delete.reg", однако, если вы вносили изменения в файл "_context_sub.reg", значит вы понимаете что делаете.
# Benchmark
Чтобы проверить производительность видеокарты или центрального процессора достаточно перетащить изображение на один из BAT файлов, результат смотреть в строке GFLOPS-Filter:\
![benchmark](https://user-images.githubusercontent.com/19572158/229817764-7f3a4074-ad70-48b6-8ba9-c14bea46994c.png)\
В имени файла указано CPU/GPU, что означает работу на ЦП или ГП, далее идет NOISE/scale (режим шумоподавления/увеличения), и в конце размер блока, чем больше размер, тем больше памяти нужно для обработки, и тем выше эффективность работы.
