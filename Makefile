.PHONY: linux-x64-musl
linux-x64-musl:
	cargo build --release --target=x86_64-unknown-linux-musl

.PHONY: linux-x64-gnu
linux-x64-gnu:
	cargo build --release --target=x86_64-unknown-linux-gnu

.PHONY: darwin
darwin:
	PATH=${HOME}/.osxcross/target/bin:${PATH}
	cargo build --release --target x86_64-apple-darwin

.PHONY: windows
windows:
	cargo build --release --target=x86_64-pc-windows-gnu
