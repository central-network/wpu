;;compile with github:central-network/wat4wasm
(module 
    (memory $memory 10 10)
    
    (global $self.WebAssembly.compile externref)
    (global $self.navigator.hardwareConcurrency i32)
    (global $self.Event:target/get externref)
    (global $self.MessageEvent:data/get externref)
    (global $self.Worker:postMessage externref)
    (global $self.Worker:addEventListener externref)
    
    (global $cpu<Memory>    mut extern)
    (global $cpu<Buffer>    mut extern)
    (global $cpu<Module>    mut extern)
    (global $cpu<URL>       mut extern)
    (global $cpu<Imports>   mut extern)

    (export "imports" (global $cpu<Imports>))

    (global $WORKERJS_SCRIPT "
    addEventListener( 'message', ({ data: e }) =>
        WebAssembly.instantiate(e.module, Object.assign(this, e)),
    { once: true })")

    (start $main

        (global #cpu<Imports>
            (call $self.Object.fromEntries<ref>ref
                (call $self.Array.of<refx3>ref
                    (call $self.Array.of<refx2>ref (text "module") null)
                    (call $self.Array.of<refx2>ref (text "memory") null)
                    (call $self.Array.of<refx2>ref (text "buffer") null)
                )
            )
        )

        (call $compile_cpu_module)
    )

    (func $onworkerready
        (param externref)
        (local $thread<Worker> externref)
        (local #thread<Worker> (call $Event:target this))

        (warn<refx2> 
            this
            local($thread<Worker>)
        )
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
                (call $self.Object.fromEntries<ref>ref
                    (call $self.Array.of<ref>ref
                        (call $self.Array.of<ref.i32>ref 
                            (text "once") 
                            i32(1)
                        )
                    )
                )
            )
        )

        (warn<refx4> 
            global($cpu<Imports>)
            global($cpu<Module>)
            global($cpu<Memory>)
            this
        )

    )

    (func $eventLoop
        
        (call $fork)
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
                    (call $self.URL.createObjectURL<ref>ref
                        (new $self.Blob<ref>ref
                            (call $self.Array.of<ref>ref
                                global($WORKERJS_SCRIPT)
                            )
                        )
                    )
                )

                (if (ref.is_null (get <refx2>ref global($cpu<Imports>) (text "memory")))
                    (then 
                        (global #cpu<Memory>
                            (new $self.WebAssembly.Memory<ref>ref
                                (call $self.Object.fromEntries<ref>ref
                                    (call $self.Array.of<refx3>ref
                                        (call $self.Array.of<ref.i32>ref (text "initial") i32(10))
                                        (call $self.Array.of<ref.i32>ref (text "maximum") i32(10))
                                        (call $self.Array.of<ref.i32>ref (text "shared") i32(1))
                                    )
                                )
                            )
                        )

                        (set <refx3> global($cpu<Imports>) (text "memory") global($cpu<Memory>))
                    )
                    (else
                        (warn<ref> (text "memory settled"))
                        (global #cpu<Memory>
                            (get <refx2>ref global($cpu<Imports>) (text "memory"))
                        )
                    )
                )

                (global #cpu<Buffer> 
                    (get <refx2>ref global($cpu<Memory>) (text "buffer"))
                ) 

                (set <refx3> global($cpu<Imports>) (text "buffer") global($cpu<Buffer>))
                (set <refx3> global($cpu<Imports>) (text "module") global($cpu<Module>))

                (call $eventLoop)
            )
        )
    )
    
    (compile "cpu.wat" 
        (data   $cpu.wasm/buffer) 
        (global $cpu.wasm/byteLength i32)
    )
)


