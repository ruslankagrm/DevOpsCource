import http.server
import socketserver

PORT = 8000

if __name__ == '__main__':
    Handler = http.server.SimpleHTTPRequestHandler
    print("Server will be soon...")
    with socketserver.TCPServer(("", PORT), Handler) as http:
        print("serving at port", PORT)
        http.serve_forever()