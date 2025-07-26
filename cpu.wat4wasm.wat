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
   
	(import "Reflect" "set" (func $self.Reflect.set<ref.ref.fun> (param externref externref funcref)))
	(import "Reflect" "construct" (func $self.Reflect.construct<refx2>ref (param externref externref) (result externref)))
	(import "Array" "of" (func $self.Array.of<ref>ref (param externref) (result externref)))
	(import "self" "postMessage" (func $self.postMessage<ref> (param externref)))
	(import "console" "warn" (func $self.console.warn<ref> (param externref)))
	 

    (import "self" "memory" (memory $memory 10 10 shared))
    (import "self" "memory" (global $memory externref))
    (import "self" "buffer" (global $memory.buffer externref))

    (global $memory.uInt8Array (mut externref) ref.null extern)

    (start $main) (func $main
        (table.set $extern (i32.const 1) (call $wat4wasm/text (i32.const 0) (i32.const 36)))
		(table.set $extern (i32.const 2) (call $wat4wasm/text (i32.const 36) (i32.const 48)))
		(table.set $extern (i32.const 3) (call $wat4wasm/text (i32.const 84) (i32.const 36)))
		(table.set $extern (i32.const 4) (call $wat4wasm/text (i32.const 120) (i32.const 16)))
		(table.set $extern (i32.const 5) (call $wat4wasm/text (i32.const 136) (i32.const 12)))
		(table.set $extern (i32.const 6) (call $wat4wasm/text (i32.const 148) (i32.const 40)))    
    
        
        (memory.fill (i32.const 0) (i32.const 0) (i32.const 188))
            
    
            
    
        
        (global.set $self.MessageEvent.prototype.data/get
            (call $wat4wasm/Reflect.get<refx2>ref
                (call $wat4wasm/Reflect.getOwnPropertyDescriptor<refx2>ref
                    (call $wat4wasm/Reflect.get<refx2>ref 
                            (call $wat4wasm/Reflect.get<refx2>ref 
                                (global.get $wat4wasm/self) 
                                (table.get $extern (i32.const 2)) 
                            ) 
                            (table.get $extern (i32.const 3)) 
                        )
                    (table.get $extern (i32.const 4)) 
                )
                (table.get $extern (i32.const 5)) 
            )
        )
        
        (global.set $self.Uint8Array
            (call $wat4wasm/Reflect.get<refx2>ref
                (global.get $wat4wasm/self)
                (table.get $extern (i32.const 6)) 
            )
        )
            
    
        
        (call $self.Reflect.set<ref.ref.fun>
            (global.get $wat4wasm/self)
            (table.get $extern (i32.const 1))
            (ref.func $self.onmessage)
        )
            
     

        (global.set $memory.uInt8Array
            (call $self.Reflect.construct<refx2>ref 
            (global.get $self.Uint8Array) 
            (call $self.Array.of<ref>ref 
                (global.get $memory.buffer)
            ))
        )

        (call $self.postMessage<ref> (ref.null extern))
    )

    (func $self.onmessage  
        (param $event externref)

        (call $self.console.warn<ref> (local.get 0))
    )

	(global $self.MessageEvent.prototype.data/get (mut externref) ref.null extern)


	(global $self.Uint8Array (mut externref) ref.null extern)


	(elem $wat4wasm/refs funcref (ref.func $self.onmessage))

    (table $extern 7 7 externref)

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

    (data (i32.const 0) "\00\00\de\42\00\00\dc\42\00\00\da\42\00\00\ca\42\00\00\e6\42\00\00\e6\42\00\00\c2\42\00\00\ce\42\00\00\ca\42\00\00\9a\42\00\00\ca\42\00\00\e6\42\00\00\e6\42\00\00\c2\42\00\00\ce\42\00\00\ca\42\00\00\8a\42\00\00\ec\42\00\00\ca\42\00\00\dc\42\00\00\e8\42\00\00\e0\42\00\00\e4\42\00\00\de\42\00\00\e8\42\00\00\de\42\00\00\e8\42\00\00\f2\42\00\00\e0\42\00\00\ca\42\00\00\c8\42\00\00\c2\42\00\00\e8\42\00\00\c2\42\00\00\ce\42\00\00\ca\42\00\00\e8\42\00\00\aa\42\00\00\d2\42\00\00\dc\42\00\00\e8\42\00\00\60\42\00\00\82\42\00\00\e4\42\00\00\e4\42\00\00\c2\42\00\00\f2\42")
)