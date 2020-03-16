.PHONY: all dev clean build env-up env-down run

##### ENV
env-up:
	@echo "Start environment ..."
	@cd fixtures_arm && docker-compose up --force-recreate -d
	@echo "Environment up"

env-down:
	@echo "Stop environment ..."
	@cd fixtures_arm && docker-compose down
	@echo "Environment down"

##### RUN
run:
	@echo "Start app ..."
	@nohup ./alarm &

##### CLEAN
clean: env-down
	@echo "Clean up ..."
	@rm -rf /tmp/kongyixueyuan-* kongyixueyuan
	@docker rm -f -v `docker ps -a --no-trunc | grep "kongyixueyuan" | cut -d ' ' -f 1` 2>/dev/null || true
	@docker rmi `docker images --no-trunc | grep "kongyixueyuan" | cut -d ' ' -f 1` 2>/dev/null || true
	@echo "Clean up done"
