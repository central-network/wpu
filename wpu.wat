(module
    (memory 10 10)
    (global $self.navigator.hardwareConcurrency i32)

    (start $main
        (log<ref.i32> 
            (text "merhaba özgür")
            global($self.navigator.hardwareConcurrency)
        )
    )
)