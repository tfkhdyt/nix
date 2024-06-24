rebuild:
	sudo nixos-rebuild switch --flake .#nixos

upgrade:
	sudo nixos-rebuild switch --upgrade --flake .#nixos

.PHONY: rebuild upgrade