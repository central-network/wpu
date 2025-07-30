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
   
	(import "Reflect" "set" (func $self.Reflect.set<refx2.i32> (param externref externref i32)))
	(import "Reflect" "get" (func $self.Reflect.get<refx2>ref (param externref externref) (result externref)))
	(import "self" "Symbol" (func $self.Symbol<ref>ref (param externref) (result externref)))
	(import "Reflect" "construct" (func $self.Reflect.construct<refx2>ref (param externref externref) (result externref)))
	(import "Array" "of" (func $self.Array.of<>ref  (result externref)))
	(import "Object" "fromEntries" (func $self.Object.fromEntries<ref>ref (param externref) (result externref)))
	(import "Array" "of" (func $self.Array.of<refx3>ref (param externref externref externref) (result externref)))
	(import "Array" "of" (func $self.Array.of<refx2>ref (param externref externref) (result externref)))
	(import "console" "warn" (func $self.console.warn<ref> (param externref)))
	(import "console" "warn" (func $self.console.warn<refx2> (param externref externref)))
	(import "Reflect" "get" (func $self.Reflect.get<refx2>i32 (param externref externref) (result i32)))
	(import "console" "warn" (func $self.console.warn<refx4.i32x2> (param externref externref externref externref i32 i32)))
	(import "Reflect" "apply" (func $self.Reflect.apply<refx3> (param externref externref externref)))
	(import "Array" "of" (func $self.Array.of<ref>ref (param externref) (result externref)))
	(import "console" "error" (func $self.console.error<ref> (param externref)))
	(import "Array" "of" (func $self.Array.of<ref.i32x2>ref (param externref i32 i32) (result externref)))
	(import "Reflect" "apply" (func $self.Reflect.apply<refx3>ref (param externref externref externref) (result externref)))
	(import "Array" "of" (func $self.Array.of<ref.fun.ref>ref (param externref funcref externref) (result externref)))
	(import "Array" "of" (func $self.Array.of<ref.i32>ref (param externref i32) (result externref)))
	(import "Array" "of" (func $self.Array.of<i32>ref (param i32) (result externref)))
	(import "Reflect" "set" (func $self.Reflect.set<ref.i32x2> (param externref i32 i32)))
	(import "Array" "of" (func $self.Array.of<fun>ref (param funcref) (result externref)))
	(import "URL" "createObjectURL" (func $self.URL.createObjectURL<ref>ref (param externref) (result externref)))
	(import "Reflect" "set" (func $self.Reflect.set<refx3> (param externref externref externref)))
	 

    
    (memory $memory 10 10)
    
    (type $calc_any 
    (func 
        (param $source externref) 
        (param $value externref) 
        (param $begin i32) 
        (param $length i32) 
        (result externref)
    ))

    (global $self.WebAssembly.compile (mut externref) ref.null extern)
    (global $self.navigator.hardwareConcurrency (mut i32) (i32.const 0))
    (global $self.Event:target/get (mut externref) ref.null extern)
    (global $self.MessageEvent:data/get (mut externref) ref.null extern)
    (global $self.Uint8Array:set (mut externref) ref.null extern)
    (global $self.Worker:postMessage (mut externref) ref.null extern)
    (global $self.Worker:addEventListener (mut externref) ref.null extern)
    
    (global $cpu<Memory>        (mut externref) ref.null extern)
    (global $cpu<Buffer>        (mut externref) ref.null extern)
    (global $cpu<Uint8Array>    (mut externref) ref.null extern)
    (global $cpu<Module>        (mut externref) ref.null extern)
    (global $cpu<URL>           (mut externref) ref.null extern)
    (global $cpu<Imports>       (mut externref) ref.null extern)
    (global $threads            (mut externref) ref.null extern)
    (global $kType              (mut externref) ref.null extern)

    (export "imports" (global $cpu<Imports>))
    (export "threads" (global $threads))

    (global $TYPE_ARRAYBUFFER           i32 (i32.const 1))
    (global $TYPE_SHAREDARRAYBUFFER     i32 (i32.const 2))
    (global $TYPE_DATAVIEW              i32 (i32.const 3))
    (global $TYPE_UINT8ARRAY            i32 (i32.const 4))
    (global $TYPE_UINT16ARRAY           i32 (i32.const 5))
    (global $TYPE_UINT32ARRAY           i32 (i32.const 6))
    (global $TYPE_BIGUINT64ARRAY        i32 (i32.const 7))
    (global $TYPE_INT8ARRAY             i32 (i32.const 8))
    (global $TYPE_INT16ARRAY            i32 (i32.const 9))
    (global $TYPE_INT32ARRAY            i32 (i32.const 10))
    (global $TYPE_BIGINT64ARRAY         i32 (i32.const 11))
    (global $TYPE_FLOAT32ARRAY          i32 (i32.const 12))
    (global $TYPE_FLOAT64ARRAY          i32 (i32.const 13))
    (global $TYPE_UINT8ARRAYCLAMPED     i32 (i32.const 14))
    (global $TYPE_ARRAY                 i32 (i32.const 15))
    (global $TYPE_OBJECT                i32 (i32.const 16))
    (global $TYPE_NUMBER                i32 (i32.const 17))
    (global $TYPE_STRING                i32 (i32.const 18))
    (global $TYPE_BOOLEAN               i32 (i32.const 19))
    (global $TYPE_WORKER                i32 (i32.const 20))
    (global $TYPE_WEBSOCKET             i32 (i32.const 21))

    (global $WORKERJS_SCRIPT (mut externref) ref.null extern)

    (global $TEXT_PROMISE           (mut externref) ref.null extern)
    (global $TEXT_RESOLVE           (mut externref) ref.null extern)
    (global $TEXT_LENGTH            (mut externref) ref.null extern)
    (global $TEXT_BUFFER            (mut externref) ref.null extern)
    (global $TEXT_BYTEOFFSET        (mut externref) ref.null extern)
    (global $TEXT_BYTELENGTH        (mut externref) ref.null extern)
    (global $TEXT_BYTES_PER_ELEMENT (mut externref) ref.null extern)

    (func $defineSymbol<ref.i32>
        (param $constructorName externref)
        (param $kType i32)

        (call $self.Reflect.set<refx2.i32>  
            (call $self.Reflect.get<refx2>ref  
                (call $self.Reflect.get<refx2>ref  (global.get $wat4wasm/self) (local.get 0)) 
                (table.get $extern (i32.const 1))
            ) 
            (global.get $kType) (local.get $kType)
        )

    )

    (func $setupSymbol
        (global.set $kType (call $self.Symbol<ref>ref (table.get $extern (i32.const 2))))

        (call $defineSymbol<ref.i32> (table.get $extern (i32.const 3)) (global.get $TYPE_ARRAYBUFFER))
        (call $defineSymbol<ref.i32> (table.get $extern (i32.const 4)) (global.get $TYPE_DATAVIEW))
        (call $defineSymbol<ref.i32> (table.get $extern (i32.const 5)) (global.get $TYPE_UINT8ARRAY))
        (call $defineSymbol<ref.i32> (table.get $extern (i32.const 6)) (global.get $TYPE_UINT16ARRAY))
        (call $defineSymbol<ref.i32> (table.get $extern (i32.const 7)) (global.get $TYPE_UINT32ARRAY))
        (call $defineSymbol<ref.i32> (table.get $extern (i32.const 8)) (global.get $TYPE_BIGUINT64ARRAY))
        (call $defineSymbol<ref.i32> (table.get $extern (i32.const 9)) (global.get $TYPE_INT8ARRAY))
        (call $defineSymbol<ref.i32> (table.get $extern (i32.const 10)) (global.get $TYPE_INT16ARRAY))
        (call $defineSymbol<ref.i32> (table.get $extern (i32.const 11)) (global.get $TYPE_INT32ARRAY))
        (call $defineSymbol<ref.i32> (table.get $extern (i32.const 12)) (global.get $TYPE_BIGINT64ARRAY))
        (call $defineSymbol<ref.i32> (table.get $extern (i32.const 13)) (global.get $TYPE_FLOAT32ARRAY))
        (call $defineSymbol<ref.i32> (table.get $extern (i32.const 14)) (global.get $TYPE_FLOAT64ARRAY))
        (call $defineSymbol<ref.i32> (table.get $extern (i32.const 15)) (global.get $TYPE_UINT8ARRAYCLAMPED))
        (call $defineSymbol<ref.i32> (table.get $extern (i32.const 16)) (global.get $TYPE_ARRAY))

        (table.set $calc_add (global.get $TYPE_FLOAT32ARRAY) (ref.func $f32_add))
    )

    (func $setupThreading
        (global.set $threads (call $self.Reflect.construct<refx2>ref 
            (global.get $self.Array)  (call $self.Array.of<>ref)))

        (global.set $cpu<Imports>
            (call $self.Object.fromEntries<ref>ref 
                (call $self.Array.of<refx3>ref 
                    (call $self.Array.of<refx2>ref (table.get $extern (i32.const 17)) (ref.null extern))
                    (call $self.Array.of<refx2>ref (table.get $extern (i32.const 18)) (ref.null extern))
                    (call $self.Array.of<refx2>ref (table.get $extern (i32.const 19)) (ref.null extern))
                )
            )
        )

        (call $compile_cpu_module )
    )

    (start $main) (func $main
        (table.set $extern (i32.const 1) (call $wat4wasm/text (i32.const 0) (i32.const 36)))
		(table.set $extern (i32.const 2) (call $wat4wasm/text (i32.const 36) (i32.const 12)))
		(table.set $extern (i32.const 3) (call $wat4wasm/text (i32.const 48) (i32.const 44)))
		(table.set $extern (i32.const 4) (call $wat4wasm/text (i32.const 92) (i32.const 32)))
		(table.set $extern (i32.const 5) (call $wat4wasm/text (i32.const 124) (i32.const 40)))
		(table.set $extern (i32.const 6) (call $wat4wasm/text (i32.const 164) (i32.const 44)))
		(table.set $extern (i32.const 7) (call $wat4wasm/text (i32.const 208) (i32.const 44)))
		(table.set $extern (i32.const 8) (call $wat4wasm/text (i32.const 252) (i32.const 56)))
		(table.set $extern (i32.const 9) (call $wat4wasm/text (i32.const 308) (i32.const 36)))
		(table.set $extern (i32.const 10) (call $wat4wasm/text (i32.const 344) (i32.const 40)))
		(table.set $extern (i32.const 11) (call $wat4wasm/text (i32.const 384) (i32.const 40)))
		(table.set $extern (i32.const 12) (call $wat4wasm/text (i32.const 424) (i32.const 52)))
		(table.set $extern (i32.const 13) (call $wat4wasm/text (i32.const 476) (i32.const 48)))
		(table.set $extern (i32.const 14) (call $wat4wasm/text (i32.const 524) (i32.const 48)))
		(table.set $extern (i32.const 15) (call $wat4wasm/text (i32.const 572) (i32.const 68)))
		(table.set $extern (i32.const 16) (call $wat4wasm/text (i32.const 640) (i32.const 20)))
		(table.set $extern (i32.const 17) (call $wat4wasm/text (i32.const 660) (i32.const 24)))
		(table.set $extern (i32.const 18) (call $wat4wasm/text (i32.const 684) (i32.const 24)))
		(table.set $extern (i32.const 19) (call $wat4wasm/text (i32.const 708) (i32.const 24)))
		(table.set $extern (i32.const 20) (call $wat4wasm/text (i32.const 732) (i32.const 88)))
		(table.set $extern (i32.const 21) (call $wat4wasm/text (i32.const 820) (i32.const 28)))
		(table.set $extern (i32.const 22) (call $wat4wasm/text (i32.const 848) (i32.const 16)))
		(table.set $extern (i32.const 23) (call $wat4wasm/text (i32.const 864) (i32.const 28)))
		(table.set $extern (i32.const 24) (call $wat4wasm/text (i32.const 892) (i32.const 28)))
		(table.set $extern (i32.const 25) (call $wat4wasm/text (i32.const 920) (i32.const 24)))
		(table.set $extern (i32.const 26) (call $wat4wasm/text (i32.const 944) (i32.const 44)))
		(table.set $extern (i32.const 27) (call $wat4wasm/text (i32.const 988) (i32.const 28)))
		(table.set $extern (i32.const 28) (call $wat4wasm/text (i32.const 1016) (i32.const 36)))
		(table.set $extern (i32.const 29) (call $wat4wasm/text (i32.const 1052) (i32.const 76)))
		(table.set $extern (i32.const 30) (call $wat4wasm/text (i32.const 1128) (i32.const 20)))
		(table.set $extern (i32.const 31) (call $wat4wasm/text (i32.const 1148) (i32.const 24)))
		(table.set $extern (i32.const 32) (call $wat4wasm/text (i32.const 1172) (i32.const 12)))
		(table.set $extern (i32.const 33) (call $wat4wasm/text (i32.const 1184) (i32.const 48)))
		(table.set $extern (i32.const 34) (call $wat4wasm/text (i32.const 1232) (i32.const 16)))
		(table.set $extern (i32.const 35) (call $wat4wasm/text (i32.const 1248) (i32.const 12)))
		(table.set $extern (i32.const 36) (call $wat4wasm/text (i32.const 1260) (i32.const 24)))
		(table.set $extern (i32.const 37) (call $wat4wasm/text (i32.const 1284) (i32.const 44)))
		(table.set $extern (i32.const 38) (call $wat4wasm/text (i32.const 1328) (i32.const 64)))
		(table.set $extern (i32.const 39) (call $wat4wasm/text (i32.const 1392) (i32.const 28)))
		(table.set $extern (i32.const 40) (call $wat4wasm/text (i32.const 1420) (i32.const 16)))
		(table.set $extern (i32.const 41) (call $wat4wasm/text (i32.const 1436) (i32.const 16)))
		(table.set $extern (i32.const 42) (call $wat4wasm/text (i32.const 1452) (i32.const 24)))
		(table.set $extern (i32.const 43) (call $wat4wasm/text (i32.const 1476) (i32.const 52)))
		(table.set $extern (i32.const 44) (call $wat4wasm/text (i32.const 1528) (i32.const 548)))
		(table.set $extern (i32.const 45) (call $wat4wasm/text (i32.const 2076) (i32.const 28)))
		(table.set $extern (i32.const 46) (call $wat4wasm/text (i32.const 2104) (i32.const 28)))
		(table.set $extern (i32.const 47) (call $wat4wasm/text (i32.const 2132) (i32.const 24)))
		(table.set $extern (i32.const 48) (call $wat4wasm/text (i32.const 2156) (i32.const 40)))
		(table.set $extern (i32.const 49) (call $wat4wasm/text (i32.const 2196) (i32.const 40)))
		(table.set $extern (i32.const 50) (call $wat4wasm/text (i32.const 2236) (i32.const 68)))    
    
        
        (memory.fill (i32.const 0) (i32.const 0) (i32.const 2304))
            
    
        (global.set $WORKERJS_SCRIPT (table.get $extern (i32.const 44)))(global.set $TEXT_PROMISE           (table.get $extern (i32.const 45)))(global.set $TEXT_RESOLVE           (table.get $extern (i32.const 46)))(global.set $TEXT_LENGTH            (table.get $extern (i32.const 47)))(global.set $TEXT_BUFFER            (table.get $extern (i32.const 19)))(global.set $TEXT_BYTEOFFSET        (table.get $extern (i32.const 48)))(global.set $TEXT_BYTELENGTH        (table.get $extern (i32.const 49)))(global.set $TEXT_BYTES_PER_ELEMENT (table.get $extern (i32.const 50)))    
    
        
        (global.set $self.WebAssembly.compile
            (call $wat4wasm/Reflect.get<refx2>ref
                (call $wat4wasm/Reflect.get<refx2>ref 
                        (global.get $wat4wasm/self) 
                        (table.get $extern (i32.const 26)) 
                    )
                (table.get $extern (i32.const 27)) 
            )
        )
        
        (global.set $self.navigator.hardwareConcurrency
            (call $wat4wasm/Reflect.get<refx2>i32
                (call $wat4wasm/Reflect.get<refx2>ref 
                        (global.get $wat4wasm/self) 
                        (table.get $extern (i32.const 28)) 
                    )
                (table.get $extern (i32.const 29)) 
            )
        )
        
        (global.set $self.Event:target/get
            (call $wat4wasm/Reflect.get<refx2>ref
                (call $wat4wasm/Reflect.getOwnPropertyDescriptor<refx2>ref
                    (call $wat4wasm/Reflect.get<refx2>ref 
                            (call $wat4wasm/Reflect.get<refx2>ref 
                                (global.get $wat4wasm/self) 
                                (table.get $extern (i32.const 30)) 
                            ) 
                            (table.get $extern (i32.const 1)) 
                        )
                    (table.get $extern (i32.const 31)) 
                )
                (table.get $extern (i32.const 32)) 
            )
        )
        
        (global.set $self.MessageEvent:data/get
            (call $wat4wasm/Reflect.get<refx2>ref
                (call $wat4wasm/Reflect.getOwnPropertyDescriptor<refx2>ref
                    (call $wat4wasm/Reflect.get<refx2>ref 
                            (call $wat4wasm/Reflect.get<refx2>ref 
                                (global.get $wat4wasm/self) 
                                (table.get $extern (i32.const 33)) 
                            ) 
                            (table.get $extern (i32.const 1)) 
                        )
                    (table.get $extern (i32.const 34)) 
                )
                (table.get $extern (i32.const 32)) 
            )
        )
        
        (global.set $self.Uint8Array:set
            (call $wat4wasm/Reflect.get<refx2>ref
                (call $wat4wasm/Reflect.get<refx2>ref 
                            (call $wat4wasm/Reflect.get<refx2>ref 
                                (global.get $wat4wasm/self) 
                                (table.get $extern (i32.const 5)) 
                            ) 
                            (table.get $extern (i32.const 1)) 
                        )
                (table.get $extern (i32.const 35)) 
            )
        )
        
        (global.set $self.Worker:postMessage
            (call $wat4wasm/Reflect.get<refx2>ref
                (call $wat4wasm/Reflect.get<refx2>ref 
                            (call $wat4wasm/Reflect.get<refx2>ref 
                                (global.get $wat4wasm/self) 
                                (table.get $extern (i32.const 36)) 
                            ) 
                            (table.get $extern (i32.const 1)) 
                        )
                (table.get $extern (i32.const 37)) 
            )
        )
        
        (global.set $self.Worker:addEventListener
            (call $wat4wasm/Reflect.get<refx2>ref
                (call $wat4wasm/Reflect.get<refx2>ref 
                            (call $wat4wasm/Reflect.get<refx2>ref 
                                (global.get $wat4wasm/self) 
                                (table.get $extern (i32.const 36)) 
                            ) 
                            (table.get $extern (i32.const 1)) 
                        )
                (table.get $extern (i32.const 38)) 
            )
        )
        
        (global.set $self.MessageEvent.prototype.data/get
            (call $wat4wasm/Reflect.get<refx2>ref
                (call $wat4wasm/Reflect.getOwnPropertyDescriptor<refx2>ref
                    (call $wat4wasm/Reflect.get<refx2>ref 
                            (call $wat4wasm/Reflect.get<refx2>ref 
                                (global.get $wat4wasm/self) 
                                (table.get $extern (i32.const 33)) 
                            ) 
                            (table.get $extern (i32.const 1)) 
                        )
                    (table.get $extern (i32.const 34)) 
                )
                (table.get $extern (i32.const 32)) 
            )
        )
        
        (global.set $self.Promise.prototype.then
            (call $wat4wasm/Reflect.get<refx2>ref
                (call $wat4wasm/Reflect.get<refx2>ref 
                            (call $wat4wasm/Reflect.get<refx2>ref 
                                (global.get $wat4wasm/self) 
                                (table.get $extern (i32.const 39)) 
                            ) 
                            (table.get $extern (i32.const 1)) 
                        )
                (table.get $extern (i32.const 40)) 
            )
        )
        
        (global.set $self.Array
            (call $wat4wasm/Reflect.get<refx2>ref
                (global.get $wat4wasm/self)
                (table.get $extern (i32.const 16)) 
            )
        )
        
        (global.set $self.Uint8Array
            (call $wat4wasm/Reflect.get<refx2>ref
                (global.get $wat4wasm/self)
                (table.get $extern (i32.const 5)) 
            )
        )
        
        (global.set $self.Worker
            (call $wat4wasm/Reflect.get<refx2>ref
                (global.get $wat4wasm/self)
                (table.get $extern (i32.const 36)) 
            )
        )
        
        (global.set $self.Blob
            (call $wat4wasm/Reflect.get<refx2>ref
                (global.get $wat4wasm/self)
                (table.get $extern (i32.const 41)) 
            )
        )
        
        (global.set $self.WebAssembly.Memory
            (call $wat4wasm/Reflect.get<refx2>ref
                (call $wat4wasm/Reflect.get<refx2>ref 
                        (global.get $wat4wasm/self) 
                        (table.get $extern (i32.const 26)) 
                    )
                (table.get $extern (i32.const 42)) 
            )
        )
        
        (global.set $self.Promise
            (call $wat4wasm/Reflect.get<refx2>ref
                (global.get $wat4wasm/self)
                (table.get $extern (i32.const 39)) 
            )
        )
        
        (global.set $self.Promise.withResolvers
            (call $wat4wasm/Reflect.get<refx2>ref
                (call $wat4wasm/Reflect.get<refx2>ref 
                        (global.get $wat4wasm/self) 
                        (table.get $extern (i32.const 39)) 
                    )
                (table.get $extern (i32.const 43)) 
            )
        )
        
        (global.set $self.WebAssembly
            (call $wat4wasm/Reflect.get<refx2>ref
                (global.get $wat4wasm/self)
                (table.get $extern (i32.const 26)) 
            )
        )
            
     
        (call $setupSymbol )
        (call $setupThreading )
    )

    (func $onworkerready
        (param externref)
        (local $thread<Worker> externref)
        (local.set $thread<Worker> (call $Event:target (local.get 0)))

        (call $self.console.warn<ref> (global.get $threads))

        ;; (call $self.console.warn<refx2> 
        ;;     (local.get 0)
        ;;     (local.get $thread<Worker>)
        ;; )
    )

    (func $typeof
        (param $object externref)
        (result i32)
        (call $self.Reflect.get<refx2>i32  (local.get 0) (global.get $kType))
    )

    (table $calc_add 14 14 funcref)

    (func $lengthof
        (param $source externref)
        (param $length i32)
        (result i32)

        (if (local.get $length) 
            (then (return (local.get $length)))
        )

        (call $Object:length (local.get 0))
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

        (call $Promise.withResolvers )
        
        (local.set $promise)
        (local.set $resolve)

        (local.set $length (call $lengthof (local.get 0) (local.get 3)))
        (local.set $byteOffset (call $lengthof (local.get 0) (local.get 3)))

        (call $self.console.warn<refx4.i32x2>
            (local.get $promise)
            (local.get $resolve)
            (local.get 0)
            (local.get 1)
            (local.get 2)
            (local.get 3)
        )

        (call $self.Reflect.apply<refx3> 
            (global.get $self.Uint8Array:set)
            (global.get $cpu<Uint8Array>)
            (call $self.Array.of<ref>ref 
                (call $Object:Uint8Array 
                    (local.get 0)
                    (local.get $begin)
                    (local.get $length)
                )
            )
        )

        (call $self.console.warn<ref> (global.get $cpu<Uint8Array>))

        (local.get $promise)
    )


    (func $add (export "add") (type $calc_any)
        
        (local.get 0)
        (local.get 1)
        (local.get 2)
        (local.get 3)
        (call_indirect $calc_add (type $calc_any) 
            (call $typeof (local.get 0))
        )
    )

    (func $Object:length
        (param $any externref)
        (result i32)
        (call $self.Reflect.get<refx2>i32  (local.get 0) (global.get $TEXT_LENGTH))    
    )

    (func $Object:BYTES_PER_ELEMENT
        (param $any externref)
        (result i32)
        (call $self.Reflect.get<refx2>i32  (local.get 0) (global.get $TEXT_BYTES_PER_ELEMENT))    
    )

    (func $Object:buffer
        (param $any externref)
        (result externref)
        (call $self.Reflect.get<refx2>ref  (local.get 0) (global.get $TEXT_BUFFER))    
    )

    (func $Object:Uint8Array
        (param $any externref)
        (param $begin i32)
        (param $length i32)
        (result externref)

        (local $BYTES_PER_ELEMENT i32)
        (local.set $BYTES_PER_ELEMENT (call $Object:BYTES_PER_ELEMENT (local.get 0)))

        (if (i32.eqz (local.get $BYTES_PER_ELEMENT))
            (then (call $self.console.error<ref> (table.get $extern (i32.const 20))))
        )
        
        (call $self.Reflect.construct<refx2>ref 
            (global.get $self.Uint8Array) 
            (call $self.Array.of<ref.i32x2>ref 
            (call $Object:buffer (local.get 0))
            (i32.add 
                (call $Object:byteOffset (local.get 0))
                (i32.mul 
                    (local.get $begin)
                    (local.get $BYTES_PER_ELEMENT)
                )
            )
            (i32.mul 
                (local.get $length)
                (local.get $BYTES_PER_ELEMENT)
            )
        ))
    )

    (func $Object:byteOffset
        (param $any externref)
        (result i32)
        (call $self.Reflect.get<refx2>i32  (local.get 0) (global.get $TEXT_BYTEOFFSET))    
    )

    (func $Object:byteLength
        (param $any externref)
        (result i32)
        (call $self.Reflect.get<refx2>i32  (local.get 0) (global.get $TEXT_BYTELENGTH))    
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

    (func $Promise.withResolvers 
        (result externref externref)
        (local $withResolvers externref)
        (local.set $withResolvers (call $self.Reflect.apply<refx3>ref 
            (global.get $self.Promise.withResolvers) (global.get $self.Promise) (call $self.Array.of<>ref)))

        (call $self.Reflect.get<refx2>ref  (local.get 0) (global.get $TEXT_PROMISE))
        (call $self.Reflect.get<refx2>ref  (local.get 0) (global.get $TEXT_RESOLVE))
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
                (table.get $extern (i32.const 21)) 
                (ref.func $onworkerready)
                (call $self.Object.fromEntries<ref>ref 
                    (call $self.Array.of<ref>ref 
                        (call $self.Array.of<ref.i32>ref  
                            (table.get $extern (i32.const 22)) (i32.const 1)
                        )
                    )
                )
            )
        )
    )

    (func $eventLoop
        (call $fork )
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
    
    
    (global $cpu.wasm/byteLength i32 (i32.const 1581))
    (data $cpu.wasm/buffer "\00\61\73\6d\01\00\00\00\01\48\0d\60\00\01\6f\60\03\6f\7f\7f\00\60\02\6f\6f\01\6f\60\02\6f\6f\01\7f\60\02\6f\6f\01\7d\60\02\6f\6f\01\7e\60\02\6f\6f\01\7c\60\03\6f\6f\6f\01\6f\60\03\6f\6f\70\00\60\01\6f\01\6f\60\01\6f\00\60\00\00\60\02\7f\7f\01\6f\02\b6\02\13\04\73\65\6c\66\05\41\72\72\61\79\00\00\07\52\65\66\6c\65\63\74\03\73\65\74\00\01\07\52\65\66\6c\65\63\74\18\67\65\74\4f\77\6e\50\72\6f\70\65\72\74\79\44\65\73\63\72\69\70\74\6f\72\00\02\07\52\65\66\6c\65\63\74\03\67\65\74\00\02\07\52\65\66\6c\65\63\74\03\67\65\74\00\03\07\52\65\66\6c\65\63\74\03\67\65\74\00\04\07\52\65\66\6c\65\63\74\03\67\65\74\00\05\07\52\65\66\6c\65\63\74\03\67\65\74\00\06\07\52\65\66\6c\65\63\74\05\61\70\70\6c\79\00\07\04\73\65\6c\66\04\73\65\6c\66\03\6f\00\06\53\74\72\69\6e\67\0c\66\72\6f\6d\43\68\61\72\43\6f\64\65\03\6f\00\07\52\65\66\6c\65\63\74\03\73\65\74\00\08\07\52\65\66\6c\65\63\74\09\63\6f\6e\73\74\72\75\63\74\00\02\05\41\72\72\61\79\02\6f\66\00\09\04\73\65\6c\66\0b\70\6f\73\74\4d\65\73\73\61\67\65\00\0a\07\63\6f\6e\73\6f\6c\65\04\77\61\72\6e\00\0a\04\73\65\6c\66\06\6d\65\6d\6f\72\79\02\03\0a\0a\04\73\65\6c\66\06\6d\65\6d\6f\72\79\03\6f\00\04\73\65\6c\66\06\62\75\66\66\65\72\03\6f\00\03\04\03\0b\0a\0c\04\05\01\6f\01\07\07\06\10\03\6f\01\d0\6f\0b\6f\01\d0\6f\0b\6f\01\d0\6f\0b\08\01\0e\09\05\01\01\00\01\0f\0a\ce\01\03\8a\01\00\41\01\41\00\41\24\10\10\26\00\41\02\41\24\41\30\10\10\26\00\41\03\41\d4\00\41\24\10\10\26\00\41\04\41\f8\00\41\10\10\10\26\00\41\05\41\88\01\41\0c\10\10\26\00\41\06\41\94\01\41\28\10\10\26\00\41\00\41\00\41\bc\01\fc\0b\00\23\00\41\02\25\00\10\03\41\03\25\00\10\03\41\04\25\00\10\02\41\05\25\00\10\03\24\05\23\00\41\06\25\00\10\03\24\06\23\00\41\01\25\00\d2\0f\10\09\23\06\23\03\10\0b\10\0a\24\04\d0\6f\10\0c\0b\06\00\20\00\10\0d\0b\39\01\01\6f\20\01\45\04\40\d0\6f\0f\0b\10\00\21\02\03\40\20\01\41\04\6b\21\01\20\02\20\01\41\04\6e\20\00\20\01\6a\2a\02\00\a9\10\01\20\01\0d\00\0b\23\01\d0\6f\20\02\10\08\0b\0b\c3\01\01\00\41\00\0b\bc\01\00\00\de\42\00\00\dc\42\00\00\da\42\00\00\ca\42\00\00\e6\42\00\00\e6\42\00\00\c2\42\00\00\ce\42\00\00\ca\42\00\00\9a\42\00\00\ca\42\00\00\e6\42\00\00\e6\42\00\00\c2\42\00\00\ce\42\00\00\ca\42\00\00\8a\42\00\00\ec\42\00\00\ca\42\00\00\dc\42\00\00\e8\42\00\00\e0\42\00\00\e4\42\00\00\de\42\00\00\e8\42\00\00\de\42\00\00\e8\42\00\00\f2\42\00\00\e0\42\00\00\ca\42\00\00\c8\42\00\00\c2\42\00\00\e8\42\00\00\c2\42\00\00\ce\42\00\00\ca\42\00\00\e8\42\00\00\aa\42\00\00\d2\42\00\00\dc\42\00\00\e8\42\00\00\60\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\df\05\04\6e\61\6d\65\01\da\03\11\00\13\77\61\74\34\77\61\73\6d\2f\41\72\72\61\79\3c\3e\72\65\66\01\1f\77\61\74\34\77\61\73\6d\2f\52\65\66\6c\65\63\74\2e\73\65\74\3c\72\65\66\2e\69\33\32\78\32\3e\02\33\77\61\74\34\77\61\73\6d\2f\52\65\66\6c\65\63\74\2e\67\65\74\4f\77\6e\50\72\6f\70\65\72\74\79\44\65\73\63\72\69\70\74\6f\72\3c\72\65\66\78\32\3e\72\65\66\03\1e\77\61\74\34\77\61\73\6d\2f\52\65\66\6c\65\63\74\2e\67\65\74\3c\72\65\66\78\32\3e\72\65\66\04\1e\77\61\74\34\77\61\73\6d\2f\52\65\66\6c\65\63\74\2e\67\65\74\3c\72\65\66\78\32\3e\69\33\32\05\1e\77\61\74\34\77\61\73\6d\2f\52\65\66\6c\65\63\74\2e\67\65\74\3c\72\65\66\78\32\3e\66\33\32\06\1e\77\61\74\34\77\61\73\6d\2f\52\65\66\6c\65\63\74\2e\67\65\74\3c\72\65\66\78\32\3e\69\36\34\07\1e\77\61\74\34\77\61\73\6d\2f\52\65\66\6c\65\63\74\2e\67\65\74\3c\72\65\66\78\32\3e\66\36\34\08\20\77\61\74\34\77\61\73\6d\2f\52\65\66\6c\65\63\74\2e\61\70\70\6c\79\3c\72\65\66\78\33\3e\72\65\66\09\1d\73\65\6c\66\2e\52\65\66\6c\65\63\74\2e\73\65\74\3c\72\65\66\2e\72\65\66\2e\66\75\6e\3e\0a\20\73\65\6c\66\2e\52\65\66\6c\65\63\74\2e\63\6f\6e\73\74\72\75\63\74\3c\72\65\66\78\32\3e\72\65\66\0b\15\73\65\6c\66\2e\41\72\72\61\79\2e\6f\66\3c\72\65\66\3e\72\65\66\0c\15\73\65\6c\66\2e\70\6f\73\74\4d\65\73\73\61\67\65\3c\72\65\66\3e\0d\16\73\65\6c\66\2e\63\6f\6e\73\6f\6c\65\2e\77\61\72\6e\3c\72\65\66\3e\0e\04\6d\61\69\6e\0f\0e\73\65\6c\66\2e\6f\6e\6d\65\73\73\61\67\65\10\0d\77\61\74\34\77\61\73\6d\2f\74\65\78\74\02\41\11\00\00\01\00\02\00\03\00\04\00\05\00\06\00\07\00\08\00\09\00\0a\00\0b\00\0c\00\0d\00\0e\00\0f\01\00\05\65\76\65\6e\74\10\03\00\06\6f\66\66\73\65\74\01\06\6c\65\6e\67\74\68\02\05\61\72\72\61\79\05\09\01\00\06\65\78\74\65\72\6e\06\09\01\00\06\6d\65\6d\6f\72\79\07\8f\01\07\00\0d\77\61\74\34\77\61\73\6d\2f\73\65\6c\66\01\1c\77\61\74\34\77\61\73\6d\2f\53\74\72\69\6e\67\2e\66\72\6f\6d\43\68\61\72\43\6f\64\65\02\06\6d\65\6d\6f\72\79\03\0d\6d\65\6d\6f\72\79\2e\62\75\66\66\65\72\04\11\6d\65\6d\6f\72\79\2e\75\49\6e\74\38\41\72\72\61\79\05\24\73\65\6c\66\2e\4d\65\73\73\61\67\65\45\76\65\6e\74\2e\70\72\6f\74\6f\74\79\70\65\2e\64\61\74\61\2f\67\65\74\06\0f\73\65\6c\66\2e\55\69\6e\74\38\41\72\72\61\79\08\10\01\00\0d\77\61\74\34\77\61\73\6d\2f\72\65\66\73")
    

    (data $cpu.wasm "\00\00\00\00\0c\00\00\00\89\10\00\00\00\61\73\6d\01\00\00\00\01\48\0d\60\00\01\6f\60\03\6f\7f\7f\00\60\02\6f\6f\01\6f\60\02\6f\6f\01\7f\60\02\6f\6f\01\7d\60\02\6f\6f\01\7e\60\02\6f\6f\01\7c\60\03\6f\6f\6f\01\6f\60\03\6f\6f\70\00\60\01\6f\01\6f\60\01\6f\00\60\00\00\60\02\7f\7f\01\6f\02\b6\02\13\04\73\65\6c\66\05\41\72\72\61\79\00\00\07\52\65\66\6c\65\63\74\03\73\65\74\00\01\07\52\65\66\6c\65\63\74\18\67\65\74\4f\77\6e\50\72\6f\70\65\72\74\79\44\65\73\63\72\69\70\74\6f\72\00\02\07\52\65\66\6c\65\63\74\03\67\65\74\00\02\07\52\65\66\6c\65\63\74\03\67\65\74\00\03\07\52\65\66\6c\65\63\74\03\67\65\74\00\04\07\52\65\66\6c\65\63\74\03\67\65\74\00\05\07\52\65\66\6c\65\63\74\03\67\65\74\00\06\07\52\65\66\6c\65\63\74\05\61\70\70\6c\79\00\07\04\73\65\6c\66\04\73\65\6c\66\03\6f\00\06\53\74\72\69\6e\67\0c\66\72\6f\6d\43\68\61\72\43\6f\64\65\03\6f\00\07\52\65\66\6c\65\63\74\03\73\65\74\00\08\07\52\65\66\6c\65\63\74\09\63\6f\6e\73\74\72\75\63\74\00\02\05\41\72\72\61\79\02\6f\66\00\09\04\73\65\6c\66\0b\70\6f\73\74\4d\65\73\73\61\67\65\00\0a\07\63\6f\6e\73\6f\6c\65\04\77\61\72\6e\00\0a\04\73\65\6c\66\06\6d\65\6d\6f\72\79\02\03\0a\0a\04\73\65\6c\66\06\6d\65\6d\6f\72\79\03\6f\00\04\73\65\6c\66\06\62\75\66\66\65\72\03\6f\00\03\04\03\0b\0a\0c\04\05\01\6f\01\34\34\06\10\03\6f\01\d0\6f\0b\6f\01\d0\6f\0b\6f\01\d0\6f\0b\08\01\0e\09\05\01\01\00\01\0f\0a\c2\05\03\fe\04\00\41\01\41\00\41\24\10\10\26\00\41\02\41\24\41\0c\10\10\26\00\41\03\41\30\41\2c\10\10\26\00\41\04\41\dc\00\41\20\10\10\26\00\41\05\41\fc\00\41\28\10\10\26\00\41\06\41\a4\01\41\2c\10\10\26\00\41\07\41\d0\01\41\2c\10\10\26\00\41\08\41\fc\01\41\38\10\10\26\00\41\09\41\b4\02\41\24\10\10\26\00\41\0a\41\d8\02\41\28\10\10\26\00\41\0b\41\80\03\41\28\10\10\26\00\41\0c\41\a8\03\41\34\10\10\26\00\41\0d\41\dc\03\41\30\10\10\26\00\41\0e\41\8c\04\41\30\10\10\26\00\41\0f\41\bc\04\41\c4\00\10\10\26\00\41\10\41\80\05\41\14\10\10\26\00\41\11\41\94\05\41\18\10\10\26\00\41\12\41\ac\05\41\18\10\10\26\00\41\13\41\c4\05\41\18\10\10\26\00\41\14\41\dc\05\41\d8\00\10\10\26\00\41\15\41\b4\06\41\1c\10\10\26\00\41\16\41\d0\06\41\10\10\10\26\00\41\17\41\e0\06\41\1c\10\10\26\00\41\18\41\fc\06\41\1c\10\10\26\00\41\19\41\98\07\41\18\10\10\26\00\41\1a\41\b0\07\41\2c\10\10\26\00\41\1b\41\dc\07\41\1c\10\10\26\00\41\1c\41\f8\07\41\24\10\10\26\00\41\1d\41\9c\08\41\cc\00\10\10\26\00\41\1e\41\e8\08\41\14\10\10\26\00\41\1f\41\fc\08\41\18\10\10\26\00\41\20\41\94\09\41\0c\10\10\26\00\41\21\41\a0\09\41\30\10\10\26\00\41\22\41\d0\09\41\10\10\10\26\00\41\23\41\e0\09\41\0c\10\10\26\00\41\24\41\ec\09\41\18\10\10\26\00\41\25\41\84\0a\41\2c\10\10\26\00\41\26\41\b0\0a\41\c0\00\10\10\26\00\41\27\41\f0\0a\41\1c\10\10\26\00\41\28\41\8c\0b\41\10\10\10\26\00\41\29\41\9c\0b\41\10\10\10\26\00\41\2a\41\ac\0b\41\18\10\10\26\00\41\2b\41\c4\0b\41\34\10\10\26\00\41\2c\41\f8\0b\41\a4\04\10\10\26\00\41\2d\41\9c\10\41\1c\10\10\26\00\41\2e\41\b8\10\41\1c\10\10\26\00\41\2f\41\d4\10\41\18\10\10\26\00\41\30\41\ec\10\41\28\10\10\26\00\41\31\41\94\11\41\28\10\10\26\00\41\32\41\bc\11\41\c4\00\10\10\26\00\41\33\41\80\12\41\24\10\10\26\00\41\00\41\00\41\a4\12\fc\0b\00\23\00\41\21\25\00\10\03\41\01\25\00\10\03\41\22\25\00\10\02\41\20\25\00\10\03\24\05\23\00\41\05\25\00\10\03\24\06\23\00\41\33\25\00\d2\0f\10\09\23\06\23\03\10\0b\10\0a\24\04\d0\6f\10\0c\0b\06\00\20\00\10\0d\0b\39\01\01\6f\20\01\45\04\40\d0\6f\0f\0b\10\00\21\02\03\40\20\01\41\04\6b\21\01\20\02\20\01\41\04\6e\20\00\20\01\6a\2a\02\00\a9\10\01\20\01\0d\00\0b\23\01\d0\6f\20\02\10\08\0b\0b\ab\12\01\00\41\00\0b\a4\12\00\00\e0\42\00\00\e4\42\00\00\de\42\00\00\e8\42\00\00\de\42\00\00\e8\42\00\00\f2\42\00\00\e0\42\00\00\ca\42\00\00\ae\42\00\00\a0\42\00\00\aa\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\00\84\42\00\00\ea\42\00\00\cc\42\00\00\cc\42\00\00\ca\42\00\00\e4\42\00\00\88\42\00\00\c2\42\00\00\e8\42\00\00\c2\42\00\00\ac\42\00\00\d2\42\00\00\ca\42\00\00\ee\42\00\00\aa\42\00\00\d2\42\00\00\dc\42\00\00\e8\42\00\00\60\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\00\aa\42\00\00\d2\42\00\00\dc\42\00\00\e8\42\00\00\44\42\00\00\58\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\00\aa\42\00\00\d2\42\00\00\dc\42\00\00\e8\42\00\00\4c\42\00\00\48\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\00\84\42\00\00\d2\42\00\00\ce\42\00\00\aa\42\00\00\d2\42\00\00\dc\42\00\00\e8\42\00\00\58\42\00\00\50\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\00\92\42\00\00\dc\42\00\00\e8\42\00\00\60\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\00\92\42\00\00\dc\42\00\00\e8\42\00\00\44\42\00\00\58\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\00\92\42\00\00\dc\42\00\00\e8\42\00\00\4c\42\00\00\48\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\00\84\42\00\00\d2\42\00\00\ce\42\00\00\92\42\00\00\dc\42\00\00\e8\42\00\00\58\42\00\00\50\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\00\8c\42\00\00\d8\42\00\00\de\42\00\00\c2\42\00\00\e8\42\00\00\4c\42\00\00\48\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\00\8c\42\00\00\d8\42\00\00\de\42\00\00\c2\42\00\00\e8\42\00\00\58\42\00\00\50\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\00\aa\42\00\00\d2\42\00\00\dc\42\00\00\e8\42\00\00\60\42\00\00\86\42\00\00\d8\42\00\00\c2\42\00\00\da\42\00\00\e0\42\00\00\ca\42\00\00\c8\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\00\da\42\00\00\de\42\00\00\c8\42\00\00\ea\42\00\00\d8\42\00\00\ca\42\00\00\da\42\00\00\ca\42\00\00\da\42\00\00\de\42\00\00\e4\42\00\00\f2\42\00\00\c4\42\00\00\ea\42\00\00\cc\42\00\00\cc\42\00\00\ca\42\00\00\e4\42\00\00\b4\42\00\00\8a\42\00\00\a4\42\00\00\9e\42\00\00\be\42\00\00\84\42\00\00\b2\42\00\00\a8\42\00\00\8a\42\00\00\a6\42\00\00\be\42\00\00\a0\42\00\00\8a\42\00\00\a4\42\00\00\be\42\00\00\8a\42\00\00\98\42\00\00\8a\42\00\00\9a\42\00\00\8a\42\00\00\9c\42\00\00\a8\42\00\00\da\42\00\00\ca\42\00\00\e6\42\00\00\e6\42\00\00\c2\42\00\00\ce\42\00\00\ca\42\00\00\de\42\00\00\dc\42\00\00\c6\42\00\00\ca\42\00\00\d2\42\00\00\dc\42\00\00\d2\42\00\00\e8\42\00\00\d2\42\00\00\c2\42\00\00\d8\42\00\00\da\42\00\00\c2\42\00\00\f0\42\00\00\d2\42\00\00\da\42\00\00\ea\42\00\00\da\42\00\00\e6\42\00\00\d0\42\00\00\c2\42\00\00\e4\42\00\00\ca\42\00\00\c8\42\00\00\ae\42\00\00\ca\42\00\00\c4\42\00\00\82\42\00\00\e6\42\00\00\e6\42\00\00\ca\42\00\00\da\42\00\00\c4\42\00\00\d8\42\00\00\f2\42\00\00\c6\42\00\00\de\42\00\00\da\42\00\00\e0\42\00\00\d2\42\00\00\d8\42\00\00\ca\42\00\00\dc\42\00\00\c2\42\00\00\ec\42\00\00\d2\42\00\00\ce\42\00\00\c2\42\00\00\e8\42\00\00\de\42\00\00\e4\42\00\00\d0\42\00\00\c2\42\00\00\e4\42\00\00\c8\42\00\00\ee\42\00\00\c2\42\00\00\e4\42\00\00\ca\42\00\00\86\42\00\00\de\42\00\00\dc\42\00\00\c6\42\00\00\ea\42\00\00\e4\42\00\00\e4\42\00\00\ca\42\00\00\dc\42\00\00\c6\42\00\00\f2\42\00\00\8a\42\00\00\ec\42\00\00\ca\42\00\00\dc\42\00\00\e8\42\00\00\e8\42\00\00\c2\42\00\00\e4\42\00\00\ce\42\00\00\ca\42\00\00\e8\42\00\00\ce\42\00\00\ca\42\00\00\e8\42\00\00\9a\42\00\00\ca\42\00\00\e6\42\00\00\e6\42\00\00\c2\42\00\00\ce\42\00\00\ca\42\00\00\8a\42\00\00\ec\42\00\00\ca\42\00\00\dc\42\00\00\e8\42\00\00\c8\42\00\00\c2\42\00\00\e8\42\00\00\c2\42\00\00\e6\42\00\00\ca\42\00\00\e8\42\00\00\ae\42\00\00\de\42\00\00\e4\42\00\00\d6\42\00\00\ca\42\00\00\e4\42\00\00\e0\42\00\00\de\42\00\00\e6\42\00\00\e8\42\00\00\9a\42\00\00\ca\42\00\00\e6\42\00\00\e6\42\00\00\c2\42\00\00\ce\42\00\00\ca\42\00\00\c2\42\00\00\c8\42\00\00\c8\42\00\00\8a\42\00\00\ec\42\00\00\ca\42\00\00\dc\42\00\00\e8\42\00\00\98\42\00\00\d2\42\00\00\e6\42\00\00\e8\42\00\00\ca\42\00\00\dc\42\00\00\ca\42\00\00\e4\42\00\00\a0\42\00\00\e4\42\00\00\de\42\00\00\da\42\00\00\d2\42\00\00\e6\42\00\00\ca\42\00\00\e8\42\00\00\d0\42\00\00\ca\42\00\00\dc\42\00\00\84\42\00\00\d8\42\00\00\de\42\00\00\c4\42\00\00\9a\42\00\00\ca\42\00\00\da\42\00\00\de\42\00\00\e4\42\00\00\f2\42\00\00\ee\42\00\00\d2\42\00\00\e8\42\00\00\d0\42\00\00\a4\42\00\00\ca\42\00\00\e6\42\00\00\de\42\00\00\d8\42\00\00\ec\42\00\00\ca\42\00\00\e4\42\00\00\e6\42\00\00\20\41\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\c2\42\00\00\c8\42\00\00\c8\42\00\00\8a\42\00\00\ec\42\00\00\ca\42\00\00\dc\42\00\00\e8\42\00\00\98\42\00\00\d2\42\00\00\e6\42\00\00\e8\42\00\00\ca\42\00\00\dc\42\00\00\ca\42\00\00\e4\42\00\00\20\42\00\00\00\42\00\00\1c\42\00\00\da\42\00\00\ca\42\00\00\e6\42\00\00\e6\42\00\00\c2\42\00\00\ce\42\00\00\ca\42\00\00\1c\42\00\00\30\42\00\00\00\42\00\00\20\42\00\00\f6\42\00\00\00\42\00\00\c8\42\00\00\c2\42\00\00\e8\42\00\00\c2\42\00\00\68\42\00\00\00\42\00\00\ca\42\00\00\00\42\00\00\fa\42\00\00\24\42\00\00\00\42\00\00\74\42\00\00\78\42\00\00\20\41\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\ae\42\00\00\ca\42\00\00\c4\42\00\00\82\42\00\00\e6\42\00\00\e6\42\00\00\ca\42\00\00\da\42\00\00\c4\42\00\00\d8\42\00\00\f2\42\00\00\38\42\00\00\d2\42\00\00\dc\42\00\00\e6\42\00\00\e8\42\00\00\c2\42\00\00\dc\42\00\00\e8\42\00\00\d2\42\00\00\c2\42\00\00\e8\42\00\00\ca\42\00\00\20\42\00\00\ca\42\00\00\38\42\00\00\da\42\00\00\de\42\00\00\c8\42\00\00\ea\42\00\00\d8\42\00\00\ca\42\00\00\30\42\00\00\00\42\00\00\9e\42\00\00\c4\42\00\00\d4\42\00\00\ca\42\00\00\c6\42\00\00\e8\42\00\00\38\42\00\00\c2\42\00\00\e6\42\00\00\e6\42\00\00\d2\42\00\00\ce\42\00\00\dc\42\00\00\20\42\00\00\e8\42\00\00\d0\42\00\00\d2\42\00\00\e6\42\00\00\30\42\00\00\00\42\00\00\ca\42\00\00\24\42\00\00\24\42\00\00\30\42\00\00\20\41\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\f6\42\00\00\00\42\00\00\de\42\00\00\dc\42\00\00\c6\42\00\00\ca\42\00\00\68\42\00\00\00\42\00\00\e8\42\00\00\e4\42\00\00\ea\42\00\00\ca\42\00\00\00\42\00\00\fa\42\00\00\24\42\00\00\e0\42\00\00\e4\42\00\00\de\42\00\00\da\42\00\00\d2\42\00\00\e6\42\00\00\ca\42\00\00\e4\42\00\00\ca\42\00\00\e6\42\00\00\de\42\00\00\d8\42\00\00\ec\42\00\00\ca\42\00\00\d8\42\00\00\ca\42\00\00\dc\42\00\00\ce\42\00\00\e8\42\00\00\d0\42\00\00\c4\42\00\00\f2\42\00\00\e8\42\00\00\ca\42\00\00\9e\42\00\00\cc\42\00\00\cc\42\00\00\e6\42\00\00\ca\42\00\00\e8\42\00\00\c4\42\00\00\f2\42\00\00\e8\42\00\00\ca\42\00\00\98\42\00\00\ca\42\00\00\dc\42\00\00\ce\42\00\00\e8\42\00\00\d0\42\00\00\84\42\00\00\b2\42\00\00\a8\42\00\00\8a\42\00\00\a6\42\00\00\be\42\00\00\a0\42\00\00\8a\42\00\00\a4\42\00\00\be\42\00\00\8a\42\00\00\98\42\00\00\8a\42\00\00\9a\42\00\00\8a\42\00\00\9c\42\00\00\a8\42\00\00\de\42\00\00\dc\42\00\00\da\42\00\00\ca\42\00\00\e6\42\00\00\e6\42\00\00\c2\42\00\00\ce\42\00\00\ca\42\00\df\05\04\6e\61\6d\65\01\da\03\11\00\13\77\61\74\34\77\61\73\6d\2f\41\72\72\61\79\3c\3e\72\65\66\01\1f\77\61\74\34\77\61\73\6d\2f\52\65\66\6c\65\63\74\2e\73\65\74\3c\72\65\66\2e\69\33\32\78\32\3e\02\33\77\61\74\34\77\61\73\6d\2f\52\65\66\6c\65\63\74\2e\67\65\74\4f\77\6e\50\72\6f\70\65\72\74\79\44\65\73\63\72\69\70\74\6f\72\3c\72\65\66\78\32\3e\72\65\66\03\1e\77\61\74\34\77\61\73\6d\2f\52\65\66\6c\65\63\74\2e\67\65\74\3c\72\65\66\78\32\3e\72\65\66\04\1e\77\61\74\34\77\61\73\6d\2f\52\65\66\6c\65\63\74\2e\67\65\74\3c\72\65\66\78\32\3e\69\33\32\05\1e\77\61\74\34\77\61\73\6d\2f\52\65\66\6c\65\63\74\2e\67\65\74\3c\72\65\66\78\32\3e\66\33\32\06\1e\77\61\74\34\77\61\73\6d\2f\52\65\66\6c\65\63\74\2e\67\65\74\3c\72\65\66\78\32\3e\69\36\34\07\1e\77\61\74\34\77\61\73\6d\2f\52\65\66\6c\65\63\74\2e\67\65\74\3c\72\65\66\78\32\3e\66\36\34\08\20\77\61\74\34\77\61\73\6d\2f\52\65\66\6c\65\63\74\2e\61\70\70\6c\79\3c\72\65\66\78\33\3e\72\65\66\09\1d\73\65\6c\66\2e\52\65\66\6c\65\63\74\2e\73\65\74\3c\72\65\66\2e\72\65\66\2e\66\75\6e\3e\0a\20\73\65\6c\66\2e\52\65\66\6c\65\63\74\2e\63\6f\6e\73\74\72\75\63\74\3c\72\65\66\78\32\3e\72\65\66\0b\15\73\65\6c\66\2e\41\72\72\61\79\2e\6f\66\3c\72\65\66\3e\72\65\66\0c\15\73\65\6c\66\2e\70\6f\73\74\4d\65\73\73\61\67\65\3c\72\65\66\3e\0d\16\73\65\6c\66\2e\63\6f\6e\73\6f\6c\65\2e\77\61\72\6e\3c\72\65\66\3e\0e\04\6d\61\69\6e\0f\0e\73\65\6c\66\2e\6f\6e\6d\65\73\73\61\67\65\10\0d\77\61\74\34\77\61\73\6d\2f\74\65\78\74\02\41\11\00\00\01\00\02\00\03\00\04\00\05\00\06\00\07\00\08\00\09\00\0a\00\0b\00\0c\00\0d\00\0e\00\0f\01\00\05\65\76\65\6e\74\10\03\00\06\6f\66\66\73\65\74\01\06\6c\65\6e\67\74\68\02\05\61\72\72\61\79\05\09\01\00\06\65\78\74\65\72\6e\06\09\01\00\06\6d\65\6d\6f\72\79\07\8f\01\07\00\0d\77\61\74\34\77\61\73\6d\2f\73\65\6c\66\01\1c\77\61\74\34\77\61\73\6d\2f\53\74\72\69\6e\67\2e\66\72\6f\6d\43\68\61\72\43\6f\64\65\02\06\6d\65\6d\6f\72\79\03\0d\6d\65\6d\6f\72\79\2e\62\75\66\66\65\72\04\11\6d\65\6d\6f\72\79\2e\75\49\6e\74\38\41\72\72\61\79\05\24\73\65\6c\66\2e\4d\65\73\73\61\67\65\45\76\65\6e\74\2e\70\72\6f\74\6f\74\79\70\65\2e\64\61\74\61\2f\67\65\74\06\0f\73\65\6c\66\2e\55\69\6e\74\38\41\72\72\61\79\08\10\01\00\0d\77\61\74\34\77\61\73\6d\2f\72\65\66\73")

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

                (if (ref.is_null (call $self.Reflect.get<refx2>ref  (global.get $cpu<Imports>) (table.get $extern (i32.const 18))))
                    (then 
                        (global.set $cpu<Memory>
                            (call $self.Reflect.construct<refx2>ref 
            (global.get $self.WebAssembly.Memory) 
            (call $self.Array.of<ref>ref 
                                (call $self.Object.fromEntries<ref>ref 
                                    (call $self.Array.of<refx3>ref 
                                        (call $self.Array.of<ref.i32>ref  (table.get $extern (i32.const 23)) (i32.const 10) )
                                        (call $self.Array.of<ref.i32>ref  (table.get $extern (i32.const 24)) (i32.const 10) )
                                        (call $self.Array.of<ref.i32>ref  (table.get $extern (i32.const 25)) (i32.const 1) )
                                    )
                                )
                            ))
                        )

                        (call $self.Reflect.set<refx3>  (global.get $cpu<Imports>) (table.get $extern (i32.const 18)) (global.get $cpu<Memory>))
                    )
                    (else
                        (global.set $cpu<Memory>
                            (call $self.Reflect.get<refx2>ref  
                                (global.get $cpu<Imports>) 
                                (table.get $extern (i32.const 18))
                            )
                        )
                    )
                )

                (global.set $cpu<Buffer> 
                    (call $self.Reflect.get<refx2>ref  (global.get $cpu<Memory>) (table.get $extern (i32.const 19)))
                ) 

                (global.set $cpu<Uint8Array>
                    (call $self.Reflect.construct<refx2>ref 
            (global.get $self.Uint8Array) 
            (call $self.Array.of<ref>ref  
                        (global.get $cpu<Buffer>)
                    ))
                ) 

                (call $self.Reflect.set<refx3>  (global.get $cpu<Imports>) (table.get $extern (i32.const 19)) (global.get $cpu<Buffer>))
                (call $self.Reflect.set<refx3>  (global.get $cpu<Imports>) (table.get $extern (i32.const 17)) (global.get $cpu<Module>))

                (call $eventLoop )
            )

	(elem $wat4wasm/async funcref 
	    (ref.func $async1_oncompilesuccess)
	)

	(global $self.Array (mut externref) ref.null extern)
	(global $self.Uint8Array (mut externref) ref.null extern)
	(global $self.Worker (mut externref) ref.null extern)
	(global $self.Blob (mut externref) ref.null extern)
	(global $self.WebAssembly.Memory (mut externref) ref.null extern)

	(global $self.Promise (mut externref) ref.null extern)
	(global $self.Promise.withResolvers (mut externref) ref.null extern)
	(global $self.WebAssembly (mut externref) ref.null extern)

	(elem $wat4wasm/refs funcref (ref.func $f32_add) (ref.func $onworkerready) (ref.func $async1_oncompilesuccess) (ref.func $async1_oncompilesuccess))

    (table $extern 51 51 externref)

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

    (data (i32.const 0) "\00\00\e0\42\00\00\e4\42\00\00\de\42\00\00\e8\42\00\00\de\42\00\00\e8\42\00\00\f2\42\00\00\e0\42\00\00\ca\42\00\00\ae\42\00\00\a0\42\00\00\aa\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\00\84\42\00\00\ea\42\00\00\cc\42\00\00\cc\42\00\00\ca\42\00\00\e4\42\00\00\88\42\00\00\c2\42\00\00\e8\42\00\00\c2\42\00\00\ac\42\00\00\d2\42\00\00\ca\42\00\00\ee\42\00\00\aa\42\00\00\d2\42\00\00\dc\42\00\00\e8\42\00\00\60\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\00\aa\42\00\00\d2\42\00\00\dc\42\00\00\e8\42\00\00\44\42\00\00\58\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\00\aa\42\00\00\d2\42\00\00\dc\42\00\00\e8\42\00\00\4c\42\00\00\48\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\00\84\42\00\00\d2\42\00\00\ce\42\00\00\aa\42\00\00\d2\42\00\00\dc\42\00\00\e8\42\00\00\58\42\00\00\50\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\00\92\42\00\00\dc\42\00\00\e8\42\00\00\60\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\00\92\42\00\00\dc\42\00\00\e8\42\00\00\44\42\00\00\58\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\00\92\42\00\00\dc\42\00\00\e8\42\00\00\4c\42\00\00\48\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\00\84\42\00\00\d2\42\00\00\ce\42\00\00\92\42\00\00\dc\42\00\00\e8\42\00\00\58\42\00\00\50\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\00\8c\42\00\00\d8\42\00\00\de\42\00\00\c2\42\00\00\e8\42\00\00\4c\42\00\00\48\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\00\8c\42\00\00\d8\42\00\00\de\42\00\00\c2\42\00\00\e8\42\00\00\58\42\00\00\50\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\00\aa\42\00\00\d2\42\00\00\dc\42\00\00\e8\42\00\00\60\42\00\00\86\42\00\00\d8\42\00\00\c2\42\00\00\da\42\00\00\e0\42\00\00\ca\42\00\00\c8\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42\00\00\da\42\00\00\de\42\00\00\c8\42\00\00\ea\42\00\00\d8\42\00\00\ca\42\00\00\da\42\00\00\ca\42\00\00\da\42\00\00\de\42\00\00\e4\42\00\00\f2\42\00\00\c4\42\00\00\ea\42\00\00\cc\42\00\00\cc\42\00\00\ca\42\00\00\e4\42\00\00\b4\42\00\00\8a\42\00\00\a4\42\00\00\9e\42\00\00\be\42\00\00\84\42\00\00\b2\42\00\00\a8\42\00\00\8a\42\00\00\a6\42\00\00\be\42\00\00\a0\42\00\00\8a\42\00\00\a4\42\00\00\be\42\00\00\8a\42\00\00\98\42\00\00\8a\42\00\00\9a\42\00\00\8a\42\00\00\9c\42\00\00\a8\42\00\00\da\42\00\00\ca\42\00\00\e6\42\00\00\e6\42\00\00\c2\42\00\00\ce\42\00\00\ca\42\00\00\de\42\00\00\dc\42\00\00\c6\42\00\00\ca\42\00\00\d2\42\00\00\dc\42\00\00\d2\42\00\00\e8\42\00\00\d2\42\00\00\c2\42\00\00\d8\42\00\00\da\42\00\00\c2\42\00\00\f0\42\00\00\d2\42\00\00\da\42\00\00\ea\42\00\00\da\42\00\00\e6\42\00\00\d0\42\00\00\c2\42\00\00\e4\42\00\00\ca\42\00\00\c8\42\00\00\ae\42\00\00\ca\42\00\00\c4\42\00\00\82\42\00\00\e6\42\00\00\e6\42\00\00\ca\42\00\00\da\42\00\00\c4\42\00\00\d8\42\00\00\f2\42\00\00\c6\42\00\00\de\42\00\00\da\42\00\00\e0\42\00\00\d2\42\00\00\d8\42\00\00\ca\42\00\00\dc\42\00\00\c2\42\00\00\ec\42\00\00\d2\42\00\00\ce\42\00\00\c2\42\00\00\e8\42\00\00\de\42\00\00\e4\42\00\00\d0\42\00\00\c2\42\00\00\e4\42\00\00\c8\42\00\00\ee\42\00\00\c2\42\00\00\e4\42\00\00\ca\42\00\00\86\42\00\00\de\42\00\00\dc\42\00\00\c6\42\00\00\ea\42\00\00\e4\42\00\00\e4\42\00\00\ca\42\00\00\dc\42\00\00\c6\42\00\00\f2\42\00\00\8a\42\00\00\ec\42\00\00\ca\42\00\00\dc\42\00\00\e8\42\00\00\e8\42\00\00\c2\42\00\00\e4\42\00\00\ce\42\00\00\ca\42\00\00\e8\42\00\00\ce\42\00\00\ca\42\00\00\e8\42\00\00\9a\42\00\00\ca\42\00\00\e6\42\00\00\e6\42\00\00\c2\42\00\00\ce\42\00\00\ca\42\00\00\8a\42\00\00\ec\42\00\00\ca\42\00\00\dc\42\00\00\e8\42\00\00\c8\42\00\00\c2\42\00\00\e8\42\00\00\c2\42\00\00\e6\42\00\00\ca\42\00\00\e8\42\00\00\ae\42\00\00\de\42\00\00\e4\42\00\00\d6\42\00\00\ca\42\00\00\e4\42\00\00\e0\42\00\00\de\42\00\00\e6\42\00\00\e8\42\00\00\9a\42\00\00\ca\42\00\00\e6\42\00\00\e6\42\00\00\c2\42\00\00\ce\42\00\00\ca\42\00\00\c2\42\00\00\c8\42\00\00\c8\42\00\00\8a\42\00\00\ec\42\00\00\ca\42\00\00\dc\42\00\00\e8\42\00\00\98\42\00\00\d2\42\00\00\e6\42\00\00\e8\42\00\00\ca\42\00\00\dc\42\00\00\ca\42\00\00\e4\42\00\00\a0\42\00\00\e4\42\00\00\de\42\00\00\da\42\00\00\d2\42\00\00\e6\42\00\00\ca\42\00\00\e8\42\00\00\d0\42\00\00\ca\42\00\00\dc\42\00\00\84\42\00\00\d8\42\00\00\de\42\00\00\c4\42\00\00\9a\42\00\00\ca\42\00\00\da\42\00\00\de\42\00\00\e4\42\00\00\f2\42\00\00\ee\42\00\00\d2\42\00\00\e8\42\00\00\d0\42\00\00\a4\42\00\00\ca\42\00\00\e6\42\00\00\de\42\00\00\d8\42\00\00\ec\42\00\00\ca\42\00\00\e4\42\00\00\e6\42\00\00\20\41\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\c2\42\00\00\c8\42\00\00\c8\42\00\00\8a\42\00\00\ec\42\00\00\ca\42\00\00\dc\42\00\00\e8\42\00\00\98\42\00\00\d2\42\00\00\e6\42\00\00\e8\42\00\00\ca\42\00\00\dc\42\00\00\ca\42\00\00\e4\42\00\00\20\42\00\00\00\42\00\00\1c\42\00\00\da\42\00\00\ca\42\00\00\e6\42\00\00\e6\42\00\00\c2\42\00\00\ce\42\00\00\ca\42\00\00\1c\42\00\00\30\42\00\00\00\42\00\00\20\42\00\00\f6\42\00\00\00\42\00\00\c8\42\00\00\c2\42\00\00\e8\42\00\00\c2\42\00\00\68\42\00\00\00\42\00\00\ca\42\00\00\00\42\00\00\fa\42\00\00\24\42\00\00\00\42\00\00\74\42\00\00\78\42\00\00\20\41\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\ae\42\00\00\ca\42\00\00\c4\42\00\00\82\42\00\00\e6\42\00\00\e6\42\00\00\ca\42\00\00\da\42\00\00\c4\42\00\00\d8\42\00\00\f2\42\00\00\38\42\00\00\d2\42\00\00\dc\42\00\00\e6\42\00\00\e8\42\00\00\c2\42\00\00\dc\42\00\00\e8\42\00\00\d2\42\00\00\c2\42\00\00\e8\42\00\00\ca\42\00\00\20\42\00\00\ca\42\00\00\38\42\00\00\da\42\00\00\de\42\00\00\c8\42\00\00\ea\42\00\00\d8\42\00\00\ca\42\00\00\30\42\00\00\00\42\00\00\9e\42\00\00\c4\42\00\00\d4\42\00\00\ca\42\00\00\c6\42\00\00\e8\42\00\00\38\42\00\00\c2\42\00\00\e6\42\00\00\e6\42\00\00\d2\42\00\00\ce\42\00\00\dc\42\00\00\20\42\00\00\e8\42\00\00\d0\42\00\00\d2\42\00\00\e6\42\00\00\30\42\00\00\00\42\00\00\ca\42\00\00\24\42\00\00\24\42\00\00\30\42\00\00\20\41\00\00\00\42\00\00\00\42\00\00\00\42\00\00\00\42\00\00\f6\42\00\00\00\42\00\00\de\42\00\00\dc\42\00\00\c6\42\00\00\ca\42\00\00\68\42\00\00\00\42\00\00\e8\42\00\00\e4\42\00\00\ea\42\00\00\ca\42\00\00\00\42\00\00\fa\42\00\00\24\42\00\00\e0\42\00\00\e4\42\00\00\de\42\00\00\da\42\00\00\d2\42\00\00\e6\42\00\00\ca\42\00\00\e4\42\00\00\ca\42\00\00\e6\42\00\00\de\42\00\00\d8\42\00\00\ec\42\00\00\ca\42\00\00\d8\42\00\00\ca\42\00\00\dc\42\00\00\ce\42\00\00\e8\42\00\00\d0\42\00\00\c4\42\00\00\f2\42\00\00\e8\42\00\00\ca\42\00\00\9e\42\00\00\cc\42\00\00\cc\42\00\00\e6\42\00\00\ca\42\00\00\e8\42\00\00\c4\42\00\00\f2\42\00\00\e8\42\00\00\ca\42\00\00\98\42\00\00\ca\42\00\00\dc\42\00\00\ce\42\00\00\e8\42\00\00\d0\42\00\00\84\42\00\00\b2\42\00\00\a8\42\00\00\8a\42\00\00\a6\42\00\00\be\42\00\00\a0\42\00\00\8a\42\00\00\a4\42\00\00\be\42\00\00\8a\42\00\00\98\42\00\00\8a\42\00\00\9a\42\00\00\8a\42\00\00\9c\42\00\00\a8\42")
)