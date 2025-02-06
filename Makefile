# Default timeout for tests
TEST_TIMEOUT?=10s
# Command to invoke Go
GO_CMD?=go

test:
	$(GO_CMD) test ./... -race -parallel=10 -timeout=$(TEST_TIMEOUT) -coverprofile=coverage.out -coverpkg="./..."
