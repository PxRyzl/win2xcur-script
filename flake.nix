{
	description = "Convert Windows Cursors into Xcursors via win2xcur";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
	};
	outputs = { self, nixpkgs, systems }:
	let
		supportedSystems = nixpkgs.lib.genAttrs (import systems);
		forEachSystem = function: supportedSystems (system: function nixpkgs.legacyPackages.${system});
	in
	{
		devShells = forEachSystem (pkgs: {
			default = pkgs.mkShell {
				packages = with pkgs; [
					win2xcur
					jq
				];
			};
		});
	};
}
