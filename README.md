# Apple Health Downloader (Swift)

This project provides a small command-line tool written in Swift to download a file from a given URL. It can be used as a starting point for downloading Apple Health exports or other data files.

## Building

```bash
swift build -c release
```

## Usage

```bash
.build/release/apple_health_downloader <url> [outputFile]
```

- `url`: The URL of the file to download.
- `outputFile`: (Optional) The destination path of the downloaded file. Defaults to the last path component of the URL.

The tool downloads the file at the provided URL and saves it to the specified output location.
