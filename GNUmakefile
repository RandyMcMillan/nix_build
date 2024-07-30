nix-shell:nix-build
	nix-shell

nix-build:
.ONESHELL:
	@if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
	. '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
	fi && nix build --extra-experimental-features nix-command --extra-experimental-features flakes

nix-docker:
	docker run -ti -w /root/nix_build --volume `pwd`:/root/nix_build --volume /nix:/nix nixos/nix || \
	docker run -ti -w /root/nix_build --volume `pwd`:/root/nix_build                    nixos/nix
