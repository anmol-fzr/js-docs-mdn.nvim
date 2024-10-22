local function concat(...)
    local args = { ... }
    local result = table.concat(args)
    return result
end

local baseUrl = 'https://developer.mozilla.org/en-US'
local jsDoc = concat(baseUrl, '/docs/Web/JavaScript')
local globalObjs = concat(jsDoc, '/Reference/Global_Objects')

local jsDocs = {
    aggregateError = concat(globalObjs, '/AggregateError'),
    array = concat(globalObjs, '/Array'),
    arrayBuffer = concat(globalObjs, '/ArrayBuffer'),
    asyncFunction = concat(globalObjs, '/AsyncFunction'),
    asyncGenerator = concat(globalObjs, '/AsyncGenerator'),
    asyncGeneratorFunction = concat(globalObjs, '/AsyncGeneratorFunction'),
    asyncIterator = concat(globalObjs, '/AsyncIterator'),
    atomics = concat(globalObjs, '/Atomics'),
    bigInt = concat(globalObjs, '/BigInt'),
    bigInt64Array = concat(globalObjs, '/BigInt64Array'),
    bigUint64Array = concat(globalObjs, '/BigUint64Array'),
    boolean = concat(globalObjs, '/Boolean'),
    dataView = concat(globalObjs, '/DataView'),
    date = concat(globalObjs, '/Date'),
    decodeUri = concat(globalObjs, '/decodeURI'),
    decodeUriComponent = concat(globalObjs, '/decodeURIComponent'),
    encodeUri = concat(globalObjs, '/encodeURI'),
    encodeUriComponent = concat(globalObjs, '/encodeURIComponent'),
    error = concat(globalObjs, '/Error'),
    escape = concat(globalObjs, '/escape'),
    eval = concat(globalObjs, '/eval'),
    evalError = concat(globalObjs, '/EvalError'),
    finalizationRegistry = concat(globalObjs, '/FinalizationRegistry'),
    float16Array = concat(globalObjs, '/Float16Array'),
    float32Array = concat(globalObjs, '/Float32Array'),
    float64Array = concat(globalObjs, '/Float64Array'),
    func = concat(globalObjs, '/Function'),
    generator = concat(globalObjs, '/Generator'),
    generatorFunction = concat(globalObjs, '/GeneratorFunction'),
    globalThis = concat(globalObjs, '/globalThis'),
    infinity = concat(globalObjs, '/Infinity'),
    int16Array = concat(globalObjs, '/Int16Array'),
    int32Array = concat(globalObjs, '/Int32Array'),
    int8Array = concat(globalObjs, '/Int8Array'),
    internalError = concat(globalObjs, '/InternalError'),
    intl = concat(globalObjs, '/Intl'),
    isFinite = concat(globalObjs, '/isFinite'),
    isNaN = concat(globalObjs, '/isNaN'),
    iterator = concat(globalObjs, '/Iterator'),
    json = concat(globalObjs, '/JSON'),
    map = concat(globalObjs, '/Map'),
    math = concat(globalObjs, '/Math'),
    naN = concat(globalObjs, '/NaN'),
    number = concat(globalObjs, '/Number'),
    object = concat(globalObjs, '/Object'),
    parseFloat = concat(globalObjs, '/parseFloat'),
    parseInt = concat(globalObjs, '/parseInt'),
    promise = concat(globalObjs, '/Promise'),
    proxy = concat(globalObjs, '/Proxy'),
    rangeError = concat(globalObjs, '/RangeError'),
    referenceError = concat(globalObjs, '/ReferenceError'),
    reflect = concat(globalObjs, '/Reflect'),
    regExp = concat(globalObjs, '/RegExp'),
    set = concat(globalObjs, '/Set'),
    sharedArrayBuffer = concat(globalObjs, '/SharedArrayBuffer'),
    string = concat(globalObjs, '/String'),
    symbol = concat(globalObjs, '/Symbol'),
    syntaxError = concat(globalObjs, '/SyntaxError'),
    typedArray = concat(globalObjs, '/TypedArray'),
    typeError = concat(globalObjs, '/TypeError'),
}

return {
    ['AggregateError'] = jsDocs.aggregateError,
    ['Array'] = jsDocs.array,
    ['ArrayBuffer'] = jsDocs.arrayBuffer,
    ['AsyncFunction'] = jsDocs.asyncFunction,
    ['AsyncGenerator'] = jsDocs.asyncGenerator,
    ['AsyncGeneratorFunction'] = jsDocs.asyncGeneratorFunction,
    ['AsyncIterator'] = jsDocs.asyncIterator,
    ['Atomics'] = jsDocs.atomics,
    ['BigInt'] = jsDocs.bigInt,
    ['BigInt64Array'] = jsDocs.bigInt64Array,
    ['BigUint64Array'] = jsDocs.bigUint64Array,
    ['Boolean'] = jsDocs.boolean,
    ['DataView'] = jsDocs.dataView,
    ['Date'] = jsDocs.date,
    ['decodeURI'] = jsDocs.decodeUri,
    ['decodeURIComponent'] = jsDocs.decodeUriComponent,
    ['encodeURI'] = jsDocs.encodeUri,
    ['encodeURIComponent'] = jsDocs.encodeUriComponent,
    ['Error'] = jsDocs.error,
    ['escape'] = jsDocs.escape,
    ['eval'] = jsDocs.eval,
    ['EvalError'] = jsDocs.evalError,
    ['FinalizationRegistry'] = jsDocs.finalizationRegistry,
    ['Float16Array'] = jsDocs.float16Array,
    ['Float32Array'] = jsDocs.float32Array,
    ['Float64Array'] = jsDocs.float64Array,
    ['Function'] = jsDocs.func,
    ['Generator'] = jsDocs.generator,
    ['GeneratorFunction'] = jsDocs.generatorFunction,
    ['globalThis'] = jsDocs.globalThis,
    ['Infinity'] = jsDocs.infinity,
    ['Int16Array'] = jsDocs.int16Array,
    ['Int32Array'] = jsDocs.int32Array,
    ['Int8Array'] = jsDocs.int8Array,
    ['InternalError'] = jsDocs.internalError,
    ['Intl'] = jsDocs.intl,
    ['isFinite'] = jsDocs.isFinite,
    ['isNaN'] = jsDocs.isNaN,
    ['Iterator'] = jsDocs.iterator,
    ['JSON'] = jsDocs.json,
    ['Map'] = jsDocs.map,
    ['Math'] = jsDocs.math,
    ['NaN'] = jsDocs.naN,
    ['Number'] = jsDocs.number,
    ['Object'] = jsDocs.object,
    ['parseFloat'] = jsDocs.parseFloat,
    ['parseInt'] = jsDocs.parseInt,
    ['Promise'] = jsDocs.promise,
    ['Proxy'] = jsDocs.proxy,
    ['RangeError'] = jsDocs.rangeError,
    ['ReferenceError'] = jsDocs.referenceError,
    ['Reflect'] = jsDocs.reflect,
    ['RegExp'] = jsDocs.regExp,
    ['Set'] = jsDocs.set,
    ['SharedArrayBuffer'] = jsDocs.sharedArrayBuffer,
    ['String'] = jsDocs.string,
    ['Symbol'] = jsDocs.symbol,
    ['SyntaxError'] = jsDocs.syntaxError,
    ['TypedArray'] = jsDocs.typedArray,
    ['TypeError'] = jsDocs.typeError,
}
