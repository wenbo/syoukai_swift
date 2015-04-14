#
SWIFT = swiftc -Onone -sdk '/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk'
SRC1 = Monthology.swift Rand.swift Person.swift

go:
	$(SWIFT) -o $@ main.swift Foretellable.swift $(SRC1)

clean:
	rm -f go
