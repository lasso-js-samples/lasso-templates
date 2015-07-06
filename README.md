Lasso.js sample app: lasso-templates
====================================

This sample app demonstrates how Lasso.js can be used to transport compiled templates to the browser for various templating engines supported by Node.js and the browser. In this sample, the exact same main script is used to render templates on the server and in the browser.

# Running this sample

```bash
git clone git@github.com:lasso-js-samples/lasso-templates.git
cd lasso-templates
npm install
./run.sh
```

# Project setup

The [main.js](./main.js) file contains the main script that is used to render templates using various templating engines. The [run.sh](./run.sh) script first uses Node.js to run the `main.js` script on the server and the output of rendering the various templating engines is shown. The [run.sh](./run.sh) then uses Lasso.js to build a client-side JavaScript bundle for the `main.js` script. During the Lasso.js build all of the required templates are automatically compiled to JavaScript modules and bundled with the rest of the required JavaScript code. We enable the following Lasso.js plugins to automatically compile the required templates:

- [lasso-marko](https://github.com/lasso-js/lasso-marko)
- [lasso-dust](https://github.com/lasso-js/lasso-dust)
- [lasso-handlebars](https://github.com/lasso-js/lasso-handlebars)

In addition, we use the [view-engine](https://github.com/raptorjs/view-engine) to provide a normalized API for rendering the various templates.

The generated JavaScript bundle is then injected into the [my-page.html](./my-page.html) file.