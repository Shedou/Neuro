# Real-ESRGAN-ncnn-vulkan (xinntao)
### Внимание! Репозиторий [xinntao/Real-ESRGAN](https://github.com/xinntao/Real-ESRGAN).
### Внимание! Репозиторий [xinntao/Real-ESRGAN-ncnn-vulkan](https://github.com/xinntao/Real-ESRGAN-ncnn-vulkan).
### Real ESRGAN NCNN Neuro это не более чем "сборка", её цель упрощение работы над уже существующим инструментом с помощью вспомогательных "скриптов" в виде BAT/REG файлов.
# Сборка Real ESRGAN NCNN Neuro
## Пожалуйста, воздержитесь от использования любых файлов и информации из репозитория если вы не готовы взять ответственность за любые возможные и невозможные последствия!
Текущая сборка (v1) подходит для Windows 7 и новее.\
Для работы необходима видеокарта и драйвер поддерживающие Vulkan API.
# Установка Real ESRGAN NCNN Neuro
Скачать сборку Real ESRGAN NCNN Neuro и распаковать в корень системного разделa.\
**[Ссылка на скачивание Real ESRGAN NCNN Neuro](https://github.com/Shedou/Neuro/releases/)**\
Путь к исполняемому файлу Real ESRGAN NCNN Neuro (realesrgan-ncnn-vulkan.exe) должен выглядеть следующим образом:
```
C:\_PORTABLE_\realesrgan_ncnn_neuro
```
![Screenshot_path](https://user-images.githubusercontent.com/19572158/230571049-c20d69f3-ac9d-4e34-8776-e8bf7cb4f2a3.png)\
Или как вариант, если вы осознаёте что делаете, и можете переписать скрипты самостоятельно, можно скачать файлы из репозитория и расположить в одной папке с "realesrgan-ncnn-vulkan.exe".
# Использование
Провести слияние файла "_context_sub.reg" с реестром Windows, после чего будет доступно контекстном меню для работы с изображениями, REG файл при необходимости исправить по своему усмотрениию.
![Screenshot_reg](https://user-images.githubusercontent.com/19572158/230574751-4f254afb-7236-4960-8ba7-3ef82d0aedf0.png)
Чтобы удалить из контекстного меню Real ESRGAN NCNN, достаточно использовать "_context_sub_delete.reg", однако, если вы вносили изменения в файл "_context_sub.reg", значит вы понимаете что делаете.
# Benchmark
Перетащить изображение на один из BAT файлов предназначенных для тестирования, и смотреть на результат:\
![Screenshot_benchmark](https://user-images.githubusercontent.com/19572158/230573731-509b2538-6578-4bdf-a4d4-7a03707c3f90.jpg)\
Важно заметить, в результате указано общее затраченное время на работу, в том числе на сохранение результата, потому результат никогда не будет показывать абсолютно чистую производительность видеокарты.