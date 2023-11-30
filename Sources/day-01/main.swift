import ArgumentParser
import Foundation

@main
struct FigletTool: ParsableCommand {
  @Option(help: "Specify the input file path")
  public var input: String

  public func run() throws {
    let fileURL = URL(fileURLWithPath: self.input)
    do {
        let content = try String(contentsOf: fileURL, encoding: .utf8)
        print(content)
    } catch {
        print("Unable to read the file at \(self.input)")
    }
  }
}