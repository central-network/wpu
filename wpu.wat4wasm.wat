;;compile with github:central-network/wat4wasm
(module 
    
    (import "self" "Array"              (func $wat4wasm/Array<>ref (param) (result externref)))
    (import "Reflect" "set"             (func $wat4wasm/Reflect.set<ref.i32x2> (param externref i32 i32) (result)))
    (import "Reflect" "getOwnPropertyDescriptor" (func $wat4wasm/Reflect.getOwnPropertyDescriptor<refx2>ref (param externref externref) (result externref)))
    (import "Reflect" "get"             (func $wat4wasm/Reflect.get<refx2>ref (param externref externref) (result externref)))
    (import "Reflect" "get"             (func $wat4wasm/Reflect.get<refx2>i32 (param externref externref) (result i32)))
    (import "Reflect" "get"             (func $wat4wasm/Reflect.get<refx2>f32 (param externref externref) (result f32)))
    (import "Reflect" "get"             (func $wat4wasm/Reflect.get<refx2>i64 (param externref externref) (result i64)))
    (import "Reflect" "get"             (func $wat4wasm/Reflect.get<refx2>f64 (param externref externref) (result f64)))
    (import "Reflect" "apply"           (func $wat4wasm/Reflect.apply<refx3>ref (param externref externref externref) (result externref)))
    (import "self" "self"               (global $wat4wasm/self externref))
    (import "String" "fromCharCode"     (global $wat4wasm/String.fromCharCode externref))
   
	(import "Object" "fromEntries" (func $self.Object.fromEntries<ref>ref (param externref) (result externref)))
	(import "Array" "of" (func $self.Array.of<refx3>ref (param externref externref externref) (result externref)))
	(import "Array" "of" (func $self.Array.of<refx2>ref (param externref externref) (result externref)))
	(import "console" "warn" (func $self.console.warn<refx2> (param externref externref)))
	(import "Reflect" "apply" (func $self.Reflect.apply<refx3>ref (param externref externref externref) (result externref)))
	(import "Array" "of" (func $self.Array.of<>ref  (result externref)))
	(import "Reflect" "construct" (func $self.Reflect.construct<refx2>ref (param externref externref) (result externref)))
	(import "Array" "of" (func $self.Array.of<ref>ref (param externref) (result externref)))
	(import "Reflect" "apply" (func $self.Reflect.apply<refx3> (param externref externref externref)))
	(import "Array" "of" (func $self.Array.of<ref.fun.ref>ref (param externref funcref externref) (result externref)))
	(import "Array" "of" (func $self.Array.of<ref.i32>ref (param externref i32) (result externref)))
	(import "console" "warn" (func $self.console.warn<refx4> (param externref externref externref externref)))
	(import "Array" "of" (func $self.Array.of<i32>ref (param i32) (result externref)))
	(import "Reflect" "set" (func $self.Reflect.set<ref.i32x2> (param externref i32 i32)))
	(import "Array" "of" (func $self.Array.of<fun>ref (param funcref) (result externref)))
	(import "URL" "createObjectURL" (func $self.URL.createObjectURL<ref>ref (param externref) (result externref)))
	(import "Reflect" "get" (func $self.Reflect.get<refx2>ref (param externref externref) (result externref)))
	(import "Reflect" "set" (func $self.Reflect.set<refx3> (param externref externref externref)))
	(import "console" "warn" (func $self.console.warn<ref> (param externref)))
	 

    
    (memory $memory 10 10)
    
    (global $self.WebAssembly.compile (mut externref) ref.null extern)
    (global $self.navigator.hardwareConcurrency (mut i32) (i32.const 0))
    (global $self.Event:target/get (mut externref) ref.null extern)
    (global $self.MessageEvent:data/get (mut externref) ref.null extern)
    (global $self.Worker:postMessage (mut externref) ref.null extern)
    (global $self.Worker:addEventListener (mut externref) ref.null extern)
    
    (global $cpu<Memory>    (mut externref) ref.null extern)
    (global $cpu<Buffer>    (mut externref) ref.null extern)
    (global $cpu<Module>    (mut externref) ref.null extern)
    (global $cpu<URL>       (mut externref) ref.null extern)
    (global $cpu<Imports>   (mut externref) ref.null extern)

    (export "imports" (global $cpu<Imports>))

    (global $WORKERJS_SCRIPT (mut externref) ref.null extern)

    (start $main) (func $main
        (table.set $extern (i32.const 1) (call $wat4wasm/text (i32.const 0) (i32.const 24)))
		(table.set $extern (i32.const 2) (call $wat4wasm/text (i32.const 24) (i32.const 24)))
		(table.set $extern (i32.const 3) (call $wat4wasm/text (i32.const 48) (i32.const 24)))
		(table.set $extern (i32.const 4) (call $wat4wasm/text (i32.const 72) (i32.const 28)))
		(table.set $extern (i32.const 5) (call $wat4wasm/text (i32.const 100) (i32.const 16)))
		(table.set $extern (i32.const 6) (call $wat4wasm/text (i32.const 116) (i32.const 28)))
		(table.set $extern (i32.const 7) (call $wat4wasm/text (i32.const 144) (i32.const 28)))
		(table.set $extern (i32.const 8) (call $wat4wasm/text (i32.const 172) (i32.const 24)))
		(table.set $extern (i32.const 9) (call $wat4wasm/text (i32.const 196) (i32.const 56)))
		(table.set $extern (i32.const 10) (call $wat4wasm/text (i32.const 252) (i32.const 44)))
		(table.set $extern (i32.const 11) (call $wat4wasm/text (i32.const 296) (i32.const 28)))
		(table.set $extern (i32.const 12) (call $wat4wasm/text (i32.const 324) (i32.const 36)))
		(table.set $extern (i32.const 13) (call $wat4wasm/text (i32.const 360) (i32.const 76)))
		(table.set $extern (i32.const 14) (call $wat4wasm/text (i32.const 436) (i32.const 20)))
		(table.set $extern (i32.const 15) (call $wat4wasm/text (i32.const 456) (i32.const 36)))
		(table.set $extern (i32.const 16) (call $wat4wasm/text (i32.const 492) (i32.const 24)))
		(table.set $extern (i32.const 17) (call $wat4wasm/text (i32.const 516) (i32.const 12)))
		(table.set $extern (i32.const 18) (call $wat4wasm/text (i32.const 528) (i32.const 48)))
		(table.set $extern (i32.const 19) (call $wat4wasm/text (i32.const 576) (i32.const 16)))
		(table.set $extern (i32.const 20) (call $wat4wasm/text (i32.const 592) (i32.const 24)))
		(table.set $extern (i32.const 21) (call $wat4wasm/text (i32.const 616) (i32.const 44)))
		(table.set $extern (i32.const 22) (call $wat4wasm/text (i32.const 660) (i32.const 64)))
		(table.set $extern (i32.const 23) (call $wat4wasm/text (i32.const 724) (i32.const 28)))
		(table.set $extern (i32.const 24) (call $wat4wasm/text (i32.const 752) (i32.const 16)))
		(table.set $extern (i32.const 25) (call $wat4wasm/text (i32.const 768) (i32.const 40)))
		(table.set $extern (i32.const 26) (call $wat4wasm/text (i32.const 808) (i32.const 16)))
		(table.set $extern (i32.const 27) (call $wat4wasm/text (i32.const 824) (i32.const 24)))
		(table.set $extern (i32.const 28) (call $wat4wasm/text (i32.const 848) (i32.const 92)))
		(table.set $extern (i32.const 29) (call $wat4wasm/text (i32.const 940) (i32.const 556)))
		(table.set $extern (i32.const 30) (call $wat4wasm/text (i32.const 1496) (i32.const 548)))
		(table.set $extern (i32.const 31) (call $wat4wasm/text (i32.const 2044) (i32.const 568)))
		(table.set $extern (i32.const 32) (call $wat4wasm/text (i32.const 2612) (i32.const 540)))
		(table.set $extern (i32.const 33) (call $wat4wasm/text (i32.const 3152) (i32.const 548)))    
    
        
        (memory.fill (i32.const 0) (i32.const 0) (i32.const 3700))
            
    
        (global.set $WORKERJS_SCRIPT (table.get $extern (i32.const 33)))    
    
        
        (global.set $self.WebAssembly.compile
            (call $wat4wasm/Reflect.get<refx2>ref
                (call $wat4wasm/Reflect.get<refx2>ref 
                        (global.get $wat4wasm/self) 
                        (table.get $extern (i32.const 10)) 
                    )
                (table.get $extern (i32.const 11)) 
            )
        )
        
        (global.set $self.navigator.hardwareConcurrency
            (call $wat4wasm/Reflect.get<refx2>i32
                (call $wat4wasm/Reflect.get<refx2>ref 
                        (global.get $wat4wasm/self) 
                        (table.get $extern (i32.const 12)) 
                    )
                (table.get $extern (i32.const 13)) 
            )
        )
        
        (global.set $self.Event:target/get
            (call $wat4wasm/Reflect.get<refx2>ref
                (call $wat4wasm/Reflect.getOwnPropertyDescriptor<refx2>ref
                    (call $wat4wasm/Reflect.get<refx2>ref 
                            (call $wat4wasm/Reflect.get<refx2>ref 
                                (global.get $wat4wasm/self) 
                                (table.get $extern (i32.const 14)) 
                            ) 
                            (table.get $extern (i32.const 15)) 
                        )
                    (table.get $extern (i32.const 16)) 
                )
                (table.get $extern (i32.const 17)) 
            )
        )
        
        (global.set $self.MessageEvent:data/get
            (call $wat4wasm/Reflect.get<refx2>ref
                (call $wat4wasm/Reflect.getOwnPropertyDescriptor<refx2>ref
                    (call $wat4wasm/Reflect.get<refx2>ref 
                            (call $wat4wasm/Reflect.get<refx2>ref 
                                (global.get $wat4wasm/self) 
                                (table.get $extern (i32.const 18)) 
                            ) 
                            (table.get $extern (i32.const 15)) 
                        )
                    (table.get $extern (i32.const 19)) 
                )
                (table.get $extern (i32.const 17)) 
            )
        )
        
        (global.set $self.Worker:postMessage
            (call $wat4wasm/Reflect.get<refx2>ref
                (call $wat4wasm/Reflect.get<refx2>ref 
                            (call $wat4wasm/Reflect.get<refx2>ref 
                                (global.get $wat4wasm/self) 
                                (table.get $extern (i32.const 20)) 
                            ) 
                            (table.get $extern (i32.const 15)) 
                        )
                (table.get $extern (i32.const 21)) 
            )
        )
        
        (global.set $self.Worker:addEventListener
            (call $wat4wasm/Reflect.get<refx2>ref
                (call $wat4wasm/Reflect.get<refx2>ref 
                            (call $wat4wasm/Reflect.get<refx2>ref 
                                (global.get $wat4wasm/self) 
                                (table.get $extern (i32.const 20)) 
                            ) 
                            (table.get $extern (i32.const 15)) 
                        )
                (table.get $extern (i32.const 22)) 
            )
        )
        
        (global.set $self.MessageEvent.prototype.data/get
            (call $wat4wasm/Reflect.get<refx2>ref
                (call $wat4wasm/Reflect.getOwnPropertyDescriptor<refx2>ref
                    (call $wat4wasm/Reflect.get<refx2>ref 
                            (call $wat4wasm/Reflect.get<refx2>ref 
                                (global.get $wat4wasm/self) 
                                (table.get $extern (i32.const 18)) 
                            ) 
                            (table.get $extern (i32.const 15)) 
                        )
                    (table.get $extern (i32.const 19)) 
                )
                (table.get $extern (i32.const 17)) 
            )
        )
        
        (global.set $self.Promise.prototype.then
            (call $wat4wasm/Reflect.get<refx2>ref
                (call $wat4wasm/Reflect.get<refx2>ref 
                            (call $wat4wasm/Reflect.get<refx2>ref 
                                (global.get $wat4wasm/self) 
                                (table.get $extern (i32.const 23)) 
                            ) 
                            (table.get $extern (i32.const 15)) 
                        )
                (table.get $extern (i32.const 24)) 
            )
        )
        
        (global.set $self.Worker
            (call $wat4wasm/Reflect.get<refx2>ref
                (global.get $wat4wasm/self)
                (table.get $extern (i32.const 20)) 
            )
        )
        
        (global.set $self.Uint8Array
            (call $wat4wasm/Reflect.get<refx2>ref
                (global.get $wat4wasm/self)
                (table.get $extern (i32.const 25)) 
            )
        )
        
        (global.set $self.Blob
            (call $wat4wasm/Reflect.get<refx2>ref
                (global.get $wat4wasm/self)
                (table.get $extern (i32.const 26)) 
            )
        )
        
        (global.set $self.WebAssembly.Memory
            (call $wat4wasm/Reflect.get<refx2>ref
                (call $wat4wasm/Reflect.get<refx2>ref 
                        (global.get $wat4wasm/self) 
                        (table.get $extern (i32.const 10)) 
                    )
                (table.get $extern (i32.const 27)) 
            )
        )
        
        (global.set $self.WebAssembly
            (call $wat4wasm/Reflect.get<refx2>ref
                (global.get $wat4wasm/self)
                (table.get $extern (i32.const 10)) 
            )
        )
            
     

        (global.set $cpu<Imports>
            (call $self.Object.fromEntries<ref>ref
                (call $self.Array.of<refx3>ref
                    (call $self.Array.of<refx2>ref (table.get $extern (i32.const 1)) (ref.null extern))
                    (call $self.Array.of<refx2>ref (table.get $extern (i32.const 2)) (ref.null extern))
                    (call $self.Array.of<refx2>ref (table.get $extern (i32.const 3)) (ref.null extern))
                )
            )
        )

        (call $compile_cpu_module)
    )

    (func $onworkerready
        (param externref)
        (local $thread<Worker> externref)
        (local.set $thread<Worker> (call $Event:target (local.get 0)))

        (call $self.console.warn<refx2> 
            (local.get 0)
            (local.get $thread<Worker>)
        )
    )

    (func $MessageEvent:data
        (param $event externref)
        (result externref)
        (call $self.Reflect.apply<refx3>ref 
            (global.get $self.MessageEvent:data/get) (local.get 0) (call $self.Array.of<>ref))    
    )

    (func $Event:target
        (param $event externref)
        (result externref)
        (call $self.Reflect.apply<refx3>ref 
            (global.get $self.Event:target/get) (local.get 0) (call $self.Array.of<>ref))    
    )

    (func $fork
        (local $thread<Worker> externref)

        (local.set $thread<Worker>
            (call $self.Reflect.construct<refx2>ref 
            (global.get $self.Worker) 
            (call $self.Array.of<ref>ref 
                (global.get $cpu<URL>)
            ))
        )

        (call $self.Reflect.apply<refx3> 
            (global.get $self.Worker:postMessage) 
            (local.get 0) 
            (call $self.Array.of<ref>ref (global.get $cpu<Imports>))
        )

        (call $self.Reflect.apply<refx3> 
            (global.get $self.Worker:addEventListener)
            (local.get 0)
            (call $self.Array.of<ref.fun.ref>ref
                (table.get $extern (i32.const 4)) 
                (ref.func $onworkerready)
                (call $self.Object.fromEntries<ref>ref
                    (call $self.Array.of<ref>ref
                        (call $self.Array.of<ref.i32>ref 
                            (table.get $extern (i32.const 5)) 
                            (i32.const 1)
                        )
                    )
                )
            )
        )

        (call $self.console.warn<refx4> 
            (global.get $cpu<Imports>)
            (global.get $cpu<Module>)
            (global.get $cpu<Memory>)
            (local.get 0)
        )

    )

    (func $eventLoop
        
        (call $fork)
    )

    (func $compile_cpu_module
        (local $buffer externref)
        (local $length i32)

        (local.set $length
            (global.get $cpu.wasm/byteLength)
        )

        (memory.init $memory $cpu.wasm/buffer
            (i32.const 0) (i32.const 0) (local.get $length)
        )

        (local.set $buffer
            (call $self.Reflect.construct<refx2>ref 
            (global.get $self.Uint8Array) 
            (call $self.Array.of<i32>ref 
                (global.get $cpu.wasm/byteLength)
            ))
        )

        (loop $i--
            (local.set $length (i32.sub (local.get $length) (i32.const 1)))
            (call $self.Reflect.set<ref.i32x2>  (local.get 0) (local.get $length) (i32.load8_u (local.get $length)))
            (br_if $i-- (local.get $length))
        )

        
    (call $self.Reflect.apply<refx3>
        (global.get $self.Promise.prototype.then)
        (call $self.Reflect.apply<refx3>ref 
            (global.get $self.WebAssembly.compile) 
                    (global.get $self.WebAssembly) (call $self.Array.of<ref>ref (local.get 0))
                )
        (call $self.Array.of<fun>ref
            (ref.func $async1_oncompilesuccess)
        )
    )
                    
    )
    
    
    (global $cpu.wasm/byteLength i32 (i32.const 1527))
    (data $cpu.wasm/buffer "\00\61\73\6d\01\00\00\00\01\49\0d\60\00\01\6f\60\03\6f\7f\7f\00\60\02\6f\6f\01\6f\60\02\6f\6f\01\7f\60\02\6f\6f\01\7d\60\02\6f\6f\01\7e\60\02\6f\6f\01\7c\60\03\6f\6f\6f\01\6f\60\01\6f\01\6f\60\04\6f\6f\6f\6f\00\60\01\6f\00\60\00\00\60\02\7f\7f\01\6f\02\a8\02\12\04\73\65\6c\66\05\41\72\72\61\79\00\00\07\52\65\66\6c\65\63\74\03\73\65\74\00\01\07\52\65\66\6c\65\63\74\18\67\65\74\4f\77\6e\50\72\6f\70\65\72\74\79\44\65\73\63\72\69\70\74\6f\72\00\02\07\52\65\66\6c\65\63\74\03\67\65\74\00\02\07\52\65\66\6c\65\63\74\03\67\65\74\00\03\07\52\65\66\6c\65\63\74\03\67\65\74\00\04\07\52\65\66\6c\65\63\74\03\67\65\74\00\05\07\52\65\66\6c\65\63\74\03\67\65\74\00\06\07\52\65\66\6c\65\63\74\05\61\70\70\6c\79\00\07\04\73\65\6c\66\04\73\65\6c\66\03\6f\00\06\53\74\72\69\6e\67\0c\66\72\6f\6d\43\68\61\72\43\6f\64\65\03\6f\00\07\52\65\66\6c\65\63\74\09\63\6f\6e\73\74\72\75\63\74\00\02\05\41\72\72\61\79\02\6f\66\00\08\07\63\6f\6e\73\6f\6c\65\04\77\61\72\6e\00\09\04\73\65\6c\66\0b\70\6f\73\74\4d\65\73\73\61\67\65\00\0a\04\73\65\6c\66\06\6d\65\6d\6f\72\79\02\03\0a\0a\04\73\65\6c\66\06\6d\65\6d\6f\72\79\03\6f\00\04\73\65\6c\66\06\62\75\66\66\65\72\03\6f\00\03\03\02\0b\0c\04\05\01\6f\01\07\07\06\10\03\6f\01\d0\6f\0b\6f\01\d0\6f\0b\6f\01\d0\6f\0b\08\01\0d\0a\cb\01\02\8e\01\00\41\01\41\00\41\d0\00\10\0e\26\00\41\02\41\d0\00\41\30\10\0e\26\00\41\03\41\80\01\41\24\10\0e\26\00\41\04\41\a4\01\41\10\10\0e\26\00\41\05\41\b4\01\41\0c\10\0e\26\00\41\06\41\c0\01\41\28\10\0e\26\00\41\00\41\00\41\e8\01\fc\0b\00\23\00\41\02\25\00\10\03\41\03\25\00\10\03\41\04\25\00\10\02\41\05\25\00\10\03\24\05\23\00\41\06\25\00\10\03\24\06\23\06\23\03\10\0a\10\09\24\04\41\01\25\00\23\02\23\03\23\04\10\0b\d0\6f\10\0c\0b\39\01\01\6f\20\01\45\04\40\d0\6f\0f\0b\10\00\21\02\03\40\20\01\41\04\6b\21\01\20\02\20\01\41\04\6e\20\00\20\01\6a\2a\02\00\a9\10\01\20\01\0d\00\0b\23\01\d0\6f\20\02\10\08\0b\0b\ef\01\01\00\41\00\0b\e8\01\00\00\d0\42\00\00\ca\42\00\00\d8\42\00\00\d8\42\00\00\de\42\00\00\00\42\00\00\cc\42\00\00\e4\42\00\00\de\42\00\00\da\42\00\00\00\42\00\00\d2\42\00\00\dc\42\00\00\e6\42\00\00\e8\42\00\00\c2\42\00\00\dc\42\00\00\c6\42\00\00\ca\42\00\00\04\42\00\00\9a\42\00\00\ca\42\00\00\e6\42\00\00\e6\42\00\00\c2\42\00\00\ce\42\00\00\ca\42\00\00\8a\42\00\00\ec\42\00\00\ca\42\00\00\dc\42\00\00\e8\42\00\00\e0\42\00\00\e4\42\00\00\de\42\00\00\e8\42\00\00\de\42\00\00\e8\42\00\00\f2\42\00\00\e0\42\00\00\ca\42\00\00\c8\42\00\00\c2\42\00\00\e8\42\00\00\c2\42\00\00\ce\42\00\00\ca\42\00\00\e8\42\00\00\aa\42\00\00\d2\42\00\00\dc\42\00\00\e8\42\00\00\60\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\95\05\04\6e\61\6d\65\01\ad\03\0f\00\13\77\61\74\34\77\61\73\6d\2f\41\72\72\61\79\3c\3e\72\65\66\01\1f\77\61\74\34\77\61\73\6d\2f\52\65\66\6c\65\63\74\2e\73\65\74\3c\72\65\66\2e\69\33\32\78\32\3e\02\33\77\61\74\34\77\61\73\6d\2f\52\65\66\6c\65\63\74\2e\67\65\74\4f\77\6e\50\72\6f\70\65\72\74\79\44\65\73\63\72\69\70\74\6f\72\3c\72\65\66\78\32\3e\72\65\66\03\1e\77\61\74\34\77\61\73\6d\2f\52\65\66\6c\65\63\74\2e\67\65\74\3c\72\65\66\78\32\3e\72\65\66\04\1e\77\61\74\34\77\61\73\6d\2f\52\65\66\6c\65\63\74\2e\67\65\74\3c\72\65\66\78\32\3e\69\33\32\05\1e\77\61\74\34\77\61\73\6d\2f\52\65\66\6c\65\63\74\2e\67\65\74\3c\72\65\66\78\32\3e\66\33\32\06\1e\77\61\74\34\77\61\73\6d\2f\52\65\66\6c\65\63\74\2e\67\65\74\3c\72\65\66\78\32\3e\69\36\34\07\1e\77\61\74\34\77\61\73\6d\2f\52\65\66\6c\65\63\74\2e\67\65\74\3c\72\65\66\78\32\3e\66\36\34\08\20\77\61\74\34\77\61\73\6d\2f\52\65\66\6c\65\63\74\2e\61\70\70\6c\79\3c\72\65\66\78\33\3e\72\65\66\09\20\73\65\6c\66\2e\52\65\66\6c\65\63\74\2e\63\6f\6e\73\74\72\75\63\74\3c\72\65\66\78\32\3e\72\65\66\0a\15\73\65\6c\66\2e\41\72\72\61\79\2e\6f\66\3c\72\65\66\3e\72\65\66\0b\18\73\65\6c\66\2e\63\6f\6e\73\6f\6c\65\2e\77\61\72\6e\3c\72\65\66\78\34\3e\0c\15\73\65\6c\66\2e\70\6f\73\74\4d\65\73\73\61\67\65\3c\72\65\66\3e\0d\04\6d\61\69\6e\0e\0d\77\61\74\34\77\61\73\6d\2f\74\65\78\74\02\36\0f\00\00\01\00\02\00\03\00\04\00\05\00\06\00\07\00\08\00\09\00\0a\00\0b\00\0c\00\0d\00\0e\03\00\06\6f\66\66\73\65\74\01\06\6c\65\6e\67\74\68\02\05\61\72\72\61\79\05\09\01\00\06\65\78\74\65\72\6e\06\09\01\00\06\6d\65\6d\6f\72\79\07\8f\01\07\00\0d\77\61\74\34\77\61\73\6d\2f\73\65\6c\66\01\1c\77\61\74\34\77\61\73\6d\2f\53\74\72\69\6e\67\2e\66\72\6f\6d\43\68\61\72\43\6f\64\65\02\06\6d\65\6d\6f\72\79\03\0d\6d\65\6d\6f\72\79\2e\62\75\66\66\65\72\04\11\6d\65\6d\6f\72\79\2e\75\49\6e\74\38\41\72\72\61\79\05\24\73\65\6c\66\2e\4d\65\73\73\61\67\65\45\76\65\6e\74\2e\70\72\6f\74\6f\74\79\70\65\2e\64\61\74\61\2f\67\65\74\06\0f\73\65\6c\66\2e\55\69\6e\74\38\41\72\72\61\79")
    

	(global $self.MessageEvent.prototype.data/get (mut externref) ref.null extern)

	(global $self.Promise.prototype.then (mut externref) ref.null extern)	

	(func $async1_oncompilesuccess
                (param $module externref)
         
                (global.set $cpu<Module> (local.get 0))
                (global.set $cpu<URL>
                    (call $self.URL.createObjectURL<ref>ref
                        (call $self.Reflect.construct<refx2>ref 
            (global.get $self.Blob) 
            (call $self.Array.of<ref>ref 
                            (call $self.Array.of<ref>ref
                                (global.get $WORKERJS_SCRIPT)
                            )
                        ))
                    )
                )

                (if (ref.is_null (call $self.Reflect.get<refx2>ref  (global.get $cpu<Imports>) (table.get $extern (i32.const 2))))
                    (then 
                        (global.set $cpu<Memory>
                            (call $self.Reflect.construct<refx2>ref 
            (global.get $self.WebAssembly.Memory) 
            (call $self.Array.of<ref>ref 
                                (call $self.Object.fromEntries<ref>ref
                                    (call $self.Array.of<refx3>ref
                                        (call $self.Array.of<ref.i32>ref (table.get $extern (i32.const 6)) (i32.const 10))
                                        (call $self.Array.of<ref.i32>ref (table.get $extern (i32.const 7)) (i32.const 10))
                                        (call $self.Array.of<ref.i32>ref (table.get $extern (i32.const 8)) (i32.const 1))
                                    )
                                )
                            ))
                        )

                        (call $self.Reflect.set<refx3>  (global.get $cpu<Imports>) (table.get $extern (i32.const 2)) (global.get $cpu<Memory>))
                    )
                    (else
                        (call $self.console.warn<ref> (table.get $extern (i32.const 9)))
                        (global.set $cpu<Memory>
                            (call $self.Reflect.get<refx2>ref  (global.get $cpu<Imports>) (table.get $extern (i32.const 2)))
                        )
                    )
                )

                (global.set $cpu<Buffer> 
                    (call $self.Reflect.get<refx2>ref  (global.get $cpu<Memory>) (table.get $extern (i32.const 3)))
                ) 

                (call $self.Reflect.set<refx3>  (global.get $cpu<Imports>) (table.get $extern (i32.const 3)) (global.get $cpu<Buffer>))
                (call $self.Reflect.set<refx3>  (global.get $cpu<Imports>) (table.get $extern (i32.const 1)) (global.get $cpu<Module>))

                (call $eventLoop)
            )

	(elem $wat4wasm/async funcref 
	    (ref.func $async1_oncompilesuccess)
	)

	(global $self.Worker (mut externref) ref.null extern)
	(global $self.Uint8Array (mut externref) ref.null extern)
	(global $self.Blob (mut externref) ref.null extern)
	(global $self.WebAssembly.Memory (mut externref) ref.null extern)

	(global $self.WebAssembly (mut externref) ref.null extern)

	(elem $wat4wasm/refs funcref (ref.func $onworkerready) (ref.func $async1_oncompilesuccess) (ref.func $async1_oncompilesuccess))

    (table $extern 34 34 externref)

    (func $wat4wasm/text 
        (param $offset i32)
        (param $length i32)
        (result externref)
        (local $array externref)

        (if (i32.eqz (local.get $length))
            (then (return (ref.null extern)))
        )

        (local.set $array 
            (call $wat4wasm/Array<>ref)
        )

        (loop $length--
            (local.set $length
                (i32.sub (local.get $length) (i32.const 4))
            )
                
            (call $wat4wasm/Reflect.set<ref.i32x2>
                (local.get $array)
                (i32.div_u (local.get $length) (i32.const 4))
                (i32.trunc_f32_u	
                    (f32.load 
                        (i32.add 
                            (local.get $offset)
                            (local.get $length)
                        )
                    )
                )
            )

            (br_if $length-- (local.get $length))
        )

        (call $wat4wasm/Reflect.apply<refx3>ref
            (global.get $wat4wasm/String.fromCharCode)
            (ref.null extern)
            (local.get $array)
        )
    )

    (data (i32.const 0) "\00\00\da\42\00\00\de\42\00\00\c8\42\00\00\ea\42\00\00\d8\42\00\00\ca\42\00\00\da\42\00\00\ca\42\00\00\da\42\00\00\de\42\00\00\e4\42\00\00\f2\42\00\00\c4\42\00\00\ea\42\00\00\cc\42\00\00\cc\42\00\00\ca\42\00\00\e4\42\00\00\da\42\00\00\ca\42\00\00\e6\42\00\00\e6\42\00\00\c2\42\00\00\ce\42\00\00\ca\42\00\00\de\42\00\00\dc\42\00\00\c6\42\00\00\ca\42\00\00\d2\42\00\00\dc\42\00\00\d2\42\00\00\e8\42\00\00\d2\42\00\00\c2\42\00\00\d8\42\00\00\da\42\00\00\c2\42\00\00\f0\42\00\00\d2\42\00\00\da\42\00\00\ea\42\00\00\da\42\00\00\e6\42\00\00\d0\42\00\00\c2\42\00\00\e4\42\00\00\ca\42\00\00\c8\42\00\00\da\42\00\00\ca\42\00\00\da\42\00\00\de\42\00\00\e4\42\00\00\f2\42\00\00\00\42\00\00\e6\42\00\00\ca\42\00\00\e8\42\00\00\e8\42\00\00\d8\42\00\00\ca\42\00\00\c8\42\00\00\ae\42\00\00\ca\42\00\00\c4\42\00\00\82\42\00\00\e6\42\00\00\e6\42\00\00\ca\42\00\00\da\42\00\00\c4\42\00\00\d8\42\00\00\f2\42\00\00\c6\42\00\00\de\42\00\00\da\42\00\00\e0\42\00\00\d2\42\00\00\d8\42\00\00\ca\42\00\00\dc\42\00\00\c2\42\00\00\ec\42\00\00\d2\42\00\00\ce\42\00\00\c2\42\00\00\e8\42\00\00\de\42\00\00\e4\42\00\00\d0\42\00\00\c2\42\00\00\e4\42\00\00\c8\42\00\00\ee\42\00\00\c2\42\00\00\e4\42\00\00\ca\42\00\00\86\42\00\00\de\42\00\00\dc\42\00\00\c6\42\00\00\ea\42\00\00\e4\42\00\00\e4\42\00\00\ca\42\00\00\dc\42\00\00\c6\42\00\00\f2\42\00\00\8a\42\00\00\ec\42\00\00\ca\42\00\00\dc\42\00\00\e8\42\00\00\e0\42\00\00\e4\42\00\00\de\42\00\00\e8\42\00\00\de\42\00\00\e8\42\00\00\f2\42\00\00\e0\42\00\00\ca\42\00\00\e8\42\00\00\c2\42\00\00\e4\42\00\00\ce\42\00\00\ca\42\00\00\e8\42\00\00\ce\42\00\00\ca\42\00\00\e8\42\00\00\9a\42\00\00\ca\42\00\00\e6\42\00\00\e6\42\00\00\c2\42\00\00\ce\42\00\00\ca\42\00\00\8a\42\00\00\ec\42\00\00\ca\42\00\00\dc\42\00\00\e8\42\00\00\c8\42\00\00\c2\42\00\00\e8\42\00\00\c2\42\00\00\ae\42\00\00\de\42\00\00\e4\42\00\00\d6\42\00\00\ca\42\00\00\e4\42\00\00\e0\42\00\00\de\42\00\00\e6\42\00\00\e8\42\00\00\9a\42\00\00\ca\42\00\00\e6\42\00\00\e6\42\00\00\c2\42\00\00\ce\42\00\00\ca\42\00\00\c2\42\00\00\c8\42\00\00\c8\42\00\00\8a\42\00\00\ec\42\00\00\ca\42\00\00\dc\42\00\00\e8\42\00\00\98\42\00\00\d2\42\00\00\e6\42\00\00\e8\42\00\00\ca\42\00\00\dc\42\00\00\ca\42\00\00\e4\42\00\00\a0\42\00\00\e4\42\00\00\de\42\00\00\da\42\00\00\d2\42\00\00\e6\42\00\00\ca\42\00\00\e8\42\00\00\d0\42\00\00\ca\42\00\00\dc\42\00\00\aa\42\00\00\d2\42\00\00\dc\42\00\00\e8\42\00\00\60\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\00\84\42\00\00\d8\42\00\00\de\42\00\00\c4\42\00\00\9a\42\00\00\ca\42\00\00\da\42\00\00\de\42\00\00\e4\42\00\00\f2\42\00\00\20\41\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\c2\42\00\00\c8\42\00\00\c8\42\00\00\8a\42\00\00\ec\42\00\00\ca\42\00\00\dc\42\00\00\e8\42\00\00\98\42\00\00\d2\42\00\00\e6\42\00\00\e8\42\00\00\ca\42\00\00\dc\42\00\00\ca\42\00\00\e4\42\00\00\20\42\00\00\00\42\00\00\20\41\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\c2\42\00\00\c8\42\00\00\c8\42\00\00\8a\42\00\00\ec\42\00\00\ca\42\00\00\dc\42\00\00\e8\42\00\00\98\42\00\00\d2\42\00\00\e6\42\00\00\e8\42\00\00\ca\42\00\00\dc\42\00\00\ca\42\00\00\e4\42\00\00\20\42\00\00\00\42\00\00\b8\42\00\00\08\42\00\00\da\42\00\00\ca\42\00\00\e6\42\00\00\e6\42\00\00\c2\42\00\00\ce\42\00\00\ca\42\00\00\b8\42\00\00\08\42\00\00\30\42\00\00\00\42\00\00\ca\42\00\00\00\42\00\00\74\42\00\00\78\42\00\00\20\41\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\ae\42\00\00\ca\42\00\00\c4\42\00\00\82\42\00\00\e6\42\00\00\e6\42\00\00\ca\42\00\00\da\42\00\00\c4\42\00\00\d8\42\00\00\f2\42\00\00\38\42\00\00\d2\42\00\00\dc\42\00\00\e6\42\00\00\e8\42\00\00\c2\42\00\00\dc\42\00\00\e8\42\00\00\d2\42\00\00\c2\42\00\00\e8\42\00\00\ca\42\00\00\20\42\00\00\ca\42\00\00\38\42\00\00\c8\42\00\00\c2\42\00\00\e8\42\00\00\c2\42\00\00\38\42\00\00\da\42\00\00\de\42\00\00\c8\42\00\00\ea\42\00\00\d8\42\00\00\ca\42\00\00\30\42\00\00\00\42\00\00\9e\42\00\00\c4\42\00\00\d4\42\00\00\ca\42\00\00\c6\42\00\00\e8\42\00\00\38\42\00\00\c2\42\00\00\e6\42\00\00\e6\42\00\00\d2\42\00\00\ce\42\00\00\dc\42\00\00\20\42\00\00\00\42\00\00\e6\42\00\00\ca\42\00\00\d8\42\00\00\cc\42\00\00\30\42\00\00\00\42\00\00\ca\42\00\00\38\42\00\00\c8\42\00\00\c2\42\00\00\e8\42\00\00\c2\42\00\00\00\42\00\00\24\42\00\00\24\42\00\00\30\42\00\00\20\41\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\f6\42\00\00\00\42\00\00\de\42\00\00\dc\42\00\00\c6\42\00\00\ca\42\00\00\68\42\00\00\00\42\00\00\e8\42\00\00\e4\42\00\00\ea\42\00\00\ca\42\00\00\00\42\00\00\fa\42\00\00\24\42\00\00\20\41\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\c2\42\00\00\c8\42\00\00\c8\42\00\00\8a\42\00\00\ec\42\00\00\ca\42\00\00\dc\42\00\00\e8\42\00\00\98\42\00\00\d2\42\00\00\e6\42\00\00\e8\42\00\00\ca\42\00\00\dc\42\00\00\ca\42\00\00\e4\42\00\00\20\42\00\00\00\42\00\00\1c\42\00\00\da\42\00\00\ca\42\00\00\e6\42\00\00\e6\42\00\00\c2\42\00\00\ce\42\00\00\ca\42\00\00\1c\42\00\00\30\42\00\00\00\42\00\00\ca\42\00\00\00\42\00\00\74\42\00\00\78\42\00\00\20\41\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\ae\42\00\00\ca\42\00\00\c4\42\00\00\82\42\00\00\e6\42\00\00\e6\42\00\00\ca\42\00\00\da\42\00\00\c4\42\00\00\d8\42\00\00\f2\42\00\00\38\42\00\00\d2\42\00\00\dc\42\00\00\e6\42\00\00\e8\42\00\00\c2\42\00\00\dc\42\00\00\e8\42\00\00\d2\42\00\00\c2\42\00\00\e8\42\00\00\ca\42\00\00\20\42\00\00\ca\42\00\00\38\42\00\00\c8\42\00\00\c2\42\00\00\e8\42\00\00\c2\42\00\00\38\42\00\00\da\42\00\00\de\42\00\00\c8\42\00\00\ea\42\00\00\d8\42\00\00\ca\42\00\00\30\42\00\00\00\42\00\00\9e\42\00\00\c4\42\00\00\d4\42\00\00\ca\42\00\00\c6\42\00\00\e8\42\00\00\38\42\00\00\c2\42\00\00\e6\42\00\00\e6\42\00\00\d2\42\00\00\ce\42\00\00\dc\42\00\00\20\42\00\00\00\42\00\00\e6\42\00\00\ca\42\00\00\d8\42\00\00\cc\42\00\00\30\42\00\00\00\42\00\00\ca\42\00\00\38\42\00\00\c8\42\00\00\c2\42\00\00\e8\42\00\00\c2\42\00\00\00\42\00\00\24\42\00\00\24\42\00\00\30\42\00\00\20\41\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\f6\42\00\00\00\42\00\00\de\42\00\00\dc\42\00\00\c6\42\00\00\ca\42\00\00\68\42\00\00\00\42\00\00\e8\42\00\00\e4\42\00\00\ea\42\00\00\ca\42\00\00\00\42\00\00\fa\42\00\00\24\42\00\00\20\41\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\e6\42\00\00\ca\42\00\00\d8\42\00\00\cc\42\00\00\38\42\00\00\c2\42\00\00\c8\42\00\00\c8\42\00\00\8a\42\00\00\ec\42\00\00\ca\42\00\00\dc\42\00\00\e8\42\00\00\98\42\00\00\d2\42\00\00\e6\42\00\00\e8\42\00\00\ca\42\00\00\dc\42\00\00\ca\42\00\00\e4\42\00\00\20\42\00\00\00\42\00\00\1c\42\00\00\da\42\00\00\ca\42\00\00\e6\42\00\00\e6\42\00\00\c2\42\00\00\ce\42\00\00\ca\42\00\00\1c\42\00\00\30\42\00\00\00\42\00\00\ca\42\00\00\00\42\00\00\74\42\00\00\78\42\00\00\20\41\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\ae\42\00\00\ca\42\00\00\c4\42\00\00\82\42\00\00\e6\42\00\00\e6\42\00\00\ca\42\00\00\da\42\00\00\c4\42\00\00\d8\42\00\00\f2\42\00\00\38\42\00\00\d2\42\00\00\dc\42\00\00\e6\42\00\00\e8\42\00\00\c2\42\00\00\dc\42\00\00\e8\42\00\00\d2\42\00\00\c2\42\00\00\e8\42\00\00\ca\42\00\00\20\42\00\00\ca\42\00\00\38\42\00\00\c8\42\00\00\c2\42\00\00\e8\42\00\00\c2\42\00\00\38\42\00\00\da\42\00\00\de\42\00\00\c8\42\00\00\ea\42\00\00\d8\42\00\00\ca\42\00\00\30\42\00\00\00\42\00\00\9e\42\00\00\c4\42\00\00\d4\42\00\00\ca\42\00\00\c6\42\00\00\e8\42\00\00\38\42\00\00\c2\42\00\00\e6\42\00\00\e6\42\00\00\d2\42\00\00\ce\42\00\00\dc\42\00\00\20\42\00\00\00\42\00\00\e6\42\00\00\ca\42\00\00\d8\42\00\00\cc\42\00\00\30\42\00\00\00\42\00\00\ca\42\00\00\38\42\00\00\c8\42\00\00\c2\42\00\00\e8\42\00\00\c2\42\00\00\00\42\00\00\24\42\00\00\24\42\00\00\30\42\00\00\20\41\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\f6\42\00\00\00\42\00\00\de\42\00\00\dc\42\00\00\c6\42\00\00\ca\42\00\00\68\42\00\00\00\42\00\00\e8\42\00\00\e4\42\00\00\ea\42\00\00\ca\42\00\00\00\42\00\00\fa\42\00\00\24\42\00\00\20\41\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\c2\42\00\00\c8\42\00\00\c8\42\00\00\8a\42\00\00\ec\42\00\00\ca\42\00\00\dc\42\00\00\e8\42\00\00\98\42\00\00\d2\42\00\00\e6\42\00\00\e8\42\00\00\ca\42\00\00\dc\42\00\00\ca\42\00\00\e4\42\00\00\20\42\00\00\00\42\00\00\1c\42\00\00\da\42\00\00\ca\42\00\00\e6\42\00\00\e6\42\00\00\c2\42\00\00\ce\42\00\00\ca\42\00\00\1c\42\00\00\30\42\00\00\00\42\00\00\ca\42\00\00\00\42\00\00\74\42\00\00\78\42\00\00\20\41\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\ae\42\00\00\ca\42\00\00\c4\42\00\00\82\42\00\00\e6\42\00\00\e6\42\00\00\ca\42\00\00\da\42\00\00\c4\42\00\00\d8\42\00\00\f2\42\00\00\38\42\00\00\d2\42\00\00\dc\42\00\00\e6\42\00\00\e8\42\00\00\c2\42\00\00\dc\42\00\00\e8\42\00\00\d2\42\00\00\c2\42\00\00\e8\42\00\00\ca\42\00\00\20\42\00\00\ca\42\00\00\38\42\00\00\c8\42\00\00\c2\42\00\00\e8\42\00\00\c2\42\00\00\38\42\00\00\da\42\00\00\de\42\00\00\c8\42\00\00\ea\42\00\00\d8\42\00\00\ca\42\00\00\30\42\00\00\00\42\00\00\9e\42\00\00\c4\42\00\00\d4\42\00\00\ca\42\00\00\c6\42\00\00\e8\42\00\00\38\42\00\00\c2\42\00\00\e6\42\00\00\e6\42\00\00\d2\42\00\00\ce\42\00\00\dc\42\00\00\20\42\00\00\e8\42\00\00\d0\42\00\00\d2\42\00\00\e6\42\00\00\30\42\00\00\00\42\00\00\ca\42\00\00\38\42\00\00\c8\42\00\00\c2\42\00\00\e8\42\00\00\c2\42\00\00\24\42\00\00\24\42\00\00\30\42\00\00\20\41\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\f6\42\00\00\00\42\00\00\de\42\00\00\dc\42\00\00\c6\42\00\00\ca\42\00\00\68\42\00\00\00\42\00\00\e8\42\00\00\e4\42\00\00\ea\42\00\00\ca\42\00\00\00\42\00\00\fa\42\00\00\24\42\00\00\20\41\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\c2\42\00\00\c8\42\00\00\c8\42\00\00\8a\42\00\00\ec\42\00\00\ca\42\00\00\dc\42\00\00\e8\42\00\00\98\42\00\00\d2\42\00\00\e6\42\00\00\e8\42\00\00\ca\42\00\00\dc\42\00\00\ca\42\00\00\e4\42\00\00\20\42\00\00\00\42\00\00\1c\42\00\00\da\42\00\00\ca\42\00\00\e6\42\00\00\e6\42\00\00\c2\42\00\00\ce\42\00\00\ca\42\00\00\1c\42\00\00\30\42\00\00\00\42\00\00\20\42\00\00\f6\42\00\00\00\42\00\00\c8\42\00\00\c2\42\00\00\e8\42\00\00\c2\42\00\00\68\42\00\00\00\42\00\00\ca\42\00\00\00\42\00\00\fa\42\00\00\24\42\00\00\00\42\00\00\74\42\00\00\78\42\00\00\20\41\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\ae\42\00\00\ca\42\00\00\c4\42\00\00\82\42\00\00\e6\42\00\00\e6\42\00\00\ca\42\00\00\da\42\00\00\c4\42\00\00\d8\42\00\00\f2\42\00\00\38\42\00\00\d2\42\00\00\dc\42\00\00\e6\42\00\00\e8\42\00\00\c2\42\00\00\dc\42\00\00\e8\42\00\00\d2\42\00\00\c2\42\00\00\e8\42\00\00\ca\42\00\00\20\42\00\00\ca\42\00\00\38\42\00\00\da\42\00\00\de\42\00\00\c8\42\00\00\ea\42\00\00\d8\42\00\00\ca\42\00\00\30\42\00\00\00\42\00\00\9e\42\00\00\c4\42\00\00\d4\42\00\00\ca\42\00\00\c6\42\00\00\e8\42\00\00\38\42\00\00\c2\42\00\00\e6\42\00\00\e6\42\00\00\d2\42\00\00\ce\42\00\00\dc\42\00\00\20\42\00\00\e8\42\00\00\d0\42\00\00\d2\42\00\00\e6\42\00\00\30\42\00\00\00\42\00\00\ca\42\00\00\24\42\00\00\24\42\00\00\30\42\00\00\20\41\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\f6\42\00\00\00\42\00\00\de\42\00\00\dc\42\00\00\c6\42\00\00\ca\42\00\00\68\42\00\00\00\42\00\00\e8\42\00\00\e4\42\00\00\ea\42\00\00\ca\42\00\00\00\42\00\00\fa\42\00\00\24\42")
)