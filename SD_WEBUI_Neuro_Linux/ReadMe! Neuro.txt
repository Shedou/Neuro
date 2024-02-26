Stable Diffusion Web UI Neuro Linux v2.

Пожалуйста, воздержитесь от использования данной сборки если вы не готовы взять ответственность за любые возможные и невозможные последствия!

Внимание! Нейросеть может создавать неприемлемые изображения в зависимости от используемой модели И действий пользователя!
Attention! The neural network can create inappropriate images depending on the model used AND user actions!

- Описание:
Не умеете рисовать, но очень хочется? Позвольте это сделать приложению Stable Diffusion!
Нейросеть нарисует всё что пожелаете, конечно же в пределах возможностей используемой модели...
Для генерации изображения достаточно написать текст в поле ввода и нажать кнопку "Generate",
но есть один нюанс, нейросеть понимает только слова на английском языке, впрочем,
никто не запрещает использовать переводчик отдельно если с английским языком всё очень плохо...

..........................................................
..........................................................

- Установка:
	Распаковать и использовать.

- Использование:
	install.sh		Установить сборку в стандартный каталог portsoft (Program Files), (см. системные требования!).
					Так же создаёт ярлыки в меню "Пуск" для всех пользователей, для установки необходимы root права.
	uninstall.sh	Удаляет установленную сборку из системы, появляется в основном каталоге только после установки приложения.
	download-models-base.sh					Загрузить основной набор моделей для Stable Diffusion из репозиториев, BLIP, Codeformer, ESRGAN, GFPGAN и т.д. (примерно 4.6 GiB).
	download-preprocessors-controlnet.sh	Загрузить набор препроцессоров ControlNet (Annotators) из репозиториев (примерно 10.2 GiB).
	download-models-controlnet-sd15.sh		Загрузить набор моделей ControlNet из репозиториев (примерно 18.8 GiB).
	
	start.sh				Обычный запуск.
	start-cpu.sh			Использовать ЦП для работы (Режим работы без видеокарты).
	start-xformers.sh		Использовать xformers, экономит память видеокарты, может повысить производительность.
	
	ВНИМАНИЕ! Убедитесь что у вас установлен ПОЛНОЦЕННЫЙ драйвер NVIDIA! (https://developer.nvidia.com/cuda-toolkit-archive)
	Для примера 545.24.08 (GTX 900+): https://developer.download.nvidia.com/compute/cuda/12.3.1/local_installers/cuda_12.3.1_545.23.08_linux.run
	
	ВНИМАНИЕ! Для работы сборки необходимы: glibc2.35+, git, python3.11 и python3-venv! (возможна работа с python3.12)
	Сборка не проверялась на работоспособность в сторонних дистрибутивах Linux!

- Состав стандартной версии сборки:
	models/Stable-diffusion/ChiMix_SF1-NED-AOM3_1.safetensors	(2 GiB)
	models/VAE/vae-ft-mse-840000-ema-pruned.ckpt				(319.2 MiB)
	models/VAE-taesd/taesd_decoder.pth							(4.7 MiB)
	models/VAE-taesd/taesdxl_decoder.pth						(4.7 MiB)
	models/VAE-approx/model.pt									(208.8 KiB)
	models/opencv/face_detection_yunet_2023mar.onnx				(227.1 KiB)

..........................................................
..........................................................
..........................................................
..........................................................
- Минимальные системные требования:
	ОС: Chimbalix 23.1 SP1 / 24.1 Alphachi
	ЦП: 64 разрядный процессор, 2 ядра.
	ОЗУ: 8 ГБ и больше.
	Видеокарта: GeForce 900 серии и новее.
	Видеопамять: 4 ГБ и больше.
..........................................................
- Системные требования (Режим работы без видеокарты):
	ОС: Chimbalix 23.1 SP1 / 24.1 Alphachi
	ЦП: AMD Ryzen 7 2700 / Intel Core i7-9700 или лучше.
	ОЗУ: 16 ГБ и больше.
..........................................................
- Рекомендуемые системные требования:
	ОС: Chimbalix 23.1 SP1 / 24.1 Alphachi
	ЦП: AMD Ryzen 7 2700 / Intel Core i7-9700 или лучше.
	ОЗУ: 32 ГБ и больше.
	Видеокарта: GeForce GTX 1070 или лучше.
	Видеопамять: 8 ГБ и больше.
..........................................................
..........................................................
..........................................................
..........................................................

Работа над сборкой: Chimbal (Shedou).

- Репозиторий со сборками Neuro:
https://github.com/Shedou/Neuro

- Chimbalix Linux:
https://github.com/Shedou/Chimbalix

- Блог Overclockers:
https://overclockers.ru/blog/Hard-Workshop

- Сборка основана на Stable Diffusion web UI v1.7.0:
https://github.com/AUTOMATIC1111/stable-diffusion-webui

- Модели для ControlNet (SD 1.5):
https://huggingface.co/lllyasviel/ControlNet-v1-1

- Модели для ControlNet (SDXL):
https://huggingface.co/lllyasviel/sd_control_collection


Дополнения в составе сборки:

- sd-extension-steps-animation
https://github.com/vladmandic/sd-extension-steps-animation

- sd-webui-controlnet
https://github.com/Mikubill/sd-webui-controlnet

- sd-webui-3d-open-pose-editor
https://github.com/nonnonstop/sd-webui-3d-open-pose-editor

- multidiffusion-upscaler-for-automatic1111
https://github.com/pkuliyi2015/multidiffusion-upscaler-for-automatic1111

- stable-diffusion-webui-images-browser
https://github.com/AlUlkesh/stable-diffusion-webui-images-browser/

..........................................................
..........................................................
..........................................................
..........................................................

- Список изменений:
2024-02-xx: Stable Diffusion Web UI Neuro Linux v2
1) Интегрировано и доработано расширение sd-webui-controlnet (2023-02-22), путь к моделям препроцессоров перенесен в общий каталог "models"
2) Интегрированные расширения перенесены в каталог "extensions-builtin"
3) Кэш Torch перенесён в каталог "models" (по умолчанию распологалось в "~/.cache/torch/")
4) Настроено качество предпросмотра чтобы минимизировать расход видеопамяти
5) Обновлён скрипт install.sh
6) Добавлен скрипт uninstall.sh (см. раздел "использование")
7) Добавлен параметр --medvram при работе с xformers, позволяет использовать SDXL модель имея 8ГБ VRAM

2024-02-xx: Stable Diffusion Web UI Neuro Linux v1
1) Первая версия сборки.

..........................................................
..........................................................
