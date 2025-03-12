Stable Diffusion Web UI Neuro Linux v3

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
	Распаковать и использовать (модели не включены в установочный пакет из-за большого размера).

- Использование:
	! ВНИМАНИЕ ! Рекомендуется использовать локальные версии моделей загруженные вручную, автоматическая загрузка моделей из репозиториев не рекомендуется, так как репозитории могут измениться в любой момент по желанию владельцев!
	download-models-base.sh					Загрузить основной набор моделей для Stable Diffusion из репозиториев, BLIP, Codeformer и т.д. (примерно 4.6 GiB).
	download-preprocessors-controlnet.sh	Загрузить набор препроцессоров ControlNet (Annotators) из репозиториев (примерно 10.2 GiB).
	download-models-controlnet-sd15.sh		Загрузить набор моделей ControlNet из репозиториев (примерно 18.8 GiB).
	Так же возможно использование архивов с моделями ControlNet от SD Web UI Neuro Linux v2.
	
	start-xformers-medvram.sh	Обычный запуск с оптимизациями xformers.
	start-xformers-lowvram.sh	Запуск в режиме пониженного потребления видеопамяти с оптимизациями xformers.
	start-medvram.sh			Обычный запуск.
	start-lowvram.sh			Запуск в режиме пониженного потребления видеопамяти.
	start-cpu.sh				Использовать ЦП для работы
	
	ВНИМАНИЕ! Убедитесь что у вас установлен ПОЛНОЦЕННЫЙ драйвер NVIDIA! (https://developer.nvidia.com/cuda-toolkit-archive)
	Для примера CUDA 12.8 v570.86.10 (GTX 900+): https://developer.download.nvidia.com/compute/cuda/12.8.0/local_installers/cuda_12.8.0_570.86.10_linux.run
	
	ВНИМАНИЕ! Для работы сборки необходимы: glibc2.35+, git, python3.11 и python3-venv! (возможна работа с python3.12)
	Сборка предназначена для Chimbalix (https://github.com/Shedou/Chimbalix)! Она не проверялась на работоспособность в сторонних дистрибутивах Linux!

- Состав стандартной версии сборки:
	models/VAE/vae-ft-mse-840000-ema-pruned.ckpt				(319.2 MiB)
	models/VAE-taesd/taesd_decoder.pth							(4.7 MiB)
	models/VAE-taesd/taesdxl_decoder.pth						(4.7 MiB)
	models/VAE-approx/model.pt									(208.8 KiB)
	models/VAE-approx/vaeapprox-sdxl.pt							(208.8 KiB)
	models/opencv/face_detection_yunet_2023mar.onnx				(227.1 KiB)

..........................................................
..........................................................
..........................................................
..........................................................
- Минимальные системные требования:
	ОС: Chimbalix 24.7+
	ЦП: 64 разрядный процессор, 2 ядра.
	ОЗУ: 16 ГБ и больше.
	Видеокарта: GeForce 900 серии и новее.
	Видеопамять: 4 ГБ и больше.
..........................................................
- Системные требования (Режим работы без видеокарты):
	ОС: Chimbalix 24.7+
	ЦП: AMD Ryzen 7 2700 / Intel Core i7-9700 или лучше.
	ОЗУ: 16 ГБ и больше.
..........................................................
- Рекомендуемые системные требования:
	ОС: Chimbalix 24.7+
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

- Chimbalix:
https://github.com/Shedou/Chimbalix

- Блог Overclockers:
https://overclockers.ru/blog/Hard-Workshop

- Сборка основана на Stable Diffusion web UI v1.10.1:
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

..........................................................
..........................................................
..........................................................
..........................................................

- Список изменений:

-= ==================================================
-= 2025-03-xx: Stable Diffusion Web UI Neuro Linux v3
1) Обновлён SD Web UI до версии 1.10.1.
2) Исправлена проблема "Runtime Error Mat 1 and Mat2 must have the same dtype." при использовании LDSR Upscaler.
	"webui1101/extensions-builtin/LDSR/ldsr_model_arch.py".
3) Добавлены необходимые для работы venv зависимости, которые не были установлены автоматически при стандартной установке SD Web UI.
	"webui1101/venv/lib/python3.11/site-packages/"
	termcolor	termcolor-2.4.0.dist-info		tabulate	tabulate-0.9.0.dist-info
	yacs		yacs-0.1.8.dist-info			portalocker	portalocker-2.8.2.dist-info
	iopath		iopath-0.1.10.egg-info			fvcore		fvcore-0.1.5.post20221221.egg-info
	basicsr		basicsr-1.4.2.dist-info
4) Переход к формату упаковки и установки Installer-SH.
	https://github.com/Shedou/Installer-SH
5) Чистка неиспользуемых файлов:
	"webui1101/repositories/stable-diffusion-stability-ai/assets/stable-samples/*"
	"webui1101/repositories/stable-diffusion-stability-ai/assets/stable-inpainting/*"
	"webui1101/repositories/stable-diffusion-stability-ai/.git"
	"webui1101/repositories/generative-models/.git"
	"webui1101/repositories/generative-models/.github"
	"webui1101/repositories/BLIP/.git"
6) Перенесён кэш HuggingFace из домашнего каталога в каталог сборки:
	"program/cache"

-= ==================================================
-= 2024-02-xx: Stable Diffusion Web UI Neuro Linux v2
1) Интегрировано и доработано расширение sd-webui-controlnet (2023-02-22), путь к моделям препроцессоров перенесен в общий каталог "models"
2) Интегрированные расширения перенесены в каталог "extensions-builtin"
3) Кэш Torch перенесён в каталог "models" (по умолчанию распологалось в "~/.cache/torch/")
4) Настроено качество предпросмотра чтобы минимизировать расход видеопамяти
5) Обновлён скрипт install.sh
6) Добавлен скрипт uninstall.sh (см. раздел "использование")
7) Добавлен параметр --medvram при работе с xformers, позволяет использовать SDXL модель имея 8ГБ VRAM

-= ==================================================
-= 2024-02-xx: Stable Diffusion Web UI Neuro Linux v1
1) Первая версия сборки.

..........................................................
..........................................................
