;;compile with github:central-network/wat4wasm
(module 
    (memory $memory 10 10)
    
    (type $calc_any 
    (func 
        (param $source externref) 
        (param $value externref) 
        (param $begin i32) 
        (param $length i32) 
        (result externref)
    ))

    (global $self.WebAssembly.compile externref)
    (global $self.navigator.hardwareConcurrency i32)
    (global $self.Event:target/get externref)
    (global $self.MessageEvent:data/get externref)
    (global $self.TypedArray:set externref)
    (global $self.Worker:postMessage externref)
    (global $self.Worker:addEventListener externref)
    
    (global $cpu<Memory>        mut extern)
    (global $cpu<Buffer>        mut extern)
    (global $cpu<Uint8Array>    mut extern)
    (global $cpu<Module>        mut extern)
    (global $cpu<URL>           mut extern)
    (global $cpu<Imports>       mut extern)
    (global $threads            mut extern)
    (global $kType              mut extern)

    (export "imports" (global $cpu<Imports>))
    (export "threads" (global $threads))

    (global $TYPE_ARRAYBUFFER           i32 i32(1))
    (global $TYPE_SHAREDARRAYBUFFER     i32 i32(2))
    (global $TYPE_DATAVIEW              i32 i32(3))
    (global $TYPE_UINT8ARRAY            i32 i32(4))
    (global $TYPE_UINT16ARRAY           i32 i32(5))
    (global $TYPE_UINT32ARRAY           i32 i32(6))
    (global $TYPE_BIGUINT64ARRAY        i32 i32(7))
    (global $TYPE_INT8ARRAY             i32 i32(8))
    (global $TYPE_INT16ARRAY            i32 i32(9))
    (global $TYPE_INT32ARRAY            i32 i32(10))
    (global $TYPE_BIGINT64ARRAY         i32 i32(11))
    (global $TYPE_FLOAT32ARRAY          i32 i32(12))
    (global $TYPE_FLOAT64ARRAY          i32 i32(13))
    (global $TYPE_UINT8ARRAYCLAMPED     i32 i32(14))
    (global $TYPE_ARRAY                 i32 i32(15))
    (global $TYPE_OBJECT                i32 i32(16))
    (global $TYPE_NUMBER                i32 i32(17))
    (global $TYPE_STRING                i32 i32(18))
    (global $TYPE_BOOLEAN               i32 i32(19))
    (global $TYPE_WORKER                i32 i32(20))
    (global $TYPE_WEBSOCKET             i32 i32(21))

    (global $WORKERJS_SCRIPT "
    addEventListener( 'message', ({ data: e }) =>
        WebAssembly.instantiate(e.module, Object.assign(this, e)),
    { once: true })")

    (global $TEXT_PROMISE           "promise")
    (global $TEXT_RESOLVE           "resolve")
    (global $TEXT_LENGTH            "length")
    (global $TEXT_BUFFER            "buffer")
    (global $TEXT_BYTEOFFSET        "byteOffset")
    (global $TEXT_BYTELENGTH        "byteLength")
    (global $TEXT_BYTES_PER_ELEMENT "BYTES_PER_ELEMENT")

    (func $defineSymbol<ref.i32>
        (param $constructorName externref)
        (param $kType i32)

        (set <refx2.i32> 
            (get <refx2>ref 
                (get <refx2>ref self this) 
                text("prototype")
            ) 
            global($kType) local($kType)
        )

    )

    (func $setupSymbol
        (global #kType (call $self.Symbol<ref>ref text("WPU")))

        (call $defineSymbol<ref.i32> text("ArrayBuffer") global($TYPE_ARRAYBUFFER))
        (call $defineSymbol<ref.i32> text("DataView") global($TYPE_DATAVIEW))
        (call $defineSymbol<ref.i32> text("Uint8Array") global($TYPE_UINT8ARRAY))
        (call $defineSymbol<ref.i32> text("Uint16Array") global($TYPE_UINT16ARRAY))
        (call $defineSymbol<ref.i32> text("Uint32Array") global($TYPE_UINT32ARRAY))
        (call $defineSymbol<ref.i32> text("BigUint64Array") global($TYPE_BIGUINT64ARRAY))
        (call $defineSymbol<ref.i32> text("Int8Array") global($TYPE_INT8ARRAY))
        (call $defineSymbol<ref.i32> text("Int16Array") global($TYPE_INT16ARRAY))
        (call $defineSymbol<ref.i32> text("Int32Array") global($TYPE_INT32ARRAY))
        (call $defineSymbol<ref.i32> text("BigInt64Array") global($TYPE_BIGINT64ARRAY))
        (call $defineSymbol<ref.i32> text("Float32Array") global($TYPE_FLOAT32ARRAY))
        (call $defineSymbol<ref.i32> text("Float64Array") global($TYPE_FLOAT64ARRAY))
        (call $defineSymbol<ref.i32> text("Uint8ClampedArray") global($TYPE_UINT8ARRAYCLAMPED))
        (call $defineSymbol<ref.i32> text("Array") global($TYPE_ARRAY))

        (table.set $calc_add global($TYPE_FLOAT32ARRAY) func($f32_add))
    )

    (func $setupThreading
        (global #threads (new $self.Array externref))

        (global #cpu<Imports>
            $self.Object.fromEntries<ref>ref(
                $self.Array.of<refx3>ref(
                    $self.Array.of<refx2>ref(text("module") null)
                    $self.Array.of<refx2>ref(text("memory") null)
                    $self.Array.of<refx2>ref(text("buffer") null)
                )
            )
        )

        $compile_cpu_module()
    )

    (start $main
        $setupSymbol()
        $setupThreading()
    )

    (func $onworkerready
        (param externref)
        (local $thread<Worker> externref)
        (local #thread<Worker> $Event:target(this))

        (warn global($threads))

        ;; (warn<refx2> 
        ;;     this
        ;;     local($thread<Worker>)
        ;; )
    )

    (func $typeof
        (param $object externref)
        (result i32)
        (get <refx2>i32 this global($kType))
    )

    (table $calc_add 14 14 funcref)

    (func $lengthof
        (param $source externref)
        (param $length i32)
        (result i32)

        (if local($length) 
            (then (return local($length)))
        )

        $Object:length(this)
    )

    (func $f32_add (export "f32_add") 
        (param $source externref) 
        (param $value externref) 
        (param $begin i32) 
        (param $length i32) 
        (result externref)

        (local $promise externref)
        (local $resolve externref)

        (local $byteOffset i32)
        (local $byteLength i32)

        $Promise.withResolvers()
        
        (local #promise)
        (local #resolve)

        (local.set $length $lengthof(this local(3)))
        (local.set $byteOffset $lengthof(this local(3)))

        (warn<refx4.i32x2>
            local($promise)
            local($resolve)
            this
            local(1)
            local(2)
            local(3)
        )

        (apply $self.TypedArray:set<ref>
            global($cpu<Uint8Array>)
            (param 
                $Object:Uint8Array(
                    this
                    local($begin)
                    local($length)
                )
            )
        )

        (warn global($cpu<Uint8Array>))

        local($promise)
    )


    (func $add (export "add") (type $calc_any)
        
        this
        local(1)
        local(2)
        local(3)
        (call_indirect $calc_add (type $calc_any) 
            $typeof(this)
        )
    )

    (func $Object:length
        (param $any externref)
        (result i32)
        (get <refx2>i32 this global($TEXT_LENGTH))    
    )

    (func $Object:BYTES_PER_ELEMENT
        (param $any externref)
        (result i32)
        (get <refx2>i32 this global($TEXT_BYTES_PER_ELEMENT))    
    )

    (func $Object:buffer
        (param $any externref)
        (result externref)
        (get <refx2>ref this global($TEXT_BUFFER))    
    )

    (func $Object:Uint8Array
        (param $any externref)
        (param $begin i32)
        (param $length i32)
        (result externref)

        (local $BYTES_PER_ELEMENT i32)
        (local #BYTES_PER_ELEMENT $Object:BYTES_PER_ELEMENT(this))

        (if (i32.eqz local($BYTES_PER_ELEMENT))
            (then (error text("ZERO_BYTES_PER_ELEMENT")))
        )
        
        (new $self.Uint8Array<ref.i32x2>ref
            $Object:buffer(this)
            (i32.add 
                $Object:byteOffset(this)
                (i32.mul 
                    local($begin)
                    local($BYTES_PER_ELEMENT)
                )
            )
            (i32.mul 
                local($length)
                local($BYTES_PER_ELEMENT)
            )
        )
    )

    (func $Object:byteOffset
        (param $any externref)
        (result i32)
        (get <refx2>i32 this global($TEXT_BYTEOFFSET))    
    )

    (func $Object:byteLength
        (param $any externref)
        (result i32)
        (get <refx2>i32 this global($TEXT_BYTELENGTH))    
    )

    (func $MessageEvent:data
        (param $event externref)
        (result externref)
        (apply $self.MessageEvent:data/get<>ref this (param))    
    )

    (func $Event:target
        (param $event externref)
        (result externref)
        (apply $self.Event:target/get<>ref this (param))    
    )

    (func $Promise.withResolvers 
        (result externref externref)
        (local $withResolvers externref)
        (local #withResolvers (apply $self.Promise.withResolvers ref))

        (get <refx2>ref this global($TEXT_PROMISE))
        (get <refx2>ref this global($TEXT_RESOLVE))
    )

    (func $fork
        (local $thread<Worker> externref)

        (local #thread<Worker>
            (new $self.Worker<ref>ref
                global($cpu<URL>)
            )
        )

        (apply $self.Worker:postMessage<ref> 
            this 
            (param global($cpu<Imports>))
        )

        (apply $self.Worker:addEventListener<ref.fun.ref>
            this
            (param
                text("message") 
                func($onworkerready)
                $self.Object.fromEntries<ref>ref(
                    $self.Array.of<ref>ref(
                        $self.Array.of<ref.i32>ref( 
                            text("once") i32(1)
                        )
                    )
                )
            )
        )
    )

    (func $eventLoop
        $fork()
    )

    (func $compile_cpu_module
        (local $buffer externref)
        (local $length i32)

        (local #length
            global($cpu.wasm/byteLength)
        )

        (memory.init $memory $cpu.wasm/buffer
            i32(0) i32(0) local($length)
        )

        (local #buffer
            (new $self.Uint8Array<i32>ref
                global($cpu.wasm/byteLength)
            )
        )

        (loop $i--
            (local #length (i32.sub local($length) i32(1)))
            (set <ref.i32x2> this local($length) (i32.load8_u local($length)))
            (br_if $i-- local($length))
        )

        (async 
            (apply $self.WebAssembly.compile<ref>ref 
                global($self.WebAssembly) (param this)
            )
            (then $oncompilesuccess
                (param $module externref)
         
                (global #cpu<Module> this)
                (global #cpu<URL>
                    $self.URL.createObjectURL<ref>ref(
                        (new $self.Blob<ref>ref
                            $self.Array.of<ref>ref(
                                global($WORKERJS_SCRIPT)
                            )
                        )
                    )
                )

                (if (ref.is_null (get <refx2>ref global($cpu<Imports>) text("memory")))
                    (then 
                        (global #cpu<Memory>
                            (new $self.WebAssembly.Memory<ref>ref
                                $self.Object.fromEntries<ref>ref(
                                    $self.Array.of<refx3>ref(
                                        $self.Array.of<ref.i32>ref( text("initial") i32(10) )
                                        $self.Array.of<ref.i32>ref( text("maximum") i32(10) )
                                        $self.Array.of<ref.i32>ref( text("shared") i32(1) )
                                    )
                                )
                            )
                        )

                        (set <refx3> global($cpu<Imports>) text("memory") global($cpu<Memory>))
                    )
                    (else
                        (global #cpu<Memory>
                            (get <refx2>ref 
                                global($cpu<Imports>) 
                                text("memory")
                            )
                        )
                    )
                )

                (global #cpu<Buffer> 
                    (get <refx2>ref global($cpu<Memory>) text("buffer"))
                ) 

                (global #cpu<Uint8Array>
                    (new $self.Uint8Array<ref>ref 
                        global($cpu<Buffer>)
                    )
                ) 

                (set <refx3> global($cpu<Imports>) text("buffer") global($cpu<Buffer>))
                (set <refx3> global($cpu<Imports>) text("module") global($cpu<Module>))

                $eventLoop()
            )
        )
    )
    
    (compile "cpu.wat" 
        (data   $cpu.wasm/buffer) 
        (global $cpu.wasm/byteLength i32)
    )

    (data $cpu.wasm "file://cpu.wat" compile=1 headers=0)
)


