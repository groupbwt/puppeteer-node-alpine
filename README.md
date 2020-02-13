### Docker image with composer based on alpine

### Example
```sh
./build.sh
```

> Because build script use **--squash**, use must enable experimental functionality for docker daemon

### Attention
Because puppeteer already exists in images layers, you MUST:
- use as project requirement `puppetter-core` ([read about the difference](https://github.com/puppeteer/puppeteer/blob/master/docs/api.md#puppeteer-vs-puppeteer-core))
- use browser initialization with specific arguments:
```js
const browser = await puppeteer.launch({
    executablePath: process.env.CHROME_BIN,
    args: ['--no-sandbox', '--headless', '--disable-gpu', '--disable-dev-shm-usage'],
});
```