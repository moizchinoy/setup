create:
	podman run -itd --name u u

run:
	podman exec -it u tmux

rm:
	podman rm -f u
