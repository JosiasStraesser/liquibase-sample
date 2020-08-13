update:
ifdef TAG
	sudo TAG=$(TAG) docker-compose run update
else
	echo "Obrigatório informar uma Tag para o Update"
endif

rollback:
ifdef TAG
	sudo TAG=$(TAG) $(MAKE) rollbackCommand
else
	sudo $(MAKE) rollbackCommand
endif

rollbackCommand:
	docker-compose run rollback