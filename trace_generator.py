trace = open("swim.trace", "r")
out = open("output.trace", "w")

for line in trace.readlines():
	out.write(line[0] + f'{int(line[4:-1], 16):032b}\n')

trace.close()
out.close()