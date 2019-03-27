include config.sh


all: base  build 

build:
	docker build -t ${USER_NAME}_$(FRAMEWORK) -f Dockerfile  \
	--build-arg USER_NAME=$(USER_NAME) --build-arg UID_NUMBER=$(UID_NUMBER) \
	 --build-arg GID_NUMBER=$(GID_NUMBER) .

copy:
	cp -R ../modules .

base:
	docker build -t ${USER_NAME}_dl -f original/Dockerfile  \
	--build-arg NB_USER=$(USER_NAME) --build-arg NB_UID=$(UID_NUMBER) original

delete:
	rm -R modules
