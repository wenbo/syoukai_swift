SRC = Date.swift DateW.swift DayOfMonth.swift

go: $(SRC) main.swift
	swiftc -o $@ -Onone main.swift $(SRC)

clean:
	/bin/rm -f go
