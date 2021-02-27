# TODO: Write documentation for `Chardet`
module Chardet
  VERSION = "0.1.0"

  @[Link(ldflags: "/usr/lib/x86_64-linux-gnu/libuchardet.so")]

  lib LibUChardet
    type UchardetT = Void*

    fun new = uchardet_new : UchardetT
    fun delete = uchardet_delete(UchardetT) : Void
    fun handle_data = uchardet_handle_data(UchardetT, LibC::Char*, LibC::SizeT) : LibC::Int
    fun data_end = uchardet_data_end(UchardetT) : Void
    fun reset = uchardet_reset(UchardetT) : Void
    fun get_charset = uchardet_get_charset(UchardetT) : LibC::Char*
  end

  def self.detect(bytes : String)
    ud = LibUChardet.new
    LibUChardet.handle_data(ud, bytes, sizeof(typeof(bytes)))
    LibUChardet.data_end(ud)

    String.new(LibUChardet.get_charset(ud))
  end
end