my class Any {

    # List-like methods for Any.

    proto method postcircumfix:<[ ]>(|$) { * }
    multi method postcircumfix:<[ ]>(\$pos) is rw {
        self.at_pos($pos)
    }

    # Hash-like methods for Any.

    proto method postcircumfix:<{ }>(|$) { * }
    multi method postcircumfix:<{ }>(\$key) is rw {
        self.at_key($key)
    }

}