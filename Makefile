zip:
	7z a assets.7z assets/

unzip:
	7z x assets.7z

lint:
	flutter analyze

runRelease:
	flutter run --release

runProfile:
	flutter run --profile

runDebug:
	flutter run --debug
