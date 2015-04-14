#
SWIFT = swiftc -Onone -sdk '/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk'
SRC1 = Monthology.swift Rand.swift Person.swift
SRC2 = NamaeUranai.swift

namae:
	$(SWIFT) -o $@ main.swift Foretellable.swift $(SRC1) $(SRC2)

clean:
	rm -f namae
