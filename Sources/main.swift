import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

func download(from urlString: String, to destination: URL) throws {
    guard let url = URL(string: urlString) else {
        throw NSError(domain: "InvalidURL", code: 1, userInfo: [NSLocalizedDescriptionKey: "Invalid URL: \(urlString)"])
    }
    let data = try Data(contentsOf: url)
    try data.write(to: destination)
}

func main() {
    let args = CommandLine.arguments
    guard args.count >= 2 else {
        print("Usage: \(args[0]) <url> [outputFile]")
        return
    }
    let url = args[1]
    let outputPath = args.count >= 3 ? args[2] : URL(fileURLWithPath: url).lastPathComponent
    let destination = URL(fileURLWithPath: outputPath)

    do {
        try download(from: url, to: destination)
        print("Downloaded to \(destination.path)")
    } catch {
        print("Error: \(error.localizedDescription)")
    }
}

main()
