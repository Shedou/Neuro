# Сборка Stable Diffusion web UI Neuro
## Пожалуйста, воздержитесь от использования любых файлов и информации из репозитория если вы не готовы взять ответственность за любые возможные и невозможные последствия!
## Внимание! Нейросеть может создавать неприемлемые изображения в зависимости от используемой модели и действий пользователя!
# Описание
Не умеете рисовать, но очень хочется? Позвольте это сделать приложению Stable Diffusion!

Нейросеть нарисует всё что пожелаете, конечно же в пределах возможностей используемой модели...
Для генерации изображения достаточно написать текст в поле ввода и нажать кнопку "Generate", но есть один нюанс, нейросеть понимает только слова на английском языке, впрочем, никто не запрещает использовать переводчик отдельно если с английским языком всё очень плохо...

### Что нового в версии v2:
- В сборку встроен браузер Mozilla Firefox, теперь сборка не зависит от наличия браузера в системе пользователя.
- По умолчанию используется cudart v11.4 вместо 11.7, как следствие были упрощены BAT файлы для запуска сборки, при необходимости можно изменить версию cudart используя предназначенные для этого BAT файлы в папке Redist.
- Переименованы BAT файлы для запуска, добавлено слово CUDA в имя файла, это в будущем поможет отличить CUDA и DirectML версии сборок при размещении в одной папке.

### Пример работы:

Будет добавлен позже.

# Системные требования
<details>
  <summary>Минимальные системные требования</summary>

ОС: 64 разрядная Microsoft Windows 7 / 10 / 11.\
ЦП: 64 разрядный процессор, 2 ядра.\
ОЗУ: 16 ГБ и больше.\
Видеокарта: GeForce GTX 700 серии и новее (см. список поддерживаемых видеокарт в файле "ReadMe! Neuro.txt").\
Видеопамять: 2 ГБ и больше.

</details>
<details>
  <summary>Системные требования (Режим работы без видеокарты)</summary>

ОС: 64 разрядная Microsoft Windows 7 / 10 / 11.\
ЦП: AMD Ryzen 7 2700 / Intel Core i7-9700 или лучше.\
ОЗУ: 24 ГБ и больше.

</details>
<details>
  <summary>Рекомендуемые системные требования</summary>

ОС: 64 разрядная Microsoft Windows 10 / 11.\
ЦП: AMD Ryzen 7 2700 / Intel Core i7-9700 или лучше.\
ОЗУ: 64 ГБ.\
Видеокарта: GeForce GTX 1070 или лучше.\
Видеопамять: 8 ГБ и больше.

</details>

# Установка Stable Diffusion web UI Neuro
### [Скачать сборку Stable Diffusion web UI Neuro (v2)](https://github.com/Shedou/Neuro/releases/tag/SD_WEBUI_v2) и распаковать архиватором [7-Zip](https://7-zip.org/).
# Использование
- **Start WebUI CUDA.bat** - Обычный запуск.
- Start WebUI CUDA CPU.bat - Использовать ЦП для работы (Режим работы без видеокарты).

Описание остальных файлов смотреть в файле "ReadMe! Neuro.txt".
# Сборка основана на Stable Diffusion web UI
### Репозиторий [AUTOMATIC1111/stable-diffusion-webui](https://github.com/AUTOMATIC1111/stable-diffusion-webui).
# Блог Overclockers
### [overclockers.ru/blog/Hard-Workshop](https://overclockers.ru/blog/Hard-Workshop)
# Прочие ресурсы
Модель ChiMix_SF1-NED-AOM3_1 основана на AOM3-r34-SF1-pruned, neverendingDreamNED_bakedVae и возможно AOM3_orangemixs, пропорции неизвестны. Ресурсы для поиска дополнительных моделей: https://huggingface.co/models, https://civitai.com/ и т.п.

Python:\
https://github.com/adang1345/PythonWin7

ffmpeg-6.0-full_build-shared:\
https://www.gyan.dev/ffmpeg/builds/

Mozilla Firefox:\
https://www.mozilla.org/

**Дополнения в составе сборки:**

multidiffusion-upscaler-for-automatic1111\
https://github.com/pkuliyi2015/multidiffusion-upscaler-for-automatic1111

sd-extension-steps-animation\
https://github.com/vladmandic/sd-extension-steps-animation
