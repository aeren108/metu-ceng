import sys, socket, selectors, pickle, time

class Node:
    def __init__(self, port):
        self.port = port
        self.costs = {}
        
sel = selectors.DefaultSelector()
this = Node(int(sys.argv[1]))

total_nodes = 0
neighbours = {}

def init_node():
    global total_nodes

    file = open(f"{this.port}.costs", "r")
    total_nodes = int(file.readline())

    for i in range(0, total_nodes):
        this.costs[i+3000] = float("inf")

    while line := file.readline():
        s = line.split()
        this.costs[int(s[0])] = int(s[1])
        neighbours[int(s[0])] = None

    this.costs[this.port] = 0
    file.close()

def connect_neighbour(port):
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    try:
        sock.connect(("localhost", port))
        sock.setblocking(False)

        sel.register(sock, selectors.EVENT_READ, data=recv)
        neighbours[port] = sock

        return True
    except socket.error:
        neighbours[port] = None
        return False

def notify_neighbours():
    for neighbour in neighbours:
        if neighbours[neighbour] != None:
            neighbours[neighbour].sendall(pickle.dumps(this))
        else:
            if connect_neighbour(neighbour):
                neighbours[neighbour].sendall(pickle.dumps(this))

def recv(conn):
    try:
        data = conn.recv(1024)
        node = pickle.loads(data)
        changed = False

        #print(f"Costs of {node.port}: {node.costs}")
    except:
        sel.unregister(conn)
        return

    if neighbours[node.port] == None:
        neighbours[node.port] = conn
        conn.send(pickle.dumps(this))

    for key in this.costs:
        cost = this.costs[node.port] + node.costs[key]
        if cost < this.costs[key]:
            this.costs[key] = cost
            changed = True

    if changed:
        notify_neighbours()

def accept(socket):
    conn, _ = socket.accept()
    conn.setblocking(False)
    sel.register(conn, selectors.EVENT_READ, data=recv)
    

def print_costs():
    for node in this.costs:
        print(f"{this.port} -{node} | {this.costs[node]}")

if __name__ == "__main__":
    init_node()
    
    server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server.setblocking(False)
    server.bind(("localhost", this.port))
    server.listen()

    sel.register(server, selectors.EVENT_READ, data=accept)
    
    notify_neighbours()

    t = time.time()
    while True:
        if time.time() - t > 5:
            break
        for key, mask in sel.select(timeout=5):
            callback = key.data
            callback(key.fileobj)
            t = time.time()

        time.sleep(0.005)

    for n in neighbours:
        neighbours[n].close()

    server.close()
    
    print_costs()
