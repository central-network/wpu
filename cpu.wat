(module 
    (import "self" "memory" (memory $memory 10 10 shared))
    (import "self" "memory" (global $memory externref))
    (import "self" "buffer" (global $memory.buffer externref))

    (global $memory.uInt8Array mut extern)

    (start $main

        (global.set $memory.uInt8Array
            (new $self.Uint8Array<ref>ref
                global($memory.buffer)
            )
        )

        (warn<refx4> 
            (text "hello from instance!")
            global($memory)
            global($memory.buffer)
            global($memory.uInt8Array)
        )

        (call $self.postMessage<ref> null)
    )
)